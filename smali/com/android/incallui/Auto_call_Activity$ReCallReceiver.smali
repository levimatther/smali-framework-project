.class public Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Auto_call_Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Auto_call_Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/Auto_call_Activity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/Auto_call_Activity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Auto_call_Activity.ReCallReceiver"

    invoke-static {v1, p2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo p2, "update_time_action"

    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 142
    iget-object p2, p0, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-virtual {p2}, Lcom/android/incallui/Auto_call_Activity;->finish()V

    .line 144
    iget-object p2, p0, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-static {p2}, Lcom/android/incallui/Auto_call_Activity;->access$100(Lcom/android/incallui/Auto_call_Activity;)V

    :cond_0
    const-string p2, "android.intent.action.CLAMSHELL_DOWN"

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;->this$0:Lcom/android/incallui/Auto_call_Activity;

    iget-object p1, p1, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;->this$0:Lcom/android/incallui/Auto_call_Activity;

    iget-object p1, p1, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;->this$0:Lcom/android/incallui/Auto_call_Activity;

    iget-object p2, p2, Lcom/android/incallui/Auto_call_Activity;->update_thread:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-virtual {p1}, Lcom/android/incallui/Auto_call_Activity;->finish()V

    :cond_2
    return-void
.end method
