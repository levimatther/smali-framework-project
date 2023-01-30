.class public interface abstract Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;
.super Ljava/lang/Object;
.source "UploadStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCompressUploadDataFailed()V
.end method

.method public abstract onEncryptUploadDataFailed()V
.end method

.method public abstract onServiceConfigUpdate(Ljava/lang/String;)Z
.end method

.method public abstract onSplitFileFailed()V
.end method

.method public abstract onTransDataFailed()V
.end method

.method public abstract onTransDataSuccess()V
.end method

.method public abstract onUploadTaskSuccess()V
.end method

.method public abstract onUploadingDataFailed(Landroid/os/Message;)V
.end method
