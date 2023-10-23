from django.shortcuts import render, redirect, HttpResponse
from app01.utils.form import LoginForm
from app01 import models
from app01.utils.code import check_code
from io import BytesIO

# 登录
def login(request):

    if request.method == "GET":
        form = LoginForm()
        return render(request, 'login.html', {'form': form})
    
    form = LoginForm(data = request.POST)
    if form.is_valid():

        # 将 code 从cleaned_data中剔除。因为下面需要用到 cleaned_data 去数据库中查找管理员账号和密码，而没有 code 字段
        user_input_code = form.cleaned_data.pop('code')
        img_code = request.session.get("img_code", "")      # 图片验证码可能过期，如果过期就为空字符串
        if img_code.upper() != user_input_code.upper():     # .upper() 全部大写
            form.add_error('code', "验证码错误")
            return render(request, 'login.html', {'form': form})


        # 验证用户名和密码
        admin_object = models.Admin.objects.filter(**form.cleaned_data).first()
        if not admin_object:
            # 参数1：字段名
            form.add_error('password',"用户名或密码错误")
            return render(request, 'login.html', {'form': form})
        # session
        request.session['info'] = {'id': admin_object.id, 'name': admin_object.username}
        # session 保存 7 天
        request.session.set_expiry(60 * 60 * 24 * 700)

        return redirect('/admin/list/')
    return render(request, 'login.html', {'form':form})


# 注销
def logout(request):
    request.session.clear()
    return redirect("/login/")


# 图片验证码
def img_code(request):

    # 调用 pillow 函数，生成图片
    img, code_string = check_code()

    # 写入到Session中，以便后续校验
    request.session['img_code'] = code_string
    # 给Session设置60s超时
    request.session.set_expiry(60)

    stream = BytesIO()
    img.save(stream, 'png')
    return HttpResponse(stream.getvalue())


