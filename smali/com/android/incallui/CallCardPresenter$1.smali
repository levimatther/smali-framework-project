.class Lcom/android/incallui/CallCardPresenter$1;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$100(Lcom/android/incallui/CallCardPresenter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/CallCardPresenter;->sendAccessibilityEvent(Landroid/content/Context;Lcom/android/incallui/incall/protocol/InCallScreen;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/incallui/CallCardPresenter;->access$002(Lcom/android/incallui/CallCardPresenter;Z)Z

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    .line 139
    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->access$000(Lcom/android/incallui/CallCardPresenter;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CallCardPresenter.sendAccessibilityEventRunnable"

    const-string v2, "still should send: %b"

    .line 136
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$000(Lcom/android/incallui/CallCardPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$300(Lcom/android/incallui/CallCardPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
