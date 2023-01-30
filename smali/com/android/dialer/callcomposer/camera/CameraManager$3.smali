.class Lcom/android/dialer/callcomposer/camera/CameraManager$3;
.super Landroid/os/AsyncTask;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/CameraManager;->openCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/hardware/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/CameraManager;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$702(Lcom/android/dialer/callcomposer/camera/CameraManager;I)I

    .line 394
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$200(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$200(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$200(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v3}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$100(Lcom/android/dialer/callcomposer/camera/CameraManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$202(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/hardware/Camera;
    .locals 4

    const-string v0, "CameraManager.doInBackground"

    const/4 v1, 0x0

    .line 353
    :try_start_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v3}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$100(Lcom/android/dialer/callcomposer/camera/CameraManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Exception while opening camera"

    .line 357
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->mException:Ljava/lang/Exception;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 347
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->doInBackground([Ljava/lang/Integer;)Landroid/hardware/Camera;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 388
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 389
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->cleanup()V

    return-void
.end method

.method protected onPostExecute(Landroid/hardware/Camera;)V
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$200(Lcom/android/dialer/callcomposer/camera/CameraManager;)Landroid/os/AsyncTask;

    move-result-object v0

    if-ne v0, p0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$300(Lcom/android/dialer/callcomposer/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->cleanup()V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    .line 376
    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$100(Lcom/android/dialer/callcomposer/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CameraManager.onPostExecute"

    .line 374
    invoke-static {v4, v0, v3}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$500(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/hardware/Camera;)V

    if-nez p1, :cond_3

    .line 379
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$600(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 380
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$600(Lcom/android/dialer/callcomposer/camera/CameraManager;)Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->mException:Ljava/lang/Exception;

    invoke-interface {p1, v1, v0}, Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;->onCameraError(ILjava/lang/Exception;)V

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Error opening camera"

    .line 382
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 367
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->this$0:Lcom/android/dialer/callcomposer/camera/CameraManager;

    invoke-static {v0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->access$400(Lcom/android/dialer/callcomposer/camera/CameraManager;Landroid/hardware/Camera;)V

    .line 368
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->cleanup()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 347
    check-cast p1, Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/CameraManager$3;->onPostExecute(Landroid/hardware/Camera;)V

    return-void
.end method
