.class public Ltct/gpdatahub/sdk/gpupload/GPDevice;
.super Ljava/lang/Object;
.source "GPDevice.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;


# static fields
.field private static final TAG:Ljava/lang/String; = "GPDevice"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mScheduleNewTaskLock:Ljava/lang/Object;

.field private mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

.field private mUploadingBaseInfo:Z


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/gpupload/IProcessor;Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mScheduleNewTaskLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadingBaseInfo:Z

    .line 34
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    .line 35
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleIntervalJobs()V
    .locals 2

    const-string v0, "GPDevice"

    const-string v1, "intervalRunnable.."

    .line 97
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isServerConfigInit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isTeyeIdInit()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object v0

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onRequireUploadNewTask()V

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->onRequestConfigFromServer()V

    :cond_2
    :goto_1
    return-void
.end method

.method public handleNoRecordExist()V
    .locals 0

    return-void
.end method

.method public handleOnApplicationExit()V
    .locals 1

    .line 86
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableUploadOnApplicationExit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isIdleForUploadTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object v0

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onRequireUploadNewTask()V

    :cond_0
    return-void
.end method

.method public handleOnBootCompleted()V
    .locals 0

    return-void
.end method

.method public handleOnDateUpdated()V
    .locals 0

    return-void
.end method

.method public handleOnInsertEvent(JI)V
    .locals 0

    return-void
.end method

.method public handleOnNewPkgRegister(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleOnScreenChanged(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableUploadOnScreenChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->schedulerIntervalJobIfNeed()V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isIdleForUploadTask()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object p1

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onRequireUploadNewTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleOnStart()V
    .locals 1

    .line 52
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->schedulerIntervalJobIfNeed()V

    return-void
.end method

.method public handleOnStop()V
    .locals 0

    return-void
.end method

.method public handleServerConfigRequestFinish()V
    .locals 0

    return-void
.end method

.method public handleTaskFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 0

    return-void
.end method

.method public handleTaskSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 0

    return-void
.end method

.method public isEnableSchedulerIntervalJob()Z
    .locals 1

    .line 239
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableUploadOnIntervalTime()Z

    move-result v0

    return v0
.end method

.method public loadingLocalConfig()V
    .locals 4

    .line 121
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/AppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 122
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getVersionCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eq v0, v3, :cond_1

    .line 124
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getVersionCode()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 125
    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUploadBaseInfo(Z)V

    .line 126
    invoke-virtual {v1, v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setVersionCode(I)V

    .line 127
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    :cond_1
    return-void
.end method

.method public requestUploadFixedRec()V
    .locals 0

    return-void
.end method

.method public scheduleNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 6

    const-string v0, "GPDevice"

    const-string v1, "[scheduleNewTask] "

    .line 190
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    instance-of v0, p1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    if-eqz v0, :cond_4

    const-string v0, "record"

    .line 192
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    .line 193
    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isIdleForUploadTask()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mScheduleNewTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "GPDevice"

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scheduleNewTask]: isIdleForUploadTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v3}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isIdleForUploadTask()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isIdleForUploadTask()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 200
    :cond_0
    move-object v1, p1

    check-cast v1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    .line 201
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getStartRecordId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getStartRecordId()J

    move-result-wide v2

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    new-instance v2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mContext:Landroid/content/Context;

    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    .line 208
    invoke-interface {v4}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getUploadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;-><init>(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 221
    invoke-virtual {v2, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableTransform(Z)V

    const/4 v3, 0x0

    .line 222
    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableEncrypt(Z)V

    .line 223
    invoke-virtual {v2, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableCompress(Z)V

    .line 224
    invoke-virtual {v2, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableUploading(Z)V

    .line 226
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getOnGoingUploadTask()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 227
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/GPDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getOnGoingUploadTask()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->createAndStartUploadStateMachine()V

    .line 230
    :cond_2
    monitor-exit v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "GPDevice"

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scheduleNewTask]: return! startId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getStartRecordId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", endId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public uploadBaseInfoIdNeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uploadDailyDataIfNeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uploadFixedRecIfNeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
