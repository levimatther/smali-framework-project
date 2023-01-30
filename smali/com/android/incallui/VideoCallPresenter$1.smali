.class Lcom/android/incallui/VideoCallPresenter$1;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$000(Lcom/android/incallui/VideoCallPresenter;)Z

    move-result v0

    const-string v1, "VideoCallPresenter.mAutoFullScreenRunnable"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "entering fullscreen mode"

    .line 177
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0, v2}, Lcom/android/incallui/VideoCallPresenter;->access$002(Lcom/android/incallui/VideoCallPresenter;Z)Z

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "skipping scheduled fullscreen mode."

    .line 181
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
