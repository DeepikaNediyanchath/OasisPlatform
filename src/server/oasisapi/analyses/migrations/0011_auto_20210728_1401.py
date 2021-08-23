# Generated by Django 3.2.5 on 2021-07-28 14:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('files', '0004_remove_relatedfile_aws_location'),
        ('analyses', '0010_auto_20200224_1213'),
    ]

    operations = [
        migrations.CreateModel(
            name='AnalysisTaskStatus',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('queue_name', models.CharField(editable=False, max_length=255)),
                ('task_id', models.CharField(blank=True, default='', editable=False, max_length=36)),
                ('status', models.CharField(choices=[('PENDING', 'Task waiting to be added to the queue'), ('QUEUED', 'Task added to queue'), ('STARTED', 'Task started'), ('COMPLETED', 'Task completed'), ('CANCELLED', 'Task cancelled'), ('ERROR', 'Task error')], default='PENDING', editable=False, max_length=9)),
                ('pending_time', models.DateTimeField(auto_now_add=True, null=True)),
                ('queue_time', models.DateTimeField(default=None, editable=False, null=True)),
                ('start_time', models.DateTimeField(default=None, editable=False, null=True)),
                ('end_time', models.DateTimeField(default=None, editable=False, null=True)),
                ('name', models.CharField(editable=False, max_length=255)),
                ('slug', models.SlugField(editable=False, max_length=255)),
                ('analysis', models.ForeignKey(editable=False, on_delete=django.db.models.deletion.CASCADE, related_name='sub_task_statuses', to='analyses.analysis')),
                ('error_log', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='analysis_run_status_error_logs', to='files.relatedfile')),
                ('output_log', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='analysis_run_status_output_logs', to='files.relatedfile')),
            ],
        ),
        migrations.AddConstraint(
            model_name='analysistaskstatus',
            constraint=models.UniqueConstraint(condition=models.Q(('task_id', ''), _negated=True), fields=('task_id',), name='unique_task_id'),
        ),
        migrations.AlterUniqueTogether(
            name='analysistaskstatus',
            unique_together={('analysis', 'slug')},
        ),
    ]