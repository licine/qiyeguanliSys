from app01 import models
from app01.utils.bootstrapMoudelForm import BootstrapModelForm, BootstrapForm
from django import forms
from django.core.validators import RegexValidator
from django.core.exceptions import ValidationError
from app01.utils.encrypt import md5

class UserModelForm(BootstrapModelForm):

    name=forms.CharField(
        min_length=2, 
        label="用户名"
    )

    class Meta:
        model = models.UserInfo
        fields = ["name","password","age","account",'create_time','gender','depart']


class PrettyModelForm(BootstrapModelForm):

    # 输入的手机号校验（正则表达式）
    mobile = forms.CharField(
        label="手机号",  # 即models.py下的verbose_name；如果注释掉则添加页面手机号显示Mobile
        validators=[
        RegexValidator(r'^1[3-9]\d{9}$',"手机号格式错误"),  # 校验规则，正则表达式校验
        ]
        )

    class Meta:
        model = models.PrettyNum
        fields = "__all__"  # fields 即自动帮助我们生成的文本框
        # fields = ["mobile","price","level","status"]

    # 校验的第二种方法（钩子方法：clean_字段名）
    # 校验添加的手机号是否已存在
    def clean_mobile(self):
        txt_mobile = self.cleaned_data['mobile']
        # 返回True或False
        exists = models.PrettyNum.objects.filter(mobile=txt_mobile).exists()
        # 除了自身之外是否存在相同的手机号 pk即primary key,当前对象的主键id
        # exists = models.PrettyNum.objects.exclude(id=self.instance.pk).filter(mobile=txt_mobile).exists()
        if exists:
            # 验证不通过
            raise ValidationError("手机号已存在")

        # 验证通过返回用户输入的值
        return txt_mobile


class PrettyEditModelForm(BootstrapModelForm):

    mobile = forms.CharField(disabled=True, label="手机号") # 不可编辑

    class Meta:
        model = models.PrettyNum
        fields = "__all__"  # fields 即自动帮助我们生成的文本框
        # fields = ["mobile","price","level","status"]


class AdminModelForm(BootstrapModelForm):

    confirm_password = forms.CharField(
        label="确认密码",
        widget=forms.PasswordInput(render_value=True)
        )

    class Meta:
        model = models.Admin
        fields = "__all__"  # fields 即自动帮助我们生成的文本框
        # fields = ["mobile","price","level","status"]
        widgets = {
            "password": forms.PasswordInput(render_value=True)      # render_value 提交失败密码不消失（密码框中输入的密码不置空）
        }

    def clean_password(self):
        pwd = self.cleaned_data.get('password')
        return md5(pwd)

    def clean_confirm_password(self):

        # self.cleaned_data.get 得到用户输入的数据
        pwd = self.cleaned_data.get("password")
        confirm_pwd = md5(self.cleaned_data.get("confirm_password"))

        if confirm_pwd != pwd:
            raise ValidationError("密码不一致")
        
        return confirm_pwd
    

class AdminEditModelForm(BootstrapModelForm):

    class Meta:
        model = models.Admin
        fields = ["username"]


class AdminResetModelForm(BootstrapModelForm):

    confirm_password = forms.CharField(
        label="确认密码",
        widget=forms.PasswordInput(render_value=True)
        )

    class Meta:
        model = models.Admin
        fields = ["password"]
        widgets = {
            "password": forms.PasswordInput(render_value=True)      # render_value 提交失败密码不消失（密码框中输入的密码不置空）
        }

    def clean_password(self):
        pwd = self.cleaned_data.get('password')

        # 重置密码时不能与先前密码一致
        pwd_md5 = md5(pwd)
        exists = models.Admin.objects.filter(id = self.instance.pk, password = pwd_md5).exists()
        if exists:
            raise ValidationError('密码不能与之前的密码一致')

        return pwd_md5

    def clean_confirm_password(self):

        # self.cleaned_data.get 得到用户输入的数据
        pwd = self.cleaned_data.get("password")
        confirm_pwd = md5(self.cleaned_data.get("confirm_password"))

        if confirm_pwd != pwd:
            raise ValidationError("密码不一致")
        
        return confirm_pwd


class LoginForm(BootstrapForm):
    username = forms.CharField(
        label='用户名',
        widget=forms.TextInput,
        required=True
    )

    password = forms.CharField(
        label='密码',
        widget=forms.PasswordInput(render_value=True),
        required=True
    )

    code = forms.CharField(
        label='验证码',
        widget=forms.TextInput(),
        required=True
    )


    def clean_password(self):
        pwd = self.cleaned_data.get('password')
        return md5(pwd)


"""任务ModelForm"""
class TaskModelForm(BootstrapModelForm):
    class Meta:
        model = models.Task
        fields = "__all__"
        widgets = {
            # "detail": forms.Textarea,
            "detail": forms.TextInput,
        }


"""订单ModelForm"""
class OrderModelForm(BootstrapModelForm):
    class Meta:
        model = models.Order
        # fields = "__all__"
        exclude = ["oid", "admin"]


"""form 上传"""
class UpForm(BootstrapForm):
    bootstrap_exclude_fields = ['img']
    name = forms.CharField(label='姓名')
    age = forms.IntegerField(label='年龄')
    img = forms.FileField(label='头像')


"""ModelForm 上传"""
class UpModelForm(BootstrapModelForm):

    bootstrap_exclude_fields = ['img']
    class Meta:
        model = models.City
        fields = '__all__'
