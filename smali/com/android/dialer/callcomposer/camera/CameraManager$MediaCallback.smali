.class public interface abstract Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaCallback"
.end annotation


# static fields
.field public static final MEDIA_CAMERA_CHANGED:I = 0x1

.field public static final MEDIA_NO_DATA:I = 0x2


# virtual methods
.method public abstract onMediaFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onMediaInfo(I)V
.end method

.method public abstract onMediaReady(Landroid/net/Uri;Ljava/lang/String;II)V
.end method
