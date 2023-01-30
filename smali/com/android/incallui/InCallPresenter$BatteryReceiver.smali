.class public Lcom/android/incallui/InCallPresenter$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .line 2039
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$BatteryReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2043
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2044
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    const-string v1, "level"

    .line 2046
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/16 p1, 0x64

    const-string v1, "scale"

    .line 2047
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 2049
    iget-object p2, p0, Lcom/android/incallui/InCallPresenter$BatteryReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p2}, Lcom/android/incallui/InCallPresenter;->access$800(Lcom/android/incallui/InCallPresenter;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x5

    if-gt p1, p2, :cond_0

    .line 2050
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$BatteryReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)V

    .line 2051
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$BatteryReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object p1, p1, Lcom/android/incallui/InCallPresenter;->handlerBattery:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/incallui/InCallPresenter$BatteryReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object p2, p2, Lcom/android/incallui/InCallPresenter;->update_thread:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2053
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$BatteryReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/incallui/InCallPresenter;->access$802(Lcom/android/incallui/InCallPresenter;Z)Z

    :cond_0
    const-string p1, "InCallPresenter"

    const-string p2, "BatteryReceiver.onReceive"

    .line 2055
    invoke-static {p1, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
