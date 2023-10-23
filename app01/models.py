from django.db import models

class Admin(models.Model):
    """管理员"""
    username = models.CharField(verbose_name="用户名", max_length=32)
    password = models.CharField(verbose_name="密码", max_length=64)

    def __str__(self) -> str:
        return self.username

class Department(models.Model):
    # 部门表
    title = models.CharField(verbose_name="标题", max_length=36)

    def __str__(self) -> str:
        return self.title


class UserInfo(models.Model):
    # 员工表
    name = models.CharField(verbose_name="姓名", max_length=16)
    password = models.CharField(verbose_name="密码", max_length=64)
    age = models.IntegerField(verbose_name="年龄")
    account = models.DecimalField(verbose_name="账户余额", max_digits=10, decimal_places=2, default=0)
    create_time = models.DateField(verbose_name="入职时间")
    # create_time = models.DateTimeField(verbose_name="入职时间")
    # 置空
    depart = models.ForeignKey(verbose_name="部门", to="Department", to_field="id", null=True, blank=True ,on_delete=models.SET_NULL)
    # 删除
    # depart = models.ForeignKey(to="Department", to_field="id", on_delete=models.CASCADE)
    gender_choices = (
        (0, "男"),
        (1, "女"),
    )
    gender = models.SmallIntegerField(verbose_name="性别", choices=gender_choices)


class PrettyNum(models.Model):
    mobile = models.CharField(verbose_name="手机号", max_length=11) # verbose_name即label
    price = models.IntegerField(verbose_name="价格",default=0)
    # 允许为空 null=True, blank=True
    level_choices=(
        (1,"1级"),
        (2,"2级"),
        (3,"3级"),
        (4,"4级"),
    )
    level = models.SmallIntegerField(verbose_name="级别", choices=level_choices, default=1)
    status_choices = (
        (1,"已占用"),
        (2,"未占用"),
    )
    status = models.SmallIntegerField(verbose_name="状态",choices=status_choices,default=2)

"""任务"""
class Task(models.Model):
    level_choice = (
        (1, "紧急"),
        (2, "重要"),
        (3, "临时"),
    )

    level = models.SmallIntegerField(verbose_name="级别", choices=level_choice, default=1)
    title = models.CharField(verbose_name="标题", max_length=64)
    detail = models.TextField(verbose_name="详细信息")
    user = models.ForeignKey(verbose_name="负责人", to="Admin", on_delete=models.CASCADE)

"""订单表"""
class Order(models.Model):
    oid = models.CharField(verbose_name="订单号", max_length=64)
    title = models.CharField(verbose_name="名称", max_length=32)
    price = models.IntegerField(verbose_name="价格")
    status_choices = (
        (1, "待支付"),
        (2, "已支付"),
    )
    status = models.SmallIntegerField(verbose_name="状态", choices=status_choices, default=1)
    admin = models.ForeignKey(verbose_name="管理员", to="Admin", on_delete=models.CASCADE)


"""文件上传"""
class Boss(models.Model):
    name = models.CharField(verbose_name="姓名", max_length=32)
    age = models.IntegerField(verbose_name="年龄")
    img = models.CharField(verbose_name="头像", max_length=128)


"""城市信息"""
class City(models.Model):
    name = models.CharField(verbose_name="城市", max_length=32)
    count = models.IntegerField(verbose_name="人数")
    # 本质上也是 charfield      自动保存数据        upload_to: 上传路径 /media/city
    img = models.FileField(verbose_name="LOGO", max_length=128, upload_to='city/')




