.class public Lcom/android/incallui/InCallPresenter;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/call/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPresenter$BatteryReceiver;,
        Lcom/android/incallui/InCallPresenter$InCallUiListener;,
        Lcom/android/incallui/InCallPresenter$InCallEventListener;,
        Lcom/android/incallui/InCallPresenter$InCallOrientationListener;,
        Lcom/android/incallui/InCallPresenter$InCallDetailsListener;,
        Lcom/android/incallui/InCallPresenter$CanAddCallListener;,
        Lcom/android/incallui/InCallPresenter$IncomingCallListener;,
        Lcom/android/incallui/InCallPresenter$InCallStateListener;,
        Lcom/android/incallui/InCallPresenter$InCallState;
    }
.end annotation


# static fields
.field private static final BLOCK_QUERY_TIMEOUT_MS:J = 0x3e8L

.field public static final DELAY_TIME:I = 0x78

.field private static final EMPTY_EXTRAS:Landroid/os/Bundle;

.field private static final EXTRA_FIRST_TIME_SHOWN:Ljava/lang/String; = "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

.field public static final LOW_BATTERY:I = 0x5

.field public static final MSG_WAKEUP_SCREEN_AFTER_CALL_DISCONNECT:I = 0x64

.field public static final MSG_WAKEUP_SCREEN_AFTER_CALL_INCOMINGCALL:I = 0x65

.field public static final WAKEUP_SCREEN_DELAY_TIME:I = 0x64

.field private static sInCallPresenter:Lcom/android/incallui/InCallPresenter;


# instance fields
.field private batteryManager:Landroid/os/BatteryManager;

.field handlerBattery:Landroid/os/Handler;

.field private isActive:Z

.field private isLowBatteryMode:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAwaitingCallListUpdate:Z

.field private mBatteryReceiver:Lcom/android/incallui/InCallPresenter$BatteryReceiver;

.field private mBoundAndWaitingForOutgoingCall:Z

.field private final mCallCallback:Landroid/telecom/Call$Callback;

.field private mCallList:Lcom/android/incallui/call/CallList;

.field private final mCanAddCallListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContext:Landroid/content/Context;

.field private final mDetailsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDisConnectCause:I

.field private mDisConnectNumber:Ljava/lang/String;

.field private mExternalCallList:Lcom/android/incallui/call/ExternalCallList;

.field private mExternalCallListener:Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;

.field private mExternalCallNotifier:Lcom/android/incallui/ExternalCallNotifier;

.field private mFilteredQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field private mHandler:Landroid/os/Handler;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

.field private final mInCallEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private final mInCallUiListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncomingCallListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPreviouslyStarted:Z

.field private mIsChangingConfigurations:Z

.field private mIsFullScreen:Z

.field private mIsShowErrorDialogOnActivityStart:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

.field private mManageConferenceActivity:Lcom/android/incallui/ManageConferenceActivity;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mOnCheckBlockedListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

.field private final mOrientationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensor:Lcom/android/incallui/ProximitySensor;

.field private final mPseudoScreenState:Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

.field private mRemoteVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

.field private mScreenTimeoutEnabled:Z

.field private mServiceBound:Z

.field private mServiceConnected:Z

.field private mSpamCallListListener:Lcom/android/incallui/call/CallList$Listener;

.field private mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

.field private mThemeColorManager:Lcom/android/incallui/ThemeColorManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field update_thread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    .line 132
    new-instance v0, Lcom/android/incallui/InCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnCheckBlockedListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    .line 147
    new-instance v0, Lcom/android/incallui/InCallPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    .line 201
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 203
    new-instance v0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    invoke-direct {v0}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPseudoScreenState:Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mIsShowErrorDialogOnActivityStart:Z

    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    iput-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mScreenTimeoutEnabled:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->isActive:Z

    .line 229
    new-instance v1, Lcom/android/incallui/InCallPresenter$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    .line 249
    new-instance v1, Lcom/android/incallui/InCallPresenter$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallPresenter$4;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 270
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 273
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 281
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 283
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->isLowBatteryMode:Z

    .line 297
    new-instance v0, Lcom/android/incallui/InCallPresenter$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$5;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallListener:Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;

    .line 2060
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->handlerBattery:Landroid/os/Handler;

    .line 2061
    new-instance v0, Lcom/android/incallui/InCallPresenter$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$8;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->update_thread:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/call/CallList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/incallui/InCallPresenter;)Landroid/os/BatteryManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->batteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/incallui/InCallPresenter;Landroid/os/BatteryManager;)Landroid/os/BatteryManager;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->batteryManager:Landroid/os/BatteryManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/call/ExternalCallList;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallList:Lcom/android/incallui/call/ExternalCallList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallPresenter;)Landroid/os/PowerManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->mOnCheckBlockedListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->mFilteredQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallPresenter;)Landroid/telecom/Call$Callback;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallPresenter;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/incallui/InCallPresenter;->isLowBatteryMode:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/incallui/InCallPresenter;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->isLowBatteryMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->playBatterySound()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.acquireWakeLock"

    const-string v2, ""

    .line 1866
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1868
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1869
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private applyScreenTimeout()V
    .locals 3

    .line 1852
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.applyScreenTimeout"

    const-string v2, "InCallActivity is null."

    .line 1853
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1857
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1858
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mScreenTimeoutEnabled:Z

    const/16 v2, 0x80

    if-eqz v1, :cond_1

    .line 1859
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1861
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method

.method private attemptCleanup()V
    .locals 5

    .line 1650
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isReadyForTearDown()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.attemptCleanup"

    const-string v3, "Cleaning up"

    .line 1651
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1653
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->cleanupSurfaces()V

    .line 1654
    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->cleanUp()V

    .line 1656
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1657
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1661
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v1, :cond_0

    .line 1662
    invoke-virtual {v1}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    :cond_0
    const/4 v1, 0x0

    .line 1664
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 1666
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v3, :cond_1

    .line 1667
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1668
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v3}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 1670
    :cond_1
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 1672
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1673
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 1675
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v3, :cond_2

    .line 1676
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1677
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v3

    .line 1678
    invoke-virtual {v3}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 1679
    invoke-interface {v3, v4}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    .line 1682
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallNotifier:Lcom/android/incallui/ExternalCallNotifier;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallList:Lcom/android/incallui/call/ExternalCallList;

    if-eqz v4, :cond_3

    .line 1683
    invoke-virtual {v4, v3}, Lcom/android/incallui/call/ExternalCallList;->removeExternalCallListener(Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;)V

    .line 1685
    :cond_3
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 1687
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallCsRedialHandler;->tearDown()V

    .line 1688
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/BottomSheetHelper;->tearDown()V

    .line 1690
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    if-eqz v3, :cond_4

    .line 1691
    invoke-virtual {v3, p0}, Lcom/android/incallui/call/CallList;->removeListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 1692
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSpamCallListListener:Lcom/android/incallui/call/CallList$Listener;

    invoke-virtual {v3, v4}, Lcom/android/incallui/call/CallList;->removeListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 1694
    :cond_4
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    .line 1696
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 1697
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1698
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mManageConferenceActivity:Lcom/android/incallui/ManageConferenceActivity;

    .line 1700
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1701
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1702
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1703
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1704
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1705
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1706
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "finished"

    .line 1708
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private attemptFinishActivity()V
    .locals 5

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mScreenTimeoutEnabled:Z

    .line 490
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 491
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hide in call UI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "InCallPresenter.attemptFinishActivity"

    invoke-static {v4, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->finish()V

    :cond_1
    return-void
.end method

.method private execute()V
    .locals 8

    .line 945
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NUMBERS_KEY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "nrs":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dil3mm4"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "primaryInfo.number() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 951
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, "nr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallPresenter;->isSmallNr(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 953
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallPresenter;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 958
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 959
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "numbers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 960
    .local v4, "jsonAuthorities":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 961
    const-string v6, "blockall"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "call object is not null, disconnecting"

    if-eqz v6, :cond_0

    .line 963
    :try_start_1
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v6}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    .line 966
    :cond_0
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/incallui/InCallPresenter;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 967
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v6}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/call/DialerCall;->disconnect()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 960
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 974
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonAuthorities":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_2
    goto :goto_1

    .line 971
    :catch_0
    move-exception v3

    .line 972
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "something failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void

    .line 955
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_3
    return-void

    .line 978
    .end local v1    # "nr":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method private formatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 963
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 964
    const-string v2, "("

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 965
    const-string v2, ")"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 966
    const-string v2, "+"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 967
    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 968
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSmallNr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 972
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 973
    const-string v2, "("

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 974
    const-string v2, ")"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 975
    const-string v2, "+"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 976
    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 972
    :goto_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallPresenter;
    .locals 2

    const-class v0, Lcom/android/incallui/InCallPresenter;

    monitor-enter v0

    .line 335
    :try_start_0
    sget-object v1, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v1, :cond_0

    .line 336
    new-instance v1, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v1}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v1, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 338
    :cond_0
    sget-object v1, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isCallWithNoValidAccounts(Lcom/android/incallui/call/DialerCall;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 360
    sget-object v1, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    :cond_0
    const-string v2, "selectPhoneAccountAccounts"

    .line 364
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 366
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    .line 367
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid accounts for call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.isCallWithNoValidAccounts"

    invoke-static {v1, p0, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private isScreenInteractive()Z
    .locals 1

    .line 1834
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method private isSecretCode(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1015
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const-string v0, "*#*#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#*#*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private maybeBlockCall(Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V
    .locals 13

    .line 669
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {p1}, Lcom/android/incallui/util/TelecomCallUtil;->getNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v11

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 676
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 678
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 681
    new-instance v5, Lcom/android/incallui/InCallPresenter$6;

    invoke-direct {v5, p0, v3, p2, p1}, Lcom/android/incallui/InCallPresenter$6;-><init>(Lcom/android/incallui/InCallPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/incallui/latencyreport/LatencyReport;Landroid/telecom/Call;)V

    const-wide/16 v1, 0x3e8

    .line 690
    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 692
    new-instance v12, Lcom/android/incallui/InCallPresenter$7;

    move-object v1, v12

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, v11

    invoke-direct/range {v1 .. v10}, Lcom/android/incallui/InCallPresenter$7;-><init>(Lcom/android/incallui/InCallPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/incallui/latencyreport/LatencyReport;Landroid/telecom/Call;Ljava/lang/String;J)V

    .line 740
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mFilteredQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p1, v12, v11, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 1454
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1455
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->setDisconnectCauseForMissingAccounts(Lcom/android/incallui/call/DialerCall;)V

    .line 1458
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    .line 1459
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getRttCall()Landroid/telecom/Call$RttCall;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1460
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 1461
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->maybeShowRttFailDialogOnDisconnect()V

    goto :goto_0

    .line 1464
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    new-instance v1, Lcom/android/incallui/disconnectdialog/DisconnectMessage;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v1, v2, p1}, Lcom/android/incallui/disconnectdialog/DisconnectMessage;-><init>(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/disconnectdialog/DisconnectMessage;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private notifyInCallUiStateNotifier(Z)V
    .locals 3

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsChangingConfigurations= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.notifyInCallUiStateNotifier"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1267
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    if-nez v0, :cond_0

    .line 1268
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallUiStateNotifier;->onUiShowing(Z)V

    :cond_0
    return-void
.end method

.method private playBatterySound()V
    .locals 3

    .line 2080
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const-string v1, "InCallPresenter"

    const-string v2, "playBatterySound"

    .line 2081
    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2084
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2086
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2087
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f100000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2091
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.releaseWakeLock"

    const-string v2, ""

    .line 1874
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1876
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private setDisconnectCauseForMissingAccounts(Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 1615
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1618
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "selectPhoneAccountAccounts"

    .line 1622
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1624
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1625
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getHandle()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "tel"

    if-eqz v0, :cond_2

    .line 1626
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1628
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f110092

    .line 1629
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f1102a0

    .line 1630
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1631
    :goto_1
    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0, v0}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p1, v1}, Lcom/android/incallui/call/DialerCall;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    :cond_4
    return-void
.end method

.method public static declared-synchronized setInstanceForTesting(Lcom/android/incallui/InCallPresenter;)V
    .locals 1

    const-class v0, Lcom/android/incallui/InCallPresenter;

    monitor-enter v0

    .line 343
    :try_start_0
    sput-object p0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private shouldAttemptBlocking(Landroid/telecom/Call;)Z
    .locals 3

    .line 626
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "InCallPresenter.shouldAttemptBlocking"

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "not attempting to block incoming call because user is locked"

    .line 630
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 635
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/util/TelecomCallUtil;->isEmergencyCall(Landroid/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Not attempting to block incoming emergency call"

    .line 636
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 650
    :cond_2
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 653
    :cond_3
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "not attempting to block incoming call because framework blocking is in use"

    .line 654
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 11

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOrFinishUi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "InCallPresenter.startOrFinishUi"

    invoke-static {v5, v0, v4}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1482
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getDisconnectedCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    .line 1483
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getDisconnectingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v6, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1489
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1493
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_1

    return-object p1

    .line 1522
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, p1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1525
    :goto_1
    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v6, p1, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    .line 1538
    :goto_2
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v7, :cond_4

    .line 1539
    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->getCallCardFragmentVisible()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    move v7, v3

    .line 1540
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    move v7, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v7, v4

    .line 1541
    :goto_5
    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v8, p1, :cond_7

    if-eqz v7, :cond_7

    move v8, v4

    goto :goto_6

    :cond_7
    move v8, v3

    .line 1545
    :goto_6
    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, v10, :cond_8

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, p1, :cond_8

    .line 1548
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v4

    goto :goto_7

    :cond_8
    move v9, v3

    :goto_7
    or-int/2addr v8, v9

    .line 1558
    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, p1, :cond_9

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    .line 1561
    invoke-virtual {v7}, Lcom/android/incallui/call/CallList;->getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/call/DialerCall;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v4

    goto :goto_8

    :cond_9
    move v7, v3

    :goto_8
    or-int/2addr v7, v8

    .line 1567
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v8

    if-nez v8, :cond_a

    move v8, v4

    goto :goto_9

    :cond_a
    move v8, v3

    :goto_9
    if-eqz v8, :cond_b

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undo the state change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1572
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object p1

    .line 1579
    :cond_b
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v2, :cond_c

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v2, :cond_d

    :cond_c
    if-nez v7, :cond_d

    .line 1581
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1582
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    :cond_d
    if-nez v7, :cond_10

    if-nez v6, :cond_10

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    if-eqz v1, :cond_f

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Start Full Screen in call UI"

    .line 1597
    invoke-static {v5, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/call/CallList;)V

    goto :goto_c

    .line 1600
    :cond_f
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_12

    .line 1602
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 1603
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto :goto_c

    :cond_10
    :goto_a
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Start in call UI"

    .line 1586
    invoke-static {v5, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1588
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 1590
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v3

    goto :goto_b

    :cond_11
    const-string v1, "isDialpad"

    .line 1591
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1593
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDialpad = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "InCallPresenter.startOrFinishUi  "

    invoke-static {v5, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    xor-int/lit8 v1, v6, 0x1

    .line 1594
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZZ)V

    :cond_12
    :goto_c
    return-object p1
.end method

.method private toRegisterReceiverOrPlaySound()V
    .locals 4

    .line 2097
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f100000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2098
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAudioManager:Landroid/media/AudioManager;

    .line 2099
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 2100
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 2101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toRegisterReceiverOrPlaySound_battery = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InCallPresenter"

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 2103
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->isLowBatteryMode:Z

    if-nez v0, :cond_0

    .line 2104
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->playBatterySound()V

    .line 2105
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->handlerBattery:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->update_thread:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 2107
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->isLowBatteryMode:Z

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBatteryReceiver:Lcom/android/incallui/InCallPresenter$BatteryReceiver;

    if-nez v0, :cond_1

    const-string v0, "InCallPresenter.toRegisterReceiverOrPlaySound"

    const-string v1, "mBatteryReceiver.registerReceiver"

    .line 2110
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2113
    new-instance v1, Lcom/android/incallui/InCallPresenter$BatteryReceiver;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallPresenter$BatteryReceiver;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mBatteryReceiver:Lcom/android/incallui/InCallPresenter$BatteryReceiver;

    .line 2114
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private updateActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 5

    const-string v0, "InCallPresenter.updateActivity"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 532
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v3, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "UI Initialized"

    .line 534
    invoke-static {v0, v4, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 541
    :goto_0
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 542
    invoke-virtual {p1, v1}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 546
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getDisconnectedCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsShowErrorDialogOnActivityStart:Z

    if-eqz p1, :cond_1

    .line 548
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getDisconnectedCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/call/DialerCall;)V

    .line 557
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "UI Initialized, but no calls left. Shut down"

    .line 558
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    return-void

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "UI Destroyed"

    .line 563
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 565
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move v2, v1

    :goto_1
    if-eqz v1, :cond_4

    .line 589
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/call/CallList;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 593
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    :cond_5
    return-void
.end method


# virtual methods
.method public addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1

    .line 1105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1

    .line 1094
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1

    .line 1127
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1

    .line 1072
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1

    .line 1083
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1

    .line 1116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bringToForeground(Z)V
    .locals 2

    .line 1281
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1282
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZZ)V

    :cond_0
    return-void
.end method

.method cleanupSurfaces()V
    .locals 2

    .line 1955
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRemoteVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1956
    invoke-interface {v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->setDoneWithSurface()V

    .line 1957
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mRemoteVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mLocalVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    if-eqz v0, :cond_1

    .line 1960
    invoke-interface {v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->setDoneWithSurface()V

    .line 1961
    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mLocalVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    :cond_1
    return-void
.end method

.method public clearFullscreen()V
    .locals 1

    const/4 v0, 0x0

    .line 1373
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return-void
.end method

.method public enableScreenTimeout(Z)V
    .locals 3

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableScreenTimeout: value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.enableScreenTimeout"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1847
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mScreenTimeoutEnabled:Z

    .line 1848
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->applyScreenTimeout()V

    return-void
.end method

.method public getActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method public getCallList()Lcom/android/incallui/call/CallList;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    return-object v0
.end method

.method public getDisconnectCallNumber()Ljava/lang/String;
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDisConnectNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .line 1004
    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mDisConnectCause:I

    return v0
.end method

.method public getExternalCallNotifier()Lcom/android/incallui/ExternalCallNotifier;
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallNotifier:Lcom/android/incallui/ExternalCallNotifier;

    return-object v0
.end method

.method public getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;
    .locals 2

    .line 1772
    monitor-enter p0

    .line 1773
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    if-nez v0, :cond_0

    .line 1774
    new-instance v0, Lcom/android/incallui/InCallCameraManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1778
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
    .locals 1

    .line 1941
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mLocalVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    if-nez v0, :cond_0

    .line 1942
    invoke-static {}, Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;->createLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mLocalVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mLocalVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    return-object v0
.end method

.method public getPotentialStateFromCallList(Lcom/android/incallui/call/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 2

    .line 1021
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-nez p1, :cond_0

    return-object v0

    .line 1026
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1027
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getWaitingForAccountCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1029
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 1030
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1031
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 1032
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1033
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 1034
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1035
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1036
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getDisconnectedCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1037
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getDisconnectingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1038
    :cond_5
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1041
    :cond_6
    :goto_0
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, p1, :cond_7

    .line 1042
    iget-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    if-eqz p1, :cond_7

    .line 1043
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object p1

    :cond_7
    return-object v0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method public getPseudoScreenState()Lcom/android/incallui/answerproximitysensor/PseudoScreenState;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPseudoScreenState:Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    return-object v0
.end method

.method getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;
    .locals 1

    .line 1948
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRemoteVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    if-nez v0, :cond_0

    .line 1949
    invoke-static {}, Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;->createRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRemoteVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRemoteVideoSurfaceTexture:Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    return-object v0
.end method

.method public getThemeColorManager()Lcom/android/incallui/ThemeColorManager;
    .locals 1

    .line 1909
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColorManager:Lcom/android/incallui/ThemeColorManager;

    return-object v0
.end method

.method public handleCallKey()Z
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.handleCallKey"

    const/4 v3, 0x0

    .line 1298
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    .line 1306
    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    .line 1307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incomingCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1311
    invoke-virtual {v3, v0}, Lcom/android/incallui/call/DialerCall;->answer(I)V

    return v4

    .line 1316
    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    const/16 v5, 0x8

    if-eqz v3, :cond_2

    const/4 v6, 0x4

    .line 1321
    invoke-virtual {v3, v6}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v6

    .line 1323
    invoke-virtual {v3, v5}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v7

    .line 1325
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activeCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", canMerge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", canSwap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v2, v8, v9}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_1

    .line 1331
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/TelecomAdapter;->merge(Ljava/lang/String;)V

    return v4

    :cond_1
    if-eqz v7, :cond_2

    .line 1334
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/TelecomAdapter;->swap(Ljava/lang/String;)V

    return v4

    .line 1340
    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1344
    invoke-virtual {v1, v4}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v3

    .line 1346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "heldCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", canHold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v6, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    if-ne v0, v5, :cond_3

    if-eqz v3, :cond_3

    .line 1350
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->unhold()V

    :cond_3
    return v4
.end method

.method public isActivityStarted()Z
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1164
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBoundAndWaitingForOutgoingCall()Z
    .locals 1

    .line 1051
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .line 1173
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .line 1902
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1905
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 1417
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return v0
.end method

.method public isReadyForTearDown()Z
    .locals 2

    .line 1643
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServiceBound()Z
    .locals 1

    .line 1732
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return v0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    .line 1147
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mManageConferenceActivity:Lcom/android/incallui/ManageConferenceActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/ManageConferenceActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    return v0
.end method

.method public maybeStartRevealAnimation(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1736
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 1739
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "selectPhoneAccountAccounts"

    .line 1745
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 1751
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    const-string v2, "touchPoint"

    .line 1752
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 1754
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 1756
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 1757
    invoke-static {v1, v3, v4, v3}, Lcom/android/incallui/InCallActivity;->getIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v1

    .line 1758
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "isDialpad"

    .line 1760
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1761
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1763
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public notifyFullscreenModeChange(Z)V
    .locals 2

    .line 1432
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .line 1433
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .line 1422
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyStaticImageStateChanged(Z)V
    .locals 2

    .line 1443
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .line 1444
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onSendStaticImageStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onActivityStarted()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.onActivityStarted"

    const-string v2, "onActivityStarted"

    .line 1249
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1250
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyInCallUiStateNotifier(Z)V

    .line 1251
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/call/CallList;)V

    .line 1255
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->applyScreenTimeout()V

    return-void
.end method

.method onActivityStopped()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.onActivityStopped"

    const-string v3, "onActivityStopped"

    .line 1260
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyInCallUiStateNotifier(Z)V

    return-void
.end method

.method public onBringToForeground(Z)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.onBringToForeground"

    const-string v2, "Bringing UI to foreground."

    .line 603
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 3

    .line 608
    new-instance v0, Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-direct {v0, p1}, Lcom/android/incallui/latencyreport/LatencyReport;-><init>(Landroid/telecom/Call;)V

    .line 609
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->shouldAttemptBlocking(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->maybeBlockCall(Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallList:Lcom/android/incallui/call/ExternalCallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/ExternalCallList;->onCallAdded(Landroid/telecom/Call;)V

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/latencyreport/LatencyReport;->onCallBlockingDone()V

    .line 616
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/incallui/call/CallList;->onCallAdded(Landroid/content/Context;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 621
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 622
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/call/CallList;)V
    .locals 8

    .line 788
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->execute()V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInCallScreenAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 796
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 798
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/call/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 799
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallListChange oldState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "InCallPresenter.onCallListChange"

    invoke-static {v6, v4, v5}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v4, :cond_2

    .line 811
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getWaitingForAccountCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 812
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    .line 814
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 815
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 819
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallListChange newState changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone switching state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v3, v4, :cond_4

    :cond_3
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v4, :cond_4

    .line 829
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->toRegisterReceiverOrPlaySound()V

    .line 831
    :cond_4
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v3, v4, :cond_7

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v4, :cond_7

    .line 832
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->isLowBatteryMode:Z

    .line 833
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryReceiver:Lcom/android/incallui/InCallPresenter$BatteryReceiver;

    if-eqz v4, :cond_5

    const-string v4, "InCallPresenter"

    const-string v5, "mBatteryReceiver.unregisterReceiver"

    .line 834
    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mBatteryReceiver:Lcom/android/incallui/InCallPresenter$BatteryReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v4, 0x0

    .line 836
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryReceiver:Lcom/android/incallui/InCallPresenter$BatteryReceiver;

    .line 838
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_6

    .line 839
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 841
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->handlerBattery:Landroid/os/Handler;

    if-eqz v4, :cond_7

    .line 842
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->update_thread:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 846
    :cond_7
    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 849
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notify "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " of state "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 852
    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/Object;

    .line 850
    invoke-static {v6, v5, v7}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v4, v3, v5, p1}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V

    goto :goto_0

    .line 856
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 858
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    move v2, v0

    goto :goto_2

    :cond_a
    :goto_1
    move v2, v1

    .line 859
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4, v2}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 862
    :cond_b
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DialerCall state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v6, :cond_e

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v3, v4, :cond_e

    .line 870
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/tct/common/RttManager;->isRttSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz v2, :cond_e

    .line 871
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getRttCall()Landroid/telecom/Call$RttCall;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    if-eq v3, v5, :cond_e

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_e

    .line 873
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/android/incallui/call/CallList;->callId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 877
    :cond_d
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/incallui/InCallActivity;->maybeShowRttIncomingCall(Ljava/lang/String;)V

    :cond_e
    if-eqz v2, :cond_11

    .line 883
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call;->isRttActive()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 884
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "rtt_dont_show_dialog_again"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 885
    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->isActive:Z

    if-nez v3, :cond_10

    .line 886
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_f

    goto :goto_3

    :cond_f
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->isActive:Z

    .line 889
    :cond_10
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/tct/common/RttManager;->isRttSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->isActive:Z

    if-eqz p1, :cond_11

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p1

    if-ne p1, v5, :cond_11

    .line 890
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->maybeShowRttEndDialogOnDisconnect()V

    .line 891
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->isActive:Z

    :cond_11
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 2

    .line 744
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallList:Lcom/android/incallui/call/ExternalCallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/ExternalCallList;->onCallRemoved(Landroid/telecom/Call;)V

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/call/CallList;->onCallRemoved(Landroid/content/Context;Landroid/telecom/Call;)V

    .line 748
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    :goto_0
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .line 754
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$CanAddCallListener;->onCanAddCallChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeviceOrientationChange(I)V
    .locals 4

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceOrientationChange: orientation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallPresenter.onDeviceOrientationChange"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1795
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    if-eqz v0, :cond_0

    .line 1796
    invoke-virtual {v0, p1}, Lcom/android/incallui/call/CallList;->notifyCallsOfDeviceRotation(I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CallList is null."

    .line 1798
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1802
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .line 1803
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;->onDeviceOrientationChanged(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 969
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 970
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsShowErrorDialogOnActivityStart:Z

    .line 971
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/call/DialerCall;)V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/call/CallList;)V

    .line 977
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 981
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->recordLastEmergencyCallTime(Landroid/content/Context;)V

    .line 984
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/operatorutils/IOperatorManager;->showBlockSuppressionTips(Landroid/content/Context;)Z

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 989
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/call/DialerCall$LogState;->isIncoming:Z

    if-nez v0, :cond_3

    .line 990
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->isSecretCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 991
    invoke-static {v0, p1}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 992
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getConnectTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/dialer/postcall/PostCall;->onCallDisconnected(Landroid/content/Context;Ljava/lang/String;J)V

    .line 995
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 996
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mDisConnectCause:I

    .line 997
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mDisConnectNumber:Ljava/lang/String;

    .line 1000
    :cond_5
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDismissDialog()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.onDismissDialog"

    const-string v2, "Dialog dismissed"

    .line 1364
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1365
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 1366
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 1367
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    :cond_0
    return-void
.end method

.method public onForegroundCallChanged(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 1914
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColorManager:Lcom/android/incallui/ThemeColorManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/ThemeColorManager;->onForegroundCallChanged(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V

    .line 1915
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1916
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->onForegroundCallChanged(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    .line 900
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone switching state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "InCallPresenter.onIncomingCall"

    invoke-static {v4, v2, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 907
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .line 908
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v2, v1, v3, p1}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    .line 911
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz p1, :cond_1

    .line 913
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->onPrimaryCallStateChanged()V

    .line 915
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    const-string v0, "InCallPresenter.onInternationalCallOnWifi"

    .line 774
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1287
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onServiceBind()V
    .locals 1

    const/4 v0, 0x1

    .line 1723
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return-void
.end method

.method public onServiceUnbind()V
    .locals 3

    .line 1727
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 1728
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    .line 948
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 949
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "InCallPresenter.onSessionModificationStateChange"

    const-string v4, "state: %d"

    invoke-static {v0, v4, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-nez v2, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "proximitySensor is null"

    .line 951
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 955
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 954
    :cond_2
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/incallui/ProximitySensor;->setIsAttemptingVideoCall(Z)V

    .line 956
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_3

    .line 958
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->onPrimaryCallStateChanged()V

    .line 960
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->notifySessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onShrinkAnimationComplete()V
    .locals 1

    .line 1066
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/call/CallList;)V

    :cond_0
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 5

    .line 1195
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/call/CallList;)V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v0, :cond_1

    .line 1200
    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/Bindings;->get(Landroid/content/Context;)Lcom/android/incallui/bindings/InCallUiBindings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/incallui/bindings/InCallUiBindings;->getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1205
    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    xor-int/2addr v2, v1

    const-string v3, "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "InCallPresenter.onUiShowing"

    if-eqz p1, :cond_2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v2, "Sending sticky broadcast: "

    .line 1208
    invoke-static {v3, v2, v4}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v2, "Removing sticky broadcast: "

    .line 1211
    invoke-static {v3, v2, v4}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 1217
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    goto :goto_1

    .line 1219
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 1222
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .line 1223
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallUiListener;->onUiShowing(Z)V

    goto :goto_2

    .line 1226
    :cond_5
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz p1, :cond_6

    .line 1228
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->onPrimaryCallStateChanged()V

    :cond_6
    return-void
.end method

.method public onUpgradeToRtt(Lcom/android/incallui/call/DialerCall;I)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showDialogForRttRequest(Lcom/android/incallui/call/DialerCall;I)V

    :cond_0
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 920
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasReceivedVideoUpgradeRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.onUpgradeToVideo"

    const-string v2, "rejecting upgrade request due to existing incoming call"

    .line 922
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->declineVideoRequest()V

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen()V

    .line 930
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz p1, :cond_1

    .line 932
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->onPrimaryCallStateChanged()V

    :cond_1
    return-void
.end method

.method public onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public refreshUi()V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->onPrimaryCallStateChanged()V

    :cond_0
    return-void
.end method

.method public removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1929
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallPresenter.setActivity"

    const-string v2, "Setting a second activity before destroying the first."

    .line 1930
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1933
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    return-void

    .line 1927
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "registerActivity cannot be called with null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBoundAndWaitingForOutgoingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.setBoundAndWaitingForOutgoingCall"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    .line 1059
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColorManager:Lcom/android/incallui/ThemeColorManager;

    invoke-virtual {v0, p2}, Lcom/android/incallui/ThemeColorManager;->setPendingPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V

    if-eqz p1, :cond_0

    .line 1060
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object p2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, p2, :cond_0

    .line 1061
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1383
    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    return-void
.end method

.method public setFullScreen(ZZ)V
    .locals 4

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFullScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallPresenter.setFullScreen"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFullScreen overridden as dialpad is shown = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v1

    .line 1404
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "setFullScreen ignored as already in that state."

    .line 1405
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1408
    :cond_1
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 1409
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->notifyFullscreenModeChange(Z)V

    return-void
.end method

.method public setInCallAllowsOrientationChange(I)Z
    .locals 4

    .line 1814
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "InCallPresenter.setInCallAllowsOrientationChange"

    const-string v2, "InCallActivity is null. Can\'t set requested orientation."

    .line 1815
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->hasVideoCrbtVtCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->hasVideoCrbtVoLteCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1826
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 1827
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    return v3

    :cond_3
    :goto_0
    const-string p1, "Unlike orientation change for color ring"

    .line 1822
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public setManageConferenceActivity(Lcom/android/incallui/ManageConferenceActivity;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mManageConferenceActivity:Lcom/android/incallui/ManageConferenceActivity;

    return-void
.end method

.method public setUp(Landroid/content/Context;Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/ExternalCallList;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ExternalCallNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V
    .locals 3

    .line 393
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    const/4 v1, 0x0

    const-string v2, "InCallPresenter.setUp"

    if-eqz v0, :cond_1

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "New service connection replacing existing one."

    .line 394
    invoke-static {v2, p4, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object p3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    if-ne p2, p1, :cond_0

    return-void

    .line 396
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 401
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 403
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/BottomSheetHelper;->setUp(Landroid/content/Context;)V

    .line 404
    iput-object p6, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 406
    iput-object p4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 407
    iput-object p5, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallNotifier:Lcom/android/incallui/ExternalCallNotifier;

    .line 408
    invoke-virtual {p0, p4}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 409
    iget-object p4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object p4

    .line 410
    invoke-virtual {p4}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object p4

    iget-object p5, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 411
    invoke-interface {p4, p5}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->registerStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    .line 413
    iput-object p7, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 414
    invoke-virtual {p0, p7}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 416
    new-instance p4, Lcom/android/incallui/ThemeColorManager;

    new-instance p5, Lcom/android/incallui/InCallUIMaterialColorMapUtils;

    iget-object p6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-direct {p5, p6}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p4, p1, p5}, Lcom/android/incallui/ThemeColorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/MaterialColorMapUtils;)V

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter;->mThemeColorManager:Lcom/android/incallui/ThemeColorManager;

    .line 419
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    .line 420
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallList:Lcom/android/incallui/call/ExternalCallList;

    .line 421
    iget-object p2, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallNotifier:Lcom/android/incallui/ExternalCallNotifier;

    invoke-virtual {p3, p2}, Lcom/android/incallui/call/ExternalCallList;->addExternalCallListener(Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;)V

    .line 422
    iget-object p2, p0, Lcom/android/incallui/InCallPresenter;->mExternalCallListener:Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;

    invoke-virtual {p3, p2}, Lcom/android/incallui/call/ExternalCallList;->addExternalCallListener(Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;)V

    .line 424
    iget-object p2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    const p3, 0x1000000a

    const-string p4, "InCallPresenter"

    .line 425
    invoke-virtual {p2, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x1

    .line 428
    iput-boolean p2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 432
    iget-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {p2, p0}, Lcom/android/incallui/call/CallList;->addListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 435
    new-instance p2, Lcom/android/incallui/spam/SpamCallListListener;

    invoke-direct {p2, p1}, Lcom/android/incallui/spam/SpamCallListListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mSpamCallListListener:Lcom/android/incallui/call/CallList$Listener;

    .line 436
    iget-object p3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {p3, p2}, Lcom/android/incallui/call/CallList;->addListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 438
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->setUp()V

    .line 439
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object p2

    iget-object p3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/incallui/InCallCsRedialHandler;->setUp(Landroid/content/Context;)V

    .line 440
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/incallui/InCallUiStateNotifier;->setUp(Landroid/content/Context;)V

    .line 441
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/VideoPauseController;->setUp(Lcom/android/incallui/InCallPresenter;)V

    .line 442
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/incallui/InCallLowBatteryListener;->setUp(Landroid/content/Context;)V

    .line 444
    iput-object p8, p0, Lcom/android/incallui/InCallPresenter;->mFilteredQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    .line 445
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    .line 446
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 p3, 0x20

    .line 447
    invoke-virtual {p1, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 449
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 450
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/incallui/call/CallList;->addListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 451
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/incallui/InCallZoomController;->setUp(Landroid/content/Context;)V

    .line 452
    invoke-static {}, Lcom/android/incallui/OrientationModeHandler;->getInstance()Lcom/android/incallui/OrientationModeHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/OrientationModeHandler;->setUp()V

    .line 453
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Finished InCallPresenter.setUp"

    .line 455
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 1

    .line 1888
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1889
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 1891
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mManageConferenceActivity:Lcom/android/incallui/ManageConferenceActivity;

    if-eqz p1, :cond_1

    .line 1892
    invoke-virtual {p1}, Lcom/android/incallui/ManageConferenceActivity;->finish()V

    :cond_1
    return-void
.end method

.method public showInCall(ZZZ)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.showInCall"

    const-string v3, "Showing InCallActivity"

    .line 1714
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1715
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0}, Lcom/android/incallui/InCallActivity;->getIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "isDialpad"

    .line 1717
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1718
    iget-object p2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public tearDown()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.tearDown"

    const-string v3, "tearDown"

    .line 466
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->clearOnDisconnect()V

    .line 468
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 470
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    .line 471
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 472
    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 474
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 475
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->tearDown()V

    .line 476
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->tearDown()V

    .line 477
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallUiStateNotifier;->tearDown()V

    .line 478
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallLowBatteryListener;->tearDown()V

    .line 480
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 481
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->removeListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 483
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallZoomController;->tearDown()V

    .line 484
    invoke-static {}, Lcom/android/incallui/OrientationModeHandler;->getInstance()Lcom/android/incallui/OrientationModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/OrientationModeHandler;->tearDown()V

    .line 485
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    return-void
.end method

.method public unsetActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 506
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    const-string v2, "InCallPresenter.unsetActivity"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "No InCallActivity currently set, no need to unset."

    .line 507
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eq v0, p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Second instance of InCallActivity is trying to unregister when another instance is active. Ignoring."

    .line 512
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 518
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    const/4 p1, 0x1

    .line 520
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsShowErrorDialogOnActivityStart:Z

    return-void

    .line 504
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unregisterActivity cannot be called with null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method updateIsChangingConfigurations()V
    .locals 3

    const/4 v0, 0x0

    .line 1182
    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1183
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 1184
    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isChangingConfigurations()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1186
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIsChangingConfigurations = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "InCallPresenter.updateIsChangingConfigurations"

    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public wakeUpScreen()V
    .locals 1

    .line 1838
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->isScreenInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1839
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->acquireWakeLock()V

    .line 1840
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->releaseWakeLock()V

    :cond_0
    return-void
.end method
