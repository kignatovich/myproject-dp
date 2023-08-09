# Generated by Django 2.2 on 2019-04-24 09:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Ink', '0002_empdate_emp_id'),
    ]

    operations = [
        migrations.CreateModel(
            name='EmpCompany',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cmp_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Ink.Company')),
                ('emp_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='Ink.Employee')),
            ],
        ),
    ]