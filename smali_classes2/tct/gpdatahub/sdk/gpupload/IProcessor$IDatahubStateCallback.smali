.class public interface abstract Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;
.super Ljava/lang/Object;
.source "IProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/IProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDatahubStateCallback"
.end annotation


# virtual methods
.method public abstract notifyConfigFromServerUpdate(Z)V
.end method

.method public abstract notifyUploadFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z
.end method

.method public abstract notifyUploadSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
.end method
