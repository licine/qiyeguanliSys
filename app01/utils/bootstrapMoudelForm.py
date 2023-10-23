from django import forms

class Bootstrap():

    bootstrap_exclude_fields = []

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # name,field即标签和对象
        for name, field in self.fields.items():
            if name in self.bootstrap_exclude_fields:
                continue
            if field.widget.attrs:
                field.widget.attrs["class"] = "form-control"
                field.widget.attrs['placeholder'] = field.label
            else:
                # 循环所有插件，添加class样式
                field.widget.attrs = {
                    "class": "form-control",
                    "placeholder": field.label
                }


class BootstrapModelForm(Bootstrap, forms.ModelForm):
    pass

class BootstrapForm(Bootstrap, forms.Form):
    pass

