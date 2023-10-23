from django.shortcuts import render, redirect
from app01 import models
from app01.utils.pagination import Pagination
from app01.utils.form import PrettyEditModelForm,PrettyModelForm


"""手机号列表"""
def pretty_list(request):


    # 搜索手机号
    data_dict={}
    search_data =request.GET.get('q',"")  # 加一个默认值为空
    if search_data:
        data_dict['mobile__contains']=search_data  

    queryset = models.PrettyNum.objects.filter(**data_dict).order_by("-level")

    page_object = Pagination(request, queryset, page_size=12)


    context= {
        "queryset":page_object.page_queryset,
        "search_data":search_data,
        "page_string":page_object.html()
        }
    
    return render(request,"pretty_list.html", context)



"""添加手机号"""
def pretty_add(request):
    """添加用户(ModelForm版本)"""
    if request.method == "GET":
        form = PrettyModelForm()
        return render(request, 'pretty_add.html',{"form": form})
    
    form = PrettyModelForm(data = request.POST)
    if form.is_valid():
        form.save()
        return redirect('/pretty/list/')
    return render(request, "pretty_add.html", {"form": form})
    



def pretty_edit(request, nid):
    """编辑手机号"""
    row_object = models.PrettyNum.objects.filter(id=nid).first()

    if request.method == "GET":
        # 根据ID去数据库获取要编辑的那一行数据
        # instance(对象)将数据显示在编辑框中
        form = PrettyEditModelForm(instance = row_object)

        return render(request, "pretty_edit.html", {"form": form})
    
    # instance 参数代表更新数据而不是新增数据
    form = PrettyEditModelForm(data = request.POST, instance=row_object) 
    if form.is_valid():
        # form.save()保存的是用户输入的数据，如果需要保存其他数据如下（设置字段的值：即默认值）
        # form.instance.字段名=值
        form.save()
        return redirect('/pretty/list/')
    return render(request, "pretty_edit.html", {'form':form})


def pretty_delete(request,nid):
    models.PrettyNum.objects.filter(id=nid).delete()
    return redirect('/pretty/list/')

