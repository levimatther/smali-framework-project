.class public Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;
.super Landroid/app/job/JobService;
.source "TaskSchedulerJobService.java"

# interfaces
.implements Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;


# static fields
.field private static final EXPECTED_JOB_ID:Ljava/lang/String; = "com.android.voicemail.impl.scheduling.TaskSchedulerJobService.EXPECTED_JOB_ID"

.field private static final EXTRA_JOB_ID:Ljava/lang/String; = "extra_job_id"

.field private static final EXTRA_TASK_EXTRAS_ARRAY:Ljava/lang/String; = "extra_task_extras_array"

.field private static final NEXT_JOB_ID:Ljava/lang/String; = "com.android.voicemail.impl.scheduling.TaskSchedulerJobService.NEXT_JOB_ID"

.field private static final TAG:Ljava/lang/String; = "TaskSchedulerJobService"


# instance fields
.field private jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static createJobId(Landroid/content/Context;)I
    .locals 3

    .line 174
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "com.android.voicemail.impl.scheduling.TaskSchedulerJobService.NEXT_JOB_ID"

    const/4 v1, 0x0

    .line 175
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 176
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1
.end method

.method private static getBundleList([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 168
    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static scheduleJob(Landroid/content/Context;Ljava/util/List;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;JZ)V"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 99
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/16 v1, 0xc8

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduling job with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tasks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskSchedulerJobService"

    invoke-static {v4, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extra_task_extras_array"

    if-eqz v2, :cond_2

    if-eqz p4, :cond_1

    .line 106
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 105
    invoke-static {v2}, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->getBundleList([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "merging job with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " existing tasks"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v5, Lcom/android/voicemail/impl/scheduling/TaskQueue;

    invoke-direct {v5}, Lcom/android/voicemail/impl/scheduling/TaskQueue;-><init>()V

    .line 109
    invoke-virtual {v5, p0, v2}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->fromBundles(Landroid/content/Context;Ljava/util/List;)V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 111
    invoke-static {p0, v2}, Lcom/android/voicemail/impl/scheduling/Tasks;->createTask(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/voicemail/impl/scheduling/Task;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->add(Lcom/android/voicemail/impl/scheduling/Task;)Z

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v5}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->toBundles()Ljava/util/List;

    move-result-object p1

    :cond_1
    const-string v2, "canceling existing job."

    .line 115
    invoke-static {v4, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 118
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 119
    invoke-static {p0}, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->createJobId(Landroid/content/Context;)I

    move-result v5

    const-string v6, "extra_job_id"

    .line 120
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 122
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "com.android.voicemail.impl.scheduling.TaskSchedulerJobService.EXPECTED_JOB_ID"

    .line 123
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 124
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-interface {p1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 126
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 128
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v6, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;

    invoke-direct {v3, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p1, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 132
    invoke-virtual {p1, v2}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 133
    invoke-virtual {p0, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    if-eqz p4, :cond_4

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 136
    :goto_1
    invoke-static {p1}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    .line 137
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const-string p1, "running job instantly."

    .line 138
    invoke-static {v4, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_4
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "job "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " scheduled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finishAsync()V
    .locals 2

    const-string v0, "TaskSchedulerJobService"

    const-string v1, "finishing job"

    .line 151
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->jobParameters:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->jobParameters:Landroid/app/job/JobParameters;

    return-void
.end method

.method public isFinished()Z
    .locals 2

    .line 159
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 160
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/16 v1, 0xc8

    .line 161
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 59
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_job_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.android.voicemail.impl.scheduling.TaskSchedulerJobService.EXPECTED_JOB_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "TaskSchedulerJobService"

    if-eq v0, v1, :cond_0

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not the last scheduled job "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ignoring"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->jobParameters:Landroid/app/job/JobParameters;

    .line 69
    invoke-static {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->createRunningInstance(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getRunningInstance()Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->jobParameters:Landroid/app/job/JobParameters;

    .line 74
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_task_extras_array"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->getBundleList([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-virtual {p1, p0, v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->onStartJob(Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 81
    invoke-static {}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getRunningInstance()Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->onStopJob()V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->jobParameters:Landroid/app/job/JobParameters;

    const/4 p1, 0x0

    return p1
.end method
