.class public interface abstract Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;
.super Ljava/lang/Object;
.source "IProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/IProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEventNotify"
.end annotation


# virtual methods
.method public abstract onApplicationExit(Ljava/lang/String;)V
.end method

.method public abstract onBootCompleted()V
.end method

.method public abstract onDateUpdate()V
.end method

.method public abstract onInsertEvent(JI)V
.end method

.method public abstract onPhoneStatusChanged(Ljava/lang/String;)V
.end method

.method public abstract onRegisterPackage(Ljava/lang/String;)V
.end method

.method public abstract onRequireUploadNewTask()V
.end method

.method public abstract onRequireUploadNewTask(I)V
.end method

.method public abstract onScreenChanged(Z)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onUserSetUpComplete()Z
.end method
