from django.shortcuts import render, HttpResponse, redirect
from django.views.decorators.csrf import csrf_exempt
from app01.utils.form import TaskModelForm
import json
from app01 import models
from app01.utils.pagination import Pagination


"""任务列表"""
def task_list(request):

    form = TaskModelForm()
    queryset = models.Task.objects.all().order_by("-id")

    page_object = Pagination(request, queryset, page_size=6)

    context= {
        "form": form,
        "queryset":page_object.page_queryset,
        "page_string":page_object.html()
        }

    return render(request, 'task_list.html', context)



"""添加任务"""
@csrf_exempt
def task_add(request):
    # print(request.POST)

    # 校验数据
    form = TaskModelForm(data = request.POST)
    if form.is_valid():
        form.save()
        data_dict={"status": True}
        return HttpResponse(json.dumps(data_dict))
    
    data_dict={"status": False, "error": form.errors} 
    return HttpResponse(json.dumps(data_dict, ensure_ascii=False))  # ensure_ascii 中文乱码

def task_delete(request,nid):
    models.Task.objects.filter(id=nid).delete()
    return redirect('/task/list/')







