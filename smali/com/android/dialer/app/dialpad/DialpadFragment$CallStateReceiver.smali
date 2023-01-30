.class Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 3400
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/dialpad/DialpadFragment;Lcom/android/dialer/app/dialpad/DialpadFragment$1;)V
    .locals 0

    .line 3400
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "state"

    .line 3408
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3409
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 3410
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 3411
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3500(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3418
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3600(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)V

    :cond_1
    return-void
.end method
