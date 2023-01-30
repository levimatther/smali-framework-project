.class public Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinishActivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 3646
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 3650
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3651
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3653
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    .line 3655
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$900(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3700(Lcom/android/dialer/app/dialpad/DialpadFragment;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    const-string v0, "com.android.dialpad.finish"

    .line 3656
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 3657
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3658
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_3
    return-void
.end method
