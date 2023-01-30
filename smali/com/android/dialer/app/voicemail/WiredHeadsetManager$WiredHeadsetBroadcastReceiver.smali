.class Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/WiredHeadsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiredHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;


# direct methods
.method private constructor <init>(Lcom/android/dialer/app/voicemail/WiredHeadsetManager;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/voicemail/WiredHeadsetManager;Lcom/android/dialer/app/voicemail/WiredHeadsetManager$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/dialer/app/voicemail/WiredHeadsetManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "state"

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    .line 83
    :cond_0
    invoke-static {}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_HEADSET_PLUG event, plugged in: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    invoke-static {p1, v0}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->access$200(Lcom/android/dialer/app/voicemail/WiredHeadsetManager;Z)V

    :cond_1
    return-void
.end method
