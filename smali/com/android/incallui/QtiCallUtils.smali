.class public Lcom/android/incallui/QtiCallUtils;
.super Ljava/lang/Object;
.source "QtiCallUtils.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "QtiCallUtils"

.field private static final MAX_IMS_PHONE_COUNT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static callTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "VT"

    return-object p0

    :cond_1
    const-string p0, "VT_RX"

    return-object p0

    :cond_2
    const-string p0, "VT_TX"

    return-object p0
.end method

.method public static displayToast(Landroid/content/Context;I)V
    .locals 1

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static displayToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 533
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static getAddParticipantsIntent()Landroid/content/Intent;
    .locals 3

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.confuridialer.ACTION_LAUNCH_CONF_URI_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "add_participant"

    const/4 v2, 0x1

    .line 385
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static getAddParticipantsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.confdialer.ACTION_LAUNCH_CONF_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "add_participant"

    const/4 v2, 0x1

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "current_participant_list"

    .line 396
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getConferenceDialerIntent()Landroid/content/Intent;
    .locals 2

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.confuridialer.ACTION_LAUNCH_CONF_URI_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getConferenceDialerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.confdialer.ACTION_LAUNCH_CONF_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "confernece_number_key"

    .line 375
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 576
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 580
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getIncomingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public static getLabelForIncomingVideoCall(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .line 557
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const v1, 0x7f110168

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 562
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getRequestedVideoState()I

    move-result v2

    .line 564
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->isVideoRxOnly(Lcom/android/incallui/call/DialerCall;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 567
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->isVideoTxOnly(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    goto :goto_0

    .line 571
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const v0, 0x7f1102bd

    .line 569
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const v0, 0x7f1102bc

    .line 566
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLabelForIncomingWifiVideoCall(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .line 537
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const v1, 0x7f11016b

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 543
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getRequestedVideoState()I

    move-result v2

    .line 545
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->isVideoRxOnly(Lcom/android/incallui/call/DialerCall;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 548
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->isVideoTxOnly(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const v0, 0x7f1102bf

    .line 550
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const v0, 0x7f1102be

    .line 547
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasConferenceCall()Z
    .locals 2

    .line 619
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 622
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v1

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public static hasReceiveVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x100

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x800

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasTransmitVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x200

    .line 500
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    .line 501
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasVideoCrbtVoLteCall(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 597
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 598
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v1, "config_enable_video_crbt"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 604
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->isVideoRxOnly(Lcom/android/incallui/call/DialerCall;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static hasVideoCrbtVoLteCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 586
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 587
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v1, "config_enable_video_crbt"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 591
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    .line 592
    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->isVideoRxOnly(Lcom/android/incallui/call/DialerCall;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static hasVideoCrbtVtCall(Landroid/content/Context;)Z
    .locals 4

    .line 610
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p0

    .line 611
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 612
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v3, "config_enable_video_crbt"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 614
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->isVideoBidirectional(Lcom/android/incallui/call/DialerCall;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static hasVoiceCapabilities(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/high16 v0, 0x400000

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasVoiceOrVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 518
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasVoiceCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasTransmitVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasReceiveVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isConferenceDialerEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 172
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "phone"

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    move v0, v1

    .line 179
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 180
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 181
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "config_enable_conference_dialer"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isConferenceUriDialerEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 150
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "phone"

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    move v0, v1

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/android/dialer/util/EmergencyNumberUtil;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isImsConnected(Landroid/content/Context;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isVideoBidirectional(Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result p0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoRxOnly(Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result p0

    .line 479
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isVideoTxOnly(I)Z
    .locals 1

    .line 470
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoTxOnly(Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result p0

    .line 466
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->isVideoTxOnly(I)Z

    move-result p0

    return p0
.end method

.method public static openConferenceUriDialerOr4gConferenceDialer(Landroid/content/Context;)V
    .locals 9

    .line 283
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "phone"

    .line 289
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 290
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v1, v0, :cond_3

    .line 292
    invoke-static {p0, v1}, Lcom/android/incallui/QtiCallUtils;->isImsConnected(Landroid/content/Context;I)Z

    move-result v5

    .line 293
    sget-object v6, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " isImsConnected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 296
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 297
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v5

    const-string v6, "config_enable_conference_dialer"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_3
    sget-object v0, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registeredImsPhoneCount = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ge v2, v0, :cond_4

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    .line 311
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->getConferenceDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    if-le v2, v4, :cond_5

    .line 315
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->openUserSelected4GDialer(Landroid/content/Context;)V

    goto :goto_2

    .line 319
    :cond_5
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getConferenceDialerIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public static openUserSelected4GDialer(Landroid/content/Context;)V
    .locals 4

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f110158

    .line 331
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110155

    .line 332
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 333
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110428

    .line 334
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 335
    new-instance v2, Lcom/android/incallui/QtiCallUtils$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/QtiCallUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    new-instance p0, Lcom/android/incallui/QtiCallUtils$2;

    invoke-direct {p0}, Lcom/android/incallui/QtiCallUtils$2;-><init>()V

    const v1, 0x7f110427

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static show4gConferenceDialerMenuOption(Landroid/content/Context;)Z
    .locals 8

    .line 221
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->hasConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "phone"

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 227
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 231
    invoke-static {p0, v2}, Lcom/android/incallui/QtiCallUtils;->isImsConnected(Landroid/content/Context;I)Z

    move-result v4

    .line 232
    sget-object v5, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isImsConnected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 234
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v5

    const-string v7, "config_enable_conference_dialer"

    invoke-virtual {v5, v7}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v4, :cond_2

    return v6

    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_4
    sget-object p0, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisteredSpecificImsPhoneCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    :cond_5
    :goto_2
    return v1
.end method

.method public static showAddTo4gConferenceCallOption(Landroid/content/Context;)Z
    .locals 7

    .line 260
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->hasConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "phone"

    .line 264
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 265
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 267
    invoke-static {p0, v2}, Lcom/android/incallui/QtiCallUtils;->isImsConnected(Landroid/content/Context;I)Z

    move-result v3

    .line 268
    sget-object v4, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isImsConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 269
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 270
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "config_enable_conference_dialer"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static toScreenOrientation(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static useExt(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "Context is null..."

    .line 433
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/incallui/BottomSheetHelper;->getPhoneId()I

    const/4 p0, 0x0

    return p0
.end method
