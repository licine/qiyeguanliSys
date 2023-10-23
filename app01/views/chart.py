from django.shortcuts import render
from django.http import JsonResponse


"""数据统计"""


def chart_list(request):

    return render(request, 'chart_list.html')


"""柱状图数据"""
def chart_bar(request):

    legend = ['白问好', '高黎萱']
    series_list = [
        {
            'name': '白问好',
            'type': 'bar',
            'data': [5, 20, 36, 10, 10, 20, 20]
        },
        {
            'name': '高黎萱',
            'type': 'bar',
            'data': [10, 10, 46, 10, 20, 10, 10]
        }
    ]
    x_axis = ['一月', '二月', '三月', '四月', '五月', '六月', '七月']

    result = {
        'status': True,
        'data': {
            'legend': legend,
            'series_list': series_list,
            'x_axis': x_axis,
        }
    }

    return JsonResponse(result)


"""饼图数据"""
def chart_pie(request):

    series_data = [
        {"value": 1048, "name": 'IT 部'},
        {"value": 735, "name": '研发部'},
        {"value": 580, "name": '新媒体'},
        {"value": 484, "name": '系统部'},
        {"value": 300, "name": '运维部'}
    ]

    result = {
        'status': True,
        'data': {
            'series_data': series_data,
        }
    }

    return JsonResponse(result)


"""折线图数据"""
def chart_line(request):

    legend_data = ['上海', '广东', '海南', '江苏', '杭州']

    series_data = [
        {
            "name": '上海',
            "type": 'line',
            "stack": 'Total',
            "data": [120, 132, 101, 134, 90, 230, 210]
        },
        {
            "name": '广东',
            "type": 'line',
            "stack": 'Total',
            "data": [220, 182, 191, 234, 290, 330, 310]
        },
        {
            "name": '海南',
            "type": 'line',
            "stack": 'Total',
            "data": [150, 232, 201, 154, 190, 330, 410]
        },
        {
            "name": '江苏',
            "type": 'line',
            "stack": 'Total',
            "data": [320, 332, 301, 334, 390, 330, 320]
        },
        {
            "name": '杭州',
            "type": 'line',
            "stack": 'Total',
            "data": [820, 932, 901, 934, 1290, 1330, 1320]
        }
    ]

    result = {
        'status': True,
        'data': {
            'series_data': series_data,
            'legend_data': legend_data,
        }
    }

    return JsonResponse(result)
