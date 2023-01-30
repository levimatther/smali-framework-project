.class public Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;
.super Ljava/lang/Object;
.source "AnswerProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/call/DialerCallListener;
.implements Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;


# static fields
.field private static final CONFIG_ANSWER_PROXIMITY_SENSOR_ENABLED:Ljava/lang/String; = "answer_proximity_sensor_enabled"

.field private static final CONFIG_ANSWER_PSEUDO_PROXIMITY_WAKE_LOCK_ENABLED:Ljava/lang/String; = "answer_pseudo_proximity_wake_lock_enabled"


# instance fields
.field private final answerProximityWakeLock:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;

.field private final call:Lcom/android/incallui/call/DialerCall;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/answerproximitysensor/PseudoScreenState;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->call:Lcom/android/incallui/call/DialerCall;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerProximitySensor.constructor"

    const-string v2, "acquiring lock"

    .line 78
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {p1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v1, "answer_pseudo_proximity_wake_lock_enabled"

    const/4 v2, 0x1

    .line 80
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;

    invoke-direct {v0, p1, p3}, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;-><init>(Landroid/content/Context;Lcom/android/incallui/answerproximitysensor/PseudoScreenState;)V

    iput-object v0, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->answerProximityWakeLock:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;

    goto :goto_0

    .line 87
    :cond_0
    new-instance p3, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;

    invoke-direct {p3, p1}, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->answerProximityWakeLock:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->answerProximityWakeLock:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;

    invoke-interface {p1, p0}, Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;->setScreenOnListener(Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;)V

    .line 90
    iget-object p1, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->answerProximityWakeLock:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;

    invoke-interface {p1}, Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;->acquire()V

    .line 92
    invoke-virtual {p2, p0}, Lcom/android/incallui/call/DialerCall;->addListener(Lcom/android/incallui/call/DialerCallListener;)V

    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, p0}, Lcom/android/incallui/call/DialerCall;->removeListener(Lcom/android/incallui/call/DialerCallListener;)V

    .line 97
    invoke-direct {p0}, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->releaseProximityWakeLock()V

    return-void
.end method

.method private static isDefaultDisplayOn(Landroid/content/Context;)Z
    .locals 2

    .line 108
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private releaseProximityWakeLock()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->answerProximityWakeLock:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;

    invoke-interface {v0}, Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerProximitySensor.releaseProximityWakeLock"

    const-string v2, "releasing lock"

    .line 102
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->answerProximityWakeLock:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;

    invoke-interface {v0}, Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;->release()V

    :cond_0
    return-void
.end method

.method public static shouldUse(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 4

    .line 48
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p1

    const-string v0, "AnswerProximitySensor.shouldUse"

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "call state is not incoming"

    .line 49
    invoke-static {v0, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p1

    const-string v2, "answer_proximity_sensor_enabled"

    const/4 v3, 0x1

    .line 54
    invoke-interface {p1, v2, v3}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "disabled by config"

    .line 55
    invoke-static {v0, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 59
    :cond_1
    const-class p1, Landroid/os/PowerManager;

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 v2, 0x20

    .line 61
    invoke-virtual {p1, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result p1

    if-nez p1, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "wake lock level not supported"

    .line 62
    invoke-static {v0, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 66
    :cond_2
    invoke-static {p0}, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->isDefaultDisplayOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "display is already on"

    .line 67
    invoke-static {v0, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    return v3
.end method


# virtual methods
.method public onDialerCallChildNumberChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallDisconnect()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerProximitySensor.onDialerCallDisconnect"

    const/4 v2, 0x0

    .line 115
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0}, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->cleanup()V

    return-void
.end method

.method public onDialerCallLastForwardedNumberChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallSessionModificationStateChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallUpdate()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerProximitySensor.onDialerCallUpdate"

    const-string v2, "no longer incoming, cleaning up"

    .line 122
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0}, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->cleanup()V

    :cond_0
    return-void
.end method

.method public onDialerCallUpgradeToVideo()V
    .locals 0

    return-void
.end method

.method public onEnrichedCallSessionUpdate()V
    .locals 0

    return-void
.end method

.method public onHandoverToWifiFailure()V
    .locals 0

    return-void
.end method

.method public onInternationalCallOnWifi()V
    .locals 0

    return-void
.end method

.method public onScreenOn()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/android/incallui/answerproximitysensor/AnswerProximitySensor;->cleanup()V

    return-void
.end method

.method public onWiFiToLteHandover()V
    .locals 0

    return-void
.end method
