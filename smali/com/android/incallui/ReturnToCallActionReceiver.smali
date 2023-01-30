.class public Lcom/android/incallui/ReturnToCallActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReturnToCallActionReceiver.java"


# static fields
.field public static final ACTION_END_CALL:Ljava/lang/String; = "endCall"

.field public static final ACTION_SHOW_AUDIO_ROUTE_SELECTOR:Ljava/lang/String; = "showAudioRouteSelector"

.field public static final ACTION_TOGGLE_MUTE:Ljava/lang/String; = "toggleMute"

.field public static final ACTION_TOGGLE_SPEAKER:Ljava/lang/String; = "toggleSpeaker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private endCall(Landroid/content/Context;)V
    .locals 5

    .line 107
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallActionReceiver;->getCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 109
    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_END_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    .line 110
    :goto_1
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    :cond_2
    return-void
.end method

.method private getCall()Lcom/android/incallui/call/DialerCall;
    .locals 2

    .line 120
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private toggleMute(Landroid/content/Context;)V
    .locals 6

    .line 94
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallActionReceiver;->getCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 96
    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_MUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_UNMUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    :goto_0
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    .line 97
    :goto_2
    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 103
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/incallui/call/TelecomAdapter;->mute(Z)V

    return-void
.end method

.method private toggleSpeaker(Landroid/content/Context;)V
    .locals 6

    .line 58
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ReturnToCallActionReceiver.toggleSpeaker"

    const-string v3, "toggleSpeaker() called when bluetooth available. Probably should have shown audio route selector"

    .line 62
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallActionReceiver;->getCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const-wide/16 v2, 0x0

    const-string v4, ""

    const/16 v5, 0x8

    if-ne v0, v5, :cond_3

    const/4 v5, 0x5

    .line 73
    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v2

    .line 74
    :cond_2
    invoke-interface {p1, v0, v4, v2, v3}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

    if-eqz v1, :cond_4

    .line 83
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v2

    .line 81
    :cond_5
    invoke-interface {p1, v0, v4, v2, v3}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 86
    :goto_0
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "toggleSpeaker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "toggleMute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "endCall"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "showAudioRouteSelector"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_2

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/ReturnToCallActionReceiver;->endCall(Landroid/content/Context;)V

    goto :goto_2

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/ReturnToCallActionReceiver;->toggleMute(Landroid/content/Context;)V

    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/ReturnToCallActionReceiver;->showAudioRouteSelector(Landroid/content/Context;)V

    goto :goto_2

    .line 43
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/incallui/ReturnToCallActionReceiver;->toggleSpeaker(Landroid/content/Context;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78ed9d11 -> :sswitch_3
        -0x5fd46e27 -> :sswitch_2
        -0x32d24873 -> :sswitch_1
        0xf2c960b -> :sswitch_0
    .end sparse-switch
.end method

.method public showAudioRouteSelector(Landroid/content/Context;)V
    .locals 2

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/AudioRouteSelectorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
