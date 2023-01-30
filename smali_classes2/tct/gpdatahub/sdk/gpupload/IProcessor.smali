.class public interface abstract Ltct/gpdatahub/sdk/gpupload/IProcessor;
.super Ljava/lang/Object;
.source "IProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;,
        Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;
    }
.end annotation


# virtual methods
.method public abstract alreadyExistTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getConfigSetting()Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;
.end method

.method public abstract getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;
.end method

.method public abstract getOnGoingUploadTask()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;",
            "Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTEyeId()Ljava/lang/String;
.end method

.method public abstract getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;
.end method

.method public abstract getUploadHandler()Landroid/os/Handler;
.end method

.method public abstract isEnableDataHub()Z
.end method

.method public abstract isEnableScheduleUtilScreenOff()Z
.end method

.method public abstract isEnableToSendHeartBeat()Z
.end method

.method public abstract isEnableToUploadBaseInfo()Z
.end method

.method public abstract isEnableToUploadDailyInfo()Z
.end method

.method public abstract isEnableToUploadFixedRecord()Z
.end method

.method public abstract isEnableUploadOnApplicationExit()Z
.end method

.method public abstract isEnableUploadOnIntervalTime()Z
.end method

.method public abstract isEnableUploadOnScreenChanged()Z
.end method

.method public abstract isIdleForUploadTask()Z
.end method

.method public abstract isMaybeNewRecordGenerate()Z
.end method

.method public abstract isServerConfigInit()Z
.end method

.method public abstract isTeyeIdInit()Z
.end method

.method public abstract notifyUpdateExpectTime()V
.end method

.method public abstract onRequestConfigFromServer()V
.end method

.method public abstract onRequestConfigFromServer(I)V
.end method

.method public abstract onRequestUploadFixedRec()V
.end method

.method public abstract readyReceiveEvent()Z
.end method

.method public abstract schedulerIntervalJobIfNeed()V
.end method

.method public abstract setDatahubStateCallback(Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;)V
.end method
