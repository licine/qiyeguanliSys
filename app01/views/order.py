from django.shortcuts import render, redirect
from app01.utils.form import OrderModelForm
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
import random
from datetime import datetime
from app01 import models
from app01.utils.pagination import Pagination


"""订单列表"""
def order_list(request):

    # 搜索手机号
    data_dict={}
    search_data =request.GET.get('q',"")  # 加一个默认值为空
    if search_data:
        data_dict['title__contains']=search_data  

    form = OrderModelForm()
    queryset = models.Order.objects.filter(**data_dict).order_by("-id")

    page_object = Pagination(request, queryset, page_size=12)

    context= {
        "form": form,
        "queryset":page_object.page_queryset,
        "page_string":page_object.html()
        }

    return render(request, "order_list.html", context)

"""新建订单(Ajax)"""
@csrf_exempt
def order_add(request):
    form = OrderModelForm(data = request.POST)

    if form.is_valid():
        # 随机生成订单号
        form.instance.oid = datetime.now().strftime("%Y%m%d%H%M%S") + str(random.randint(1000,9999))
        # 获得该登录管理员的 id
        form.instance.admin_id = request.session['info']['id']
        form.save()
        return JsonResponse({"status": True})
    
    return JsonResponse({"status": False, 'error': form.errors})


"""删除订单"""
def order_delete(request):
    uid = request.GET.get('uid')
    exists = models.Order.objects.filter(id = uid).exists()
    if not exists:
        return JsonResponse({'status': False, 'error': '删除失败，数据不存在'})
    
    models.Order.objects.filter(id = uid).delete()
    return JsonResponse({'status': 'True'})


"""编辑订单按钮，显示编辑数据"""
def order_detail(request):
    uid = request.GET.get('uid')
    row_dict = models.Order.objects.filter(id = uid).values('title', 'price', 'status').first()
    if not row_dict:
        return JsonResponse({'status': False, 'error':'数据不存在'})

    # 从数据库中获得一个对象：row_object
    result = {
        'status': True,
        'data': row_dict,
        
    }
    return JsonResponse(result)


"""编辑后保存订单"""
@csrf_exempt
def order_edit(request):
    uid = request.GET.get('uid')
    row_object = models.Order.objects.filter(id = uid).first()
    if not row_object:
        return JsonResponse({'status': False, 'tips':'数据不存在'})
    
    form = OrderModelForm(data=request.POST, instance = row_object)
    if form.is_valid():
        form.save()
        return JsonResponse({'status': True})
    
    return JsonResponse({'status': False, 'error': form.errors})

