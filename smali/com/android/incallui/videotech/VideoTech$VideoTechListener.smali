.class public interface abstract Lcom/android/incallui/videotech/VideoTech$VideoTechListener;
.super Ljava/lang/Object;
.source "VideoTech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/videotech/VideoTech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoTechListener"
.end annotation


# virtual methods
.method public abstract onCallSessionEvent(I)V
.end method

.method public abstract onCameraDimensionsChanged(II)V
.end method

.method public abstract onPeerDimensionsChanged(II)V
.end method

.method public abstract onSessionModificationStateChanged()V
.end method

.method public abstract onUpgradedToVideo(Z)V
.end method

.method public abstract onVideoTechStateChanged()V
.end method

.method public abstract onVideoUpgradeRequestReceived()V
.end method
