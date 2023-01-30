.class public Lcom/android/incallui/ringtone/DialerRingtoneManager;
.super Ljava/lang/Object;
.source "DialerRingtoneManager.java"


# static fields
.field private static final IS_DIALER_RINGING_ENABLED:Z = false


# instance fields
.field private final mCallList:Lcom/android/incallui/call/CallList;

.field private final mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

.field private mIsDialerRingingEnabledForTesting:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/call/CallList;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ringtone/InCallTonePlayer;

    iput-object p1, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

    .line 55
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/call/CallList;

    iput-object p1, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mCallList:Lcom/android/incallui/call/CallList;

    return-void
.end method

.method private isDialerRingingEnabled()Z
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mIsDialerRingingEnabledForTesting:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 99
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private translateCallStateForCallWaiting(I)I
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return p1

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    return v0
.end method


# virtual methods
.method public playCallWaitingTone()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->isDialerRingingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->play(I)V

    return-void
.end method

.method setDialerRingingEnabledForTesting(Z)V
    .locals 0

    .line 132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mIsDialerRingingEnabledForTesting:Ljava/lang/Boolean;

    return-void
.end method

.method public shouldPlayCallWaitingTone(I)Z
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->isDialerRingingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->translateCallStateForCallWaiting(I)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

    .line 112
    invoke-virtual {p1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->isPlayingTone()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public shouldPlayRingtone(ILandroid/net/Uri;)Z
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->isDialerRingingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->translateCallStateForCallWaiting(I)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public shouldVibrate(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string/jumbo v0, "vibrate_when_ringing"

    const/4 v1, 0x0

    .line 80
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public stopCallWaitingTone()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->isDialerRingingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/incallui/ringtone/InCallTonePlayer;->stop()V

    return-void
.end method
