# Generated by Django 4.1.7 on 2023-05-09 15:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("app01", "0006_task"),
    ]

    operations = [
        migrations.CreateModel(
            name="Order",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
            ],
        ),
    ]