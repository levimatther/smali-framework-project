.class Lcom/android/dialer/app/voicemail/WiredHeadsetManager;
.super Ljava/lang/Object;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;,
        Lcom/android/dialer/app/voicemail/WiredHeadsetManager$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPluggedIn:Z

.field private mListener:Lcom/android/dialer/app/voicemail/WiredHeadsetManager$Listener;

.field private final mReceiver:Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/dialer/app/voicemail/WiredHeadsetManager;Lcom/android/dialer/app/voicemail/WiredHeadsetManager$1;)V

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mReceiver:Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    const-string v0, "audio"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 39
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/voicemail/WiredHeadsetManager;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->onHeadsetPluggedInChanged(Z)V

    return-void
.end method

.method private onHeadsetPluggedInChanged(Z)V
    .locals 3

    .line 61
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    if-eq v0, p1, :cond_0

    .line 62
    sget-object v0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeadsetPluggedInChanged, mIsPluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    .line 64
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    .line 65
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mListener:Lcom/android/dialer/app/voicemail/WiredHeadsetManager$Listener;

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, v0, p1}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager$Listener;->onWiredHeadsetPluggedInChanged(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method isPluggedIn()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    return v0
.end method

.method registerReceiver()V
    .locals 3

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mReceiver:Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method setListener(Lcom/android/dialer/app/voicemail/WiredHeadsetManager$Listener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mListener:Lcom/android/dialer/app/voicemail/WiredHeadsetManager$Listener;

    return-void
.end method

.method unregisterReceiver()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->mReceiver:Lcom/android/dialer/app/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
