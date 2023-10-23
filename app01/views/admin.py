from django.shortcuts import render, redirect
from app01 import models
from app01.utils.pagination import Pagination
from app01.utils.form import AdminModelForm, AdminEditModelForm, AdminResetModelForm



def admin_list(request):


    # 搜索管理员账号
    data_dict={}
    search_data =request.GET.get('q',"")  # 加一个默认值为空
    if search_data:
        data_dict['username__contains']=search_data  

    queryset = models.Admin.objects.filter(**data_dict)

    page_object = Pagination(request, queryset, page_size=12)


    context= {
        "queryset":page_object.page_queryset,
        "search_data":search_data,
        "page_string":page_object.html()
        }
    
    return render(request,"admin_list.html", context)



def admin_add(request):
    """添加管理员"""
    """GET"""
    if request.method == "GET":
        form = AdminModelForm()
        return render(request, 'change.html',{"form": form,"title": "添加管理员"})
    
    """提交"""
    form = AdminModelForm(data=request.POST)
    if form.is_valid():
        form.save()
        return redirect('/admin/list/')
    return render(request, "change.html", {"form": form,"title": "添加管理员"})
    


def admin_edit(request, nid):
    """编辑管理员"""
    row_object = models.Admin.objects.filter(id=nid).first()
    if not row_object:
        return render(request, "error.html",{"msg": "数据不存在"})

    if request.method == "GET":
        # 根据ID去数据库获取要编辑的那一行数据
        # instance(对象)将数据显示在编辑框中
        form = AdminEditModelForm(instance = row_object)

        return render(request, "change.html", {"form": form, "title": "编辑管理员信息"})
    
    # instance 参数代表更新数据而不是新增数据
    form = AdminEditModelForm(data = request.POST, instance=row_object) 
    if form.is_valid():
        # form.save()保存的是用户输入的数据，如果需要保存其他数据如下（设置字段的值：即默认值）
        # form.instance.字段名=值
        form.save()
        return redirect('/admin/list/')
    return render(request, "change.html", {'form':form, "title": "编辑管理员信息"})


def admin_delete(request,nid):
    models.Admin.objects.filter(id=nid).delete()
    return redirect('/admin/list/')


def admin_reset(request, nid):
    """重置密码"""
    
    row_object = models.Admin.objects.filter(id=nid).first()
    if not row_object:
        return redirect('/admin/list/')
    
    title = "重置密码 - {}".format(row_object.username)
    
    if request.method == "GET":

        form = AdminResetModelForm()
        return render(request, "change.html", {'form': form, "title": title})
    
    form = AdminResetModelForm(data=request.POST, instance=row_object)
    if form.is_valid():
        form.save()
        return redirect('/admin/list/')
    return render(request, "change.html", {'form': form, "title": title})

