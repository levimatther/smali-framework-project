.class Lcom/android/incallui/InCallPresenter$3;
.super Landroid/os/Handler;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 231
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Landroid/os/PowerManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen()V

    goto :goto_0

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Landroid/os/PowerManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen()V

    :cond_2
    :goto_0
    return-void
.end method
