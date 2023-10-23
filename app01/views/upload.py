from django.shortcuts import render, HttpResponse, redirect
from app01.utils.form import UpForm, UpModelForm
from app01.utils.pagination import Pagination
import os
from app01 import models
from django.conf import settings


"""文件上传"""
def upload_list(request):

    if request.method == 'GET':
        return render(request, 'upload_list.html')

    file_object = request.FILES.get('avatar')

    f = open(file_object.name, mode='wb')
    for chunk in file_object.chunks():
        f.write(chunk)
    f.close()
    return HttpResponse("...")


"""from 上传"""
def upload_form(request):

    title = "Form上传"

    if request.method == 'GET':
        form = UpForm()

        return render(request, 'upload_form.html', {'form': form, 'title': title})

    # 文件要这样写 files = request.FILES
    form = UpForm(data=request.POST, files = request.FILES)
    if form.is_valid():
        # print(form.cleaned_data)          {'name': '12', 'age': 12, 'img': <InMemoryUploadedFile: image-20230516110506104.png (image/png)>}
        
        # 1. 读取图片的内容，写入到文件夹中并获取文件的路径
        image_object = form.cleaned_data.get('img')
        # file_path = 'app01/static/image{}/'.format(image_object.name)     由于 linux windows 路径表示方式不同，换成如下写法
        # db_file_path = os.path.join('static', 'image', image_object.name)       # 在地址栏直接拼接 db_file_path 可以直接看到图片
        media_path = os.path.join("media", image_object.name)
        f = open(media_path, mode='wb')
        for chunk in image_object.chunks():
            f.write(chunk)
        f.close()

        # 2. 将图片文件路径写入到数据库
        models.Boss.objects.create(
            name = form.cleaned_data['name'],
            age = form.cleaned_data['age'],
            img = media_path,
        )


        return HttpResponse("....")
    
    return render(request, 'upload_form.html', {'form': form, 'title': title})


"""Model Form 上传"""
def upload_model_form(request):
    title = "Model Form 上传"

    if request.method == 'GET':
        form = UpModelForm()

        return render(request, 'upload_form.html', {'form': form, 'title': title})

    form = UpModelForm(data=request.POST, files=request.FILES)
    if form.is_valid():
        form.save()
        return HttpResponse("成功")

    return render(request, 'upload_form.html', {'form': form, 'title': title})

"""城市列表"""
def city_list(request):

    # 搜索
    data_dict={}
    search_data =request.GET.get('q',"")  # 加一个默认值为空
    if search_data:
        data_dict['name__contains']=search_data  

    queryset = models.City.objects.filter(**data_dict)

    page_object = Pagination(request, queryset, page_size=4)

    context= {
    "queryset":page_object.page_queryset,
    "search_data":search_data,
    "page_string":page_object.html()
    }
    
    
    return render(request, 'city_list.html', context)


"""添加城市"""
def city_add(request):
    title = "新建城市"

    if request.method == 'GET':
        form = UpModelForm()

        return render(request, 'upload_form.html', {'form': form, 'title': title})

    form = UpModelForm(data=request.POST, files=request.FILES)
    if form.is_valid():
        form.save()
        return redirect('/city/list/')

    return render(request, 'upload_form.html', {'form': form, 'title': title})



def demo(request):
    return render(request,'demo.html')

    