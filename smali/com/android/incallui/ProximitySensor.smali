.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

.field private final mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

.field private mDialpadVisible:Z

.field private final mDisplayListener:Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

.field private mIsAttemptingVideoCall:Z

.field private mIsPhoneOffhook:Z

.field private mIsVideoCall:Z

.field private mOrientation:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/audiomode/AudioModeProvider;Lcom/android/incallui/AccelerometerListener;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 52
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    const-string v1, "power"

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x20

    .line 63
    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ProximitySensor.constructor"

    const-string v2, "Device does not support proximity wake lock."

    .line 67
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    :goto_0
    iput-object p3, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    .line 71
    invoke-virtual {p3, p0}, Lcom/android/incallui/AccelerometerListener;->setListener(Lcom/android/incallui/AccelerometerListener$OrientationListener;)V

    .line 73
    new-instance p3, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

    const-string v0, "display"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-direct {p3, p0, p1}, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;-><init>(Lcom/android/incallui/ProximitySensor;Landroid/hardware/display/DisplayManager;)V

    iput-object p3, p0, Lcom/android/incallui/ProximitySensor;->mDisplayListener:Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

    .line 76
    invoke-virtual {p3}, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->register()V

    .line 78
    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

    .line 79
    invoke-virtual {p2, p0}, Lcom/android/incallui/audiomode/AudioModeProvider;->addListener(Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;)V

    return-void
.end method

.method private turnOffProximitySensor(Z)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ProximitySensor.turnOffProximitySensor"

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "releasing wake lock"

    .line 181
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    xor-int/lit8 p1, p1, 0x1

    .line 183
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "wake lock already released"

    .line 185
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private turnOnProximitySensor()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ProximitySensor.turnOnProximitySensor"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "acquiring wake lock"

    .line 170
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "wake lock already acquired"

    .line 173
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized updateProximitySensorMode()V
    .locals 11

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v0, :cond_1

    const/16 v5, 0x8

    if-eq v5, v0, :cond_1

    if-eq v2, v0, :cond_1

    .line 208
    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mIsAttemptingVideoCall:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mIsVideoCall:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    .line 218
    :goto_1
    iget v6, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    if-ne v6, v2, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    .line 219
    :goto_2
    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    or-int/2addr v5, v7

    .line 225
    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move v6, v4

    :goto_4
    or-int/2addr v5, v6

    const-string v6, "ProximitySensor.updateProximitySensorMode"

    const-string v7, "screenOnImmediately: %b, dialPadVisible: %b, offHook: %b, horizontal: %b, uiShowing: %b, audioRoute: %s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 231
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    .line 232
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 233
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x3

    iget v10, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    if-ne v10, v2, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    .line 234
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v9

    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 235
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x5

    .line 236
    invoke-static {v0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    .line 227
    invoke-static {v6, v7, v8}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    const-string v0, "ProximitySensor.updateProximitySensorMode"

    const-string/jumbo v1, "turning on proximity sensor"

    new-array v2, v4, [Ljava/lang/Object;

    .line 239
    invoke-static {v0, v1, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->turnOnProximitySensor()V

    goto :goto_6

    :cond_6
    const-string v0, "ProximitySensor.updateProximitySensorMode"

    const-string/jumbo v1, "turning off proximity sensor"

    new-array v2, v4, [Ljava/lang/Object;

    .line 244
    invoke-static {v0, v1, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-direct {p0, v5}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isScreenReallyOff()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onDialpadVisible(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    .line 128
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method onDisplayStateChanged(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ProximitySensor.onDisplayStateChanged"

    const-string v2, "isDisplayOn: %b"

    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 149
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 3

    .line 104
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->hasLiveCall()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 105
    :goto_0
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v0

    .line 107
    :goto_2
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 110
    :goto_3
    iget-boolean p2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-ne p1, p2, :cond_4

    iget-boolean p2, p0, Lcom/android/incallui/ProximitySensor;->mIsVideoCall:Z

    if-eq p2, v0, :cond_5

    .line 111
    :cond_4
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsVideoCall:Z

    .line 114
    iput v1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 115
    iget-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    invoke-virtual {p2, p1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    :cond_5
    return-void
.end method

.method public orientationChanged(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 95
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public setIsAttemptingVideoCall(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ProximitySensor.setIsAttemptingVideoCall"

    const-string v2, "isAttemptingVideoCall: %b"

    .line 132
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mIsAttemptingVideoCall:Z

    .line 137
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public tearDown()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/audiomode/AudioModeProvider;->removeListener(Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mDisplayListener:Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->unregister()V

    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, v0}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V

    return-void
.end method
