.class public Lcom/android/incallui/CallButtonPresenter;
.super Ljava/lang/Object;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/InCallPresenter$CanAddCallListener;
.implements Lcom/android/incallui/InCallCameraManager$Listener;
.implements Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;


# static fields
.field private static final KEY_AUTOMATICALLY_MUTED:Ljava/lang/String; = "incall_key_automatically_muted"

.field private static final KEY_PREVIOUS_MUTE_STATE:Ljava/lang/String; = "incall_key_previous_mute_state"

.field private static final MAX_PARTICIPANTS_LIMIT:I = 0x6


# instance fields
.field private isInCallButtonUiReady:Z

.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/incallui/call/DialerCall;

.field private final mContext:Landroid/content/Context;

.field private mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

.field private mPreviousMuteState:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUIContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    .line 86
    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mUIContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    if-eqz v0, :cond_0

    .line 670
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->getInCallButtonUiFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasVideoCallCapabilities(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 572
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/incallui/videotech/VideoTech;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private isDowngradeToAudioSupported(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    const/high16 v0, 0x400000

    .line 585
    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private updateButtonsState(Lcom/android/incallui/call/DialerCall;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CallButtonPresenter.updateButtonsState"

    const-string v5, ""

    .line 512
    invoke-static {v4, v5, v3}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v3

    const/16 v4, 0x8

    .line 519
    invoke-virtual {v1, v4}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v5, :cond_0

    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v8

    if-nez v8, :cond_0

    .line 523
    invoke-virtual {v1, v6}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 524
    invoke-virtual {v1, v7}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v2

    .line 525
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v9

    if-ne v9, v4, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v2

    .line 528
    :goto_1
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/call/TelecomAdapter;->canAddCall()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v10

    if-nez v10, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    move v10, v2

    :goto_2
    const/4 v11, 0x4

    .line 530
    invoke-virtual {v1, v11}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v12

    if-nez v12, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    move v12, v2

    .line 532
    :goto_3
    iget-object v13, v0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v13

    if-nez v3, :cond_4

    .line 533
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallButtonPresenter;->hasVideoCallCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v13, :cond_4

    move v14, v7

    goto :goto_4

    :cond_4
    move v14, v2

    :goto_4
    if-eqz v3, :cond_5

    .line 534
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallButtonPresenter;->isDowngradeToAudioSupported(Lcom/android/incallui/call/DialerCall;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-nez v13, :cond_5

    move v13, v7

    goto :goto_5

    :cond_5
    move v13, v2

    :goto_5
    const/16 v15, 0x40

    .line 535
    invoke-virtual {v1, v15}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v15

    if-eqz v3, :cond_6

    .line 537
    iget-object v6, v0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    .line 538
    invoke-static {v6}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    goto :goto_6

    :cond_6
    move v6, v2

    :goto_6
    const/4 v4, 0x6

    if-eqz v3, :cond_7

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v11

    if-eq v11, v4, :cond_7

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v11

    const/16 v4, 0xd

    if-eq v11, v4, :cond_7

    move v4, v7

    goto :goto_7

    :cond_7
    move v4, v2

    .line 544
    :goto_7
    iget-object v11, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v11, v2, v7}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 545
    iget-object v11, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/4 v2, 0x4

    invoke-interface {v11, v2, v5}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 546
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/4 v5, 0x3

    invoke-interface {v2, v5, v8}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 547
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v2, v9}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->setHold(Z)V

    .line 548
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v2, v7, v15}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 549
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/16 v5, 0x8

    invoke-interface {v2, v5, v10}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 550
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v2, v5, v10}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->enableButton(IZ)V

    .line 551
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/4 v5, 0x5

    invoke-interface {v2, v5, v14}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 552
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/4 v5, 0x7

    invoke-interface {v2, v5, v13}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 553
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    .line 554
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/VideoCallPresenter;->isTransmissionEnabled(Lcom/android/incallui/call/DialerCall;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    .line 555
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/BottomSheetHelper;->isHideMeSelected()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    .line 556
    invoke-static {v5, v1}, Lcom/android/incallui/QtiCallUtils;->hasVideoCrbtVoLteCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v7

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    const/4 v8, 0x6

    .line 553
    invoke-interface {v2, v8, v5}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 557
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/16 v5, 0xa

    invoke-interface {v2, v5, v4}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    if-eqz v3, :cond_b

    .line 559
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/videotech/VideoTech;->isTransmitting()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v6, :cond_9

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    move v3, v7

    :goto_a
    invoke-interface {v2, v3}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->setVideoPaused(Z)V

    .line 561
    :cond_b
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v7}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 562
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/16 v3, 0x9

    invoke-interface {v2, v3, v12}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showButton(IZ)V

    .line 564
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v2}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->updateButtonStates()V

    .line 565
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallButtonPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/BottomSheetHelper;->shallShowMoreButton(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 566
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/BottomSheetHelper;->updateMap()V

    .line 568
    :cond_c
    iget-object v2, v0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v2, v1}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->updataMenu(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method private updateCamera(Z)V
    .locals 2

    .line 470
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 471
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    .line 473
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->isUsingFrontFacingCamera()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 479
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1, v0}, Lcom/android/incallui/call/DialerCall;->setCameraDir(I)V

    .line 480
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/videotech/VideoTech;->setCamera(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "CallButtonPresenter"

    const-string/jumbo v4, "updating call UI for call: "

    .line 485
    invoke-static {v3, v4, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 492
    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->updateInCallButtonUiColors()V

    .line 496
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 497
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {p1, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->setEnabled(Z)V

    if-nez p2, :cond_3

    return-void

    .line 503
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method


# virtual methods
.method public addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V
    .locals 2

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 347
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    .line 351
    sget-object v0, Lcom/android/incallui/CallButtonPresenter$1;->$SwitchMap$com$android$incallui$incall$protocol$InCallButtonUiDelegate$CallWay:[I

    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mUIContext:Landroid/content/Context;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mUIContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 356
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.contacts"

    const-string v1, "com.android.contacts.activities.PeopleActivity"

    .line 357
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mUIContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/TelecomAdapter;->addCall()V

    :goto_0
    return-void
.end method

.method public changeToVideoClicked()V
    .locals 5

    const-string v0, "CallButtonPresenter.changeToVideoClicked"

    .line 378
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 382
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 383
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 380
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 385
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallLowBatteryListener;->onChangeToVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->upgradeToVideo()V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .line 191
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    return-object v0
.end method

.method public holdClicked(Z)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "CallButtonPresenter"

    if-eqz p1, :cond_1

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putting the call on hold: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->hold()V

    goto :goto_0

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing the call from hold: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->unhold()V

    :goto_0
    return-void
.end method

.method public mergeClicked()V
    .locals 7

    .line 287
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/operatorutils/IOperatorManager;->toastWhenConferenceIsFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 296
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "config_conference_call_show_participant_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 302
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 305
    :cond_2
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 306
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 310
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of participantsCount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "persist.sys.recipient.limit"

    .line 315
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, ""

    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recipientLimitVZW:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "CallButtonPresenter"

    invoke-static {v6, v4, v5}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v3, :cond_4

    move v0, v3

    :cond_4
    if-lt v1, v0, :cond_5

    .line 328
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104a4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 335
    :cond_5
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/operatorutils/IOperatorManager;->mergeRttCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 336
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/TelecomAdapter;->merge(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public muteClicked(ZZ)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 239
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CallButtonPresenter"

    const-string/jumbo v2, "turning on mute: %s, clicked by user: %s"

    .line 238
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 240
    iget-object p2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz p2, :cond_1

    .line 241
    iget-object p2, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_OFF_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 246
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 247
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v2

    .line 242
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 249
    :cond_1
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/incallui/call/TelecomAdapter;->mute(Z)V

    return-void
.end method

.method public onActiveCameraSelectionChanged(Z)V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 660
    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->setCameraSwitched(Z)V

    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->setAudioState(Landroid/telecom/CallAudioState;)V

    :cond_0
    return-void
.end method

.method public onCameraPermissionGranted()V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz p1, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 0

    .line 165
    iget-object p2, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onEndCallClicked()V
    .locals 3

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallButtonPresenter.onEndCallClicked"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    :cond_0
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInCallButtonUiReady(Lcom/android/incallui/incall/protocol/InCallButtonUi;)V
    .locals 3

    .line 95
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->isInCallButtonUiReady:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 96
    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    .line 97
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/audiomode/AudioModeProvider;->addListener(Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;)V

    .line 100
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 104
    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 105
    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallCameraManager;->addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V

    .line 109
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object p1

    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V

    .line 110
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->isInCallButtonUiReady:Z

    return-void
.end method

.method public onInCallButtonUiUnready()V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->isInCallButtonUiReady:Z

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    .line 117
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 118
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/audiomode/AudioModeProvider;->removeListener(Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;)V

    .line 119
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 120
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 121
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 122
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallCameraManager;->removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V

    .line 123
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->isInCallButtonUiReady:Z

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 172
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 643
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    const-string v1, "incall_key_automatically_muted"

    .line 644
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 645
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    const-string v1, "incall_key_previous_mute_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 637
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    const-string v1, "incall_key_automatically_muted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    const-string v1, "incall_key_previous_mute_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSendStaticImageStateChanged(Z)V
    .locals 0

    .line 600
    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez p1, :cond_0

    return-void

    .line 604
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 617
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/call/DialerCall;)V

    :cond_1
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 2

    .line 129
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    .line 130
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 132
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 138
    sget-object p3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz p1, :cond_4

    .line 139
    iget-object p3, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    goto :goto_0

    .line 143
    :cond_1
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    .line 147
    :cond_2
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 151
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, p2, p1}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public pauseVideoClicked(Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v1, "pause"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "unpause"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CallButtonPresenter.pauseVideoClicked"

    const-string v3, "%s"

    .line 441
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_OFF_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 452
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 453
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v4

    .line 448
    invoke-interface {v0, v1, v3, v4, v5}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    if-eqz p1, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/videotech/VideoTech;->setCamera(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->stopTransmission()V

    goto :goto_2

    .line 460
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->isUsingFrontFacingCamera()Z

    move-result v0

    .line 459
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateCamera(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->resumeTransmission()V

    .line 465
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->setVideoPaused(Z)V

    .line 466
    iget-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    const/16 v0, 0xa

    invoke-interface {p1, v0, v2}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->enableButton(IZ)V

    return-void
.end method

.method public refreshMuteState()V
    .locals 3

    .line 625
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 626
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-eq v0, v2, :cond_1

    .line 627
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(ZZ)V

    .line 632
    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    return-void
.end method

.method public setAudioRoute(I)V
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending new audio route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p1}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallButtonPresenter.setAudioRoute"

    .line 196
    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public showAudioRouteSelector()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->showAudioRouteSelector()V

    return-void
.end method

.method public showDialpadClicked(Z)V
    .locals 3

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show dialpad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallButtonPresenter"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    return-void
.end method

.method public stopRttCall()V
    .locals 2

    const-string v0, "CallButtonPresenter.stopRttCall"

    const-string v1, "stop RttCall"

    .line 680
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->stopRtt()V

    return-void
.end method

.method public swapClicked()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swapping the call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallButtonPresenter"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/TelecomAdapter;->swap(Ljava/lang/String;)V

    return-void
.end method

.method public switchCameraClicked(Z)V
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateCamera(Z)V

    return-void
.end method

.method public switchRttCall()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CallButtonPresenter.switchRttCall"

    .line 281
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->sendRttUpgradeRequest()V

    return-void
.end method

.method public toggleCameraClicked()V
    .locals 5

    .line 416
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallButtonPresenter.toggleCameraClicked"

    const-string v2, ""

    .line 420
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_1

    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_SWAP_CAMERA:Lcom/android/dialer/logging/DialerImpression$Type;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 427
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 428
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 425
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 430
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->isUsingFrontFacingCamera()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->switchCameraClicked(Z)V

    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 7

    .line 206
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getCurrentAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallButtonPresenter"

    const-string v3, "toggling speakerphone not allowed when bluetooth supported."

    .line 209
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mInCallButtonUi:Lcom/android/incallui/incall/protocol/InCallButtonUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUi;->setAudioState(Landroid/telecom/CallAudioState;)V

    return-void

    :cond_0
    const-string v1, "-1"

    .line 217
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    const/4 v2, 0x5

    .line 219
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v3, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v4, :cond_1

    .line 222
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v5, :cond_2

    .line 223
    invoke-virtual {v5}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v5

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 220
    :goto_1
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    goto :goto_4

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v3, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v4, :cond_4

    .line 229
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v5, :cond_5

    .line 230
    invoke-virtual {v5}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v5

    goto :goto_3

    :cond_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 227
    :goto_3
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 233
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioRoute(I)V

    return-void
.end method
