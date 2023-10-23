"""
自定义分页组件，使用方法如下：

queryset = models.PrettyNum.objects.filter(**data_dict).order_by("-level")

    page_object = Pagination(request, queryset)     得到对象


    context= {
        "queryset":page_object.page_queryset,       当前页通过切片得到的数据
        "page_string":page_object.html()            得到前端html标签
        }
    
    return render(request,"pretty_list.html", context)
"""
from django.utils.safestring import mark_safe
import copy


"""分页"""
class Pagination(object):
    def __init__(self, request, queryset, page_size = 10, page_param='page', plus = 5):
        """
        :param request: 请求参数
        :param queryset: 从数据库中查询到的数据
        :param page_size: 每页显示的数据条数
        :param page_param: get方式在地址栏中传递参数的名字,即页码
        :param plus: 该页码前后页码的显示个数
        """

        # url追加
        query_dict = copy.deepcopy(request.GET)
        # query_dict._mutable = True          # 是否可修改
        self.query_dict = query_dict

        self.page_param = page_param
        page = request.GET.get(page_param,"1")
        if page.isdecimal():
            page = int(page)
        else:
            page = 1
        
        self.page = page
        self.page_size = page_size
        self.start = (page - 1) * page_size
        self.end = page * page_size

        self.page_queryset = queryset[self.start:self.end]

        total_count = queryset.count()

        total_page_count, div = divmod(total_count, page_size)
        if div:
            total_page_count += 1

        self.total_page_count = total_page_count

        self.plus = plus


    def html(self):
        # 计算显示当前页的前5页和后5页
        
        # 数据较少时,总页数小于11页
        if self.total_page_count <= 2*self.plus + 1:
            start_page = 1
            end_page = self.total_page_count
        else:
            if self.page <= self.plus:
                start_page = 1
                end_page = 2*self.plus + 1
            else:
                if (self.page + self.plus) > self.total_page_count:
                    end_page = self.total_page_count
                    start_page = self.total_page_count - 2*self.plus
                else:
                    start_page = self.page - self.plus
                    end_page = self.page + self.plus

        page_str_list=[]

        self.query_dict.setlist(self.page_param, [1])
        # query_dict = copy.deepcopy(request.GET)
        # 得到q=12&page=2
        # print(query_dict.urlencode())
        # 首页
        home = '<li class=""><a href="?{}">首页</a></li>'.format(self.query_dict.urlencode())
        page_str_list.append(home)

        # 上一页
        if self.page > 1:
            self.query_dict.setlist(self.page_param, [self.page - 1])
            prev = '<li class=""><a href="?{}">上一页</a></li>'.format(self.query_dict.urlencode())
        else:
            self.query_dict.setlist(self.page_param, [1])
            prev = '<li class=""><a href="?{}">上一页</a></li>'.format(self.query_dict.urlencode())

        page_str_list.append(prev)

        # 页码
        for i in range(start_page, end_page + 1):
            if i == self.page:
                self.query_dict.setlist(self.page_param, [i])
                ele = '<li class="active"><a href="?{}">{}</a></li>'.format(self.query_dict.urlencode(), i)
            else:
                self.query_dict.setlist(self.page_param, [i])
                ele = '<li><a href="?{}">{}</a></li>'.format(self.query_dict.urlencode(), i)
            page_str_list.append(ele)

        # 下一页
        if self.page < self.total_page_count:
            self.query_dict.setlist(self.page_param, [self.page + 1])
            next = '<li class=""><a href="?{}">下一页</a></li>'.format(self.query_dict.urlencode())
        else:
            self.query_dict.setlist(self.page_param, [self.total_page_count])
            next = '<li class=""><a href="?{}">下一页</a></li>'.format(self.query_dict.urlencode())

        page_str_list.append(next)

        # 尾页
        self.query_dict.setlist(self.page_param, [self.total_page_count])
        end = '<li class=""><a href="?{}">尾页</a></li>'.format(self.query_dict.urlencode())
        page_str_list.append(end)

        search_string = """
            <li style="display: inline-block; width: 160px;">
                <form action="" method="get">
                    <div class="input-group">
                        <input type="text" name="page" class="form-control" placeholder="页码" required>
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            跳转
                        </button>
                        </span>
                    </div>
                </form>
        </li>
        """
        page_str_list.append(search_string)

        page_string = mark_safe("".join(page_str_list))
        return page_string






