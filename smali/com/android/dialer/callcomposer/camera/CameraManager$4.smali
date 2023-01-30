.class Lcom/android/dialer/callcomposer/camera/CameraManager$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/CameraManager;->takePicture(FLcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

.field final synthetic val$callback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

.field final synthetic val$heightPercent:F


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/CameraManager;Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;F)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->val$callback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

    iput p3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->val$heightPercent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9

    .line 442
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$802(Lcom/android/dialer/callcomposer/camera/CameraManager;Z)Z

    .line 443
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$900(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 446
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->val$callback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;->onMediaInfo(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->val$callback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;->onMediaInfo(I)V

    return-void

    .line 455
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 458
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$1000(Lcom/android/dialer/callcomposer/camera/CameraManager;)I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$1000(Lcom/android/dialer/callcomposer/camera/CameraManager;)I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 465
    :cond_2
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    .line 466
    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_1

    .line 461
    :cond_3
    :goto_0
    iget v0, p2, Landroid/hardware/Camera$Size;->height:I

    .line 463
    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    :goto_1
    move v4, p2

    move v3, v0

    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "taken picture size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "CameraManager.onPictureTaken"

    invoke-static {v2, p2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    new-instance p2, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;

    iget v5, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->val$heightPercent:F

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    .line 471
    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$1100(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$4;->val$callback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;-><init>(IIF[BLandroid/content/Context;Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;)V

    new-array p1, v1, [Ljava/lang/Void;

    .line 472
    invoke-virtual {p2, p1}, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
