from django.utils.deprecation import MiddlewareMixin
from django.shortcuts import HttpResponse
from django.shortcuts import render, redirect


class AurhMiddleWare(MiddlewareMixin):
    """中间件1"""

    def process_request(self, request):
        """
        # 如果这个方法没有返回值(即默认返回None), 则请求继续向后走
        # 如果有返回值则直接返回，如 HttpResponse("无权访问")
        """
        
        # print("M1 进来了")

        # 将登陆页面排除在过滤器之外
        if request.path_info in ["/login/", "/img/code/","/"]:
            return

        # 是否有 Session 信息
        info_dict = request.session.get("info")
        if info_dict:
            return
        
        # 如果没有登录
        return redirect("/login/")


    def process_response(self, request, response):
        # print("M1 走了")
        return response


# class M2(MiddlewareMixin):
#     """中间件1"""

#     def process_request(self, request):
#         print("M2 进来了")

#     def process_response(self, request, response):
#         print("M2 走了")
#         return response

