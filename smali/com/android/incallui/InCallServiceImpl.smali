.class public Lcom/android/incallui/InCallServiceImpl;
.super Landroid/telecom/InCallService;
.source "InCallServiceImpl.java"


# instance fields
.field private returnToCallController:Lcom/android/incallui/ReturnToCallController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    return-void
.end method

.method private tearDown()V
    .locals 1

    const-string v0, "tearDown"

    .line 102
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/TelecomAdapter;->clearInCallService()V

    .line 105
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->tearDown()V

    .line 106
    iget-object v0, p0, Lcom/android/incallui/InCallServiceImpl;->returnToCallController:Lcom/android/incallui/ReturnToCallController;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/android/incallui/ReturnToCallController;->tearDown()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/android/incallui/InCallServiceImpl;->returnToCallController:Lcom/android/incallui/ReturnToCallController;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 10

    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/InCallServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    .line 70
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/call/ExternalCallList;

    invoke-direct {v3}, Lcom/android/incallui/call/ExternalCallList;-><init>()V

    new-instance v4, Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {v4, v1, v6}, Lcom/android/incallui/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    new-instance v5, Lcom/android/incallui/ExternalCallNotifier;

    invoke-direct {v5, v1, v6}, Lcom/android/incallui/ExternalCallNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    new-instance v7, Lcom/android/incallui/ProximitySensor;

    .line 79
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v9, v1}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;)V

    invoke-direct {v7, v1, v8, v9}, Lcom/android/incallui/ProximitySensor;-><init>(Landroid/content/Context;Lcom/android/incallui/audiomode/AudioModeProvider;Lcom/android/incallui/AccelerometerListener;)V

    new-instance v8, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {v8, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual/range {v0 .. v8}, Lcom/android/incallui/InCallPresenter;->setUp(Landroid/content/Context;Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/ExternalCallList;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ExternalCallNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V

    .line 81
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onServiceBind()V

    .line 82
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->maybeStartRevealAnimation(Landroid/content/Intent;)V

    .line 83
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/call/TelecomAdapter;->setInCallService(Landroid/telecom/InCallService;)V

    .line 84
    invoke-static {p0}, Lcom/android/incallui/ReturnToCallController;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/incallui/ReturnToCallController;

    invoke-direct {v0, p0}, Lcom/android/incallui/ReturnToCallController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallServiceImpl;->returnToCallController:Lcom/android/incallui/ReturnToCallController;

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onBringToForeground(Z)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onBringToForeground(Z)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCallAdded(Landroid/telecom/Call;)V

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/audiomode/AudioModeProvider;->onAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCallRemoved(Landroid/telecom/Call;)V

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCanAddCallChanged(Z)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onUnbind(Landroid/content/Intent;)Z

    .line 95
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->onServiceUnbind()V

    .line 96
    invoke-direct {p0}, Lcom/android/incallui/InCallServiceImpl;->tearDown()V

    const/4 p1, 0x0

    return p1
.end method
