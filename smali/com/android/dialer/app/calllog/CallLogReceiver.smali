.class public Lcom/android/dialer/app/calllog/CallLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallLogReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static checkVoicemailStatus(Landroid/content/Context;)V
    .locals 3

    .line 52
    new-instance v0, Lcom/android/dialer/database/CallLogQueryHandler;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/calllog/CallLogReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/calllog/CallLogReceiver$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/dialer/database/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;)V

    .line 77
    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailStatus()V

    return-void
.end method

.method public static synthetic lambda$2tnvRSyW06qwN-a9nP6aUt8jjK8(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.NEW_VOICEMAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogReceiver;->checkVoicemailStatus(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/dialer/app/calllog/-$$Lambda$CallLogReceiver$2tnvRSyW06qwN-a9nP6aUt8jjK8;

    invoke-direct {v0, p2}, Lcom/android/dialer/app/calllog/-$$Lambda$CallLogReceiver$2tnvRSyW06qwN-a9nP6aUt8jjK8;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {p1, v0}, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;->scheduleTask(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/dialer/app/calllog/-$$Lambda$CallLogReceiver$2tnvRSyW06qwN-a9nP6aUt8jjK8;

    invoke-direct {v0, p2}, Lcom/android/dialer/app/calllog/-$$Lambda$CallLogReceiver$2tnvRSyW06qwN-a9nP6aUt8jjK8;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {p1, v0}, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;->scheduleTask(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "CallLogReceiver.onReceive"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
