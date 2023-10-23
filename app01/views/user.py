from django.shortcuts import render, redirect
from app01 import models
from app01.utils.pagination import Pagination
from app01.utils.form import UserModelForm


def user_list(request):
    """用户列表"""
    queryset = models.UserInfo.objects.all()
    # for obj in queryset:
    #     print(obj.get_gender_display(), obj.depart.title)

    page_object = Pagination(request, queryset, page_size=12)


    context= {
        "queryset":page_object.page_queryset,
        "page_string":page_object.html()
        }
    
    return render(request, "user_list.html", context)


def user_add(request):
    if request.method=='GET':
        """用户添加"""
        context={
            'gender_choices': models.UserInfo.gender_choices,
            'depart_list': models.Department.objects.all()
        }

        return render(request, "user_add.html", context)

    name = request.POST.get('name')
    password = request.POST.get('password')
    age = request.POST.get('age')
    account = request.POST.get('account')
    create_time = request.POST.get('create_time')
    gender = request.POST.get('gender')
    depart = request.POST.get('depart')
    models.UserInfo.objects.create(name=name,password=password,age=age,account=account,
                                        create_time=create_time,gender=gender,depart_id=depart)
    return redirect("/user/list")


def user_model_form_add(request):
    """添加用户(ModelForm版本)"""
    if request.method == "GET":
        form = UserModelForm()
        return render(request, 'user_model_form_add.html',{"form": form})
    
    form = UserModelForm(data=request.POST)
    if form.is_valid():
        form.save()
        return redirect('/user/list/')
    return render(request, "user_model_form_add.html", {"form": form})


def user_edit(request, nid):
    """编辑用户"""
    # 根据ID去数据库获取要编辑的那一行数据（得到的是对象）
    row_object = models.UserInfo.objects.filter(id=nid).first()

    if request.method == "GET":
        # instance：将数据显示在编辑框中
        form = UserModelForm(instance = row_object)

        return render(request, "user_edit.html", {"form": form})
    
    # instance 参数更新数据(form.save()默认添加数据)
    form = UserModelForm(data = request.POST, instance=row_object) 
    if form.is_valid():
        # form.save()保存的是用户输入的数据，如果需要保存其他数据如下（设置字段的值：即默认值）
        # form.instance.字段名=值
        form.save()
        return redirect('/user/list/')
    return render(request, "user_edit.html", {'form':form})
    

def user_delete(request, nid):
    models.UserInfo.objects.filter(id=nid).delete()
    return redirect('/user/list/')
