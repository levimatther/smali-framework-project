.class Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;
.super Landroid/os/AsyncTask;
.source "VideoCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/video/impl/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/video/impl/VideoCallFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/video/impl/VideoCallFragment;Lcom/android/incallui/video/impl/VideoCallFragment$1;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5

    const-string p1, "VideoCallFragment.doInBackground"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 843
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PauseImageTask is cancelled"

    new-array v3, v1, [Ljava/lang/Object;

    .line 844
    invoke-static {p1, v2, v3}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$1000(Lcom/android/incallui/video/impl/VideoCallFragment;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 838
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 860
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "VideoCallFragment.onPostExecute"

    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$000(Lcom/android/incallui/video/impl/VideoCallFragment;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->setUseDefaultImage(Z)V

    if-eqz v1, :cond_1

    .line 864
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-virtual {p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1103cf

    invoke-static {p1, v0}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 865
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$1100(Lcom/android/incallui/video/impl/VideoCallFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/video/impl/VideoCallFragment;->setPreviewImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->setPreviewImage(Landroid/graphics/Bitmap;)V

    .line 869
    :goto_1
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$000(Lcom/android/incallui/video/impl/VideoCallFragment;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->setPauseImage()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 838
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
