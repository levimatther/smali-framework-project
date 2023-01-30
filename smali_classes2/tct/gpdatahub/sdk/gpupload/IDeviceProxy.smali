.class public interface abstract Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;
.super Ljava/lang/Object;
.source "IDeviceProxy.java"


# static fields
.field public static final MAX_UPLOAD_ONGOING_TASK_SIZE:I = 0x1


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract handleIntervalJobs()V
.end method

.method public abstract handleNoRecordExist()V
.end method

.method public abstract handleOnApplicationExit()V
.end method

.method public abstract handleOnBootCompleted()V
.end method

.method public abstract handleOnDateUpdated()V
.end method

.method public abstract handleOnInsertEvent(JI)V
.end method

.method public abstract handleOnNewPkgRegister(Ljava/lang/String;)V
.end method

.method public abstract handleOnScreenChanged(Z)V
.end method

.method public abstract handleOnStart()V
.end method

.method public abstract handleOnStop()V
.end method

.method public abstract handleServerConfigRequestFinish()V
.end method

.method public abstract handleTaskFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
.end method

.method public abstract handleTaskSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
.end method

.method public abstract isEnableSchedulerIntervalJob()Z
.end method

.method public abstract loadingLocalConfig()V
.end method

.method public abstract requestUploadFixedRec()V
.end method

.method public abstract scheduleNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
.end method

.method public abstract uploadBaseInfoIdNeed()Z
.end method

.method public abstract uploadDailyDataIfNeed()Z
.end method

.method public abstract uploadFixedRecIfNeed()Z
.end method
