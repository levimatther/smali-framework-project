.class public Lcom/android/incallui/call/DialerCall;
.super Ljava/lang/Object;
.source "DialerCall.java"

# interfaces
.implements Lcom/android/incallui/videotech/VideoTech$VideoTechListener;
.implements Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;
.implements Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;,
        Lcom/android/incallui/call/DialerCall$VideoTechManager;,
        Lcom/android/incallui/call/DialerCall$LogState;,
        Lcom/android/incallui/call/DialerCall$CameraDirection;,
        Lcom/android/incallui/call/DialerCall$State;,
        Lcom/android/incallui/call/DialerCall$CallHistoryStatus;
    }
.end annotation


# static fields
.field public static final CALL_HISTORY_STATUS_NOT_PRESENT:I = 0x2

.field public static final CALL_HISTORY_STATUS_PRESENT:I = 0x1

.field public static final CALL_HISTORY_STATUS_UNKNOWN:I = 0x0

.field public static final CAPABILITY_ADD_PARTICIPANT:I = 0x1000000

.field private static final CONFIG_EMERGENCY_CALLBACK_WINDOW_MILLIS:Ljava/lang/String; = "emergency_callback_window_millis"

.field private static final ID_PREFIX:Ljava/lang/String; = "DialerCall_"

.field public static final PROPERTY_CODEC_KNOWN:I = 0x4000000

.field private static sHiddenCounter:I

.field private static sIdCounter:I


# instance fields
.field private allUsedBundleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allUsedExtraBundleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private answerAndReleaseButtonDisplayedTimes:I

.field private callProviderIcon:Landroid/graphics/drawable/Drawable;

.field private callProviderLabel:Ljava/lang/String;

.field private callbackNumber:Ljava/lang/String;

.field private didShowCameraPermission:Z

.field private doNotShowDialogForHandoffToWifiFailure:Z

.field private filterBundleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private goHome:Ljava/lang/Boolean;

.field private hasShownWiFiToLteHandoverToast:Z

.field private isInGlobalSpamList:Z

.field private isInUserSpamList:Z

.field private isInUserWhiteList:Z

.field private isMergeInProcess:Z

.field private isRemotelyHeld:Z

.field private mCallHistoryStatus:I

.field private mCallSubject:Ljava/lang/String;

.field private mCameraDirection:I

.field private final mCannedTextResponsesLoadedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildNumber:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDetails:Landroid/telecom/Call$Details;

.field private final mDialerCallDelegate:Lcom/android/incallui/call/DialerCallDelegate;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mEnrichedCallCapabilities:Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

.field private mEnrichedCallSession:Lcom/android/dialer/enrichedcall/Session;

.field private mHandle:Landroid/net/Uri;

.field private mHasShownRttAnsweredFailToast:Z

.field private final mHiddenId:I

.field private final mId:Ljava/lang/String;

.field private mIsBlocked:Z

.field private mIsCallSubjectSupported:Z

.field private mIsEmergencyCall:Z

.field private mIsRttFirstActive:Z

.field private mIsSpam:Z

.field private mLastForwardedNumber:Ljava/lang/String;

.field private final mLatencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/call/DialerCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogState:Lcom/android/incallui/call/DialerCall$LogState;

.field private mPhoneAccount:Landroid/telecom/PhoneAccount;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mRttSupportRemote:Z

.field private mState:I

.field private final mTelecomCall:Landroid/telecom/Call;

.field private final mTelecomCallCallback:Landroid/telecom/Call$Callback;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeAddedMs:J

.field private final mVideoTechManager:Lcom/android/incallui/call/DialerCall$VideoTechManager;

.field private oldDetails:Landroid/telecom/Call$Details;

.field private oldPhoneAccountRttCapable:Z

.field private preState:I

.field private releasedByAnsweringSecondCall:Z

.field private rttTranscript:Lcom/android/dialer/rtt/RttTranscript;

.field private rttUiVisibile:Z

.field private secondCallWithoutAnswerAndReleasedButtonTimes:I

.field private final uniqueCallId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/call/DialerCallDelegate;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;Z)V
    .locals 8

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->uniqueCallId:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mChildCallIds:Ljava/util/List;

    .line 142
    new-instance v0, Lcom/android/incallui/call/DialerCall$LogState;

    invoke-direct {v0}, Lcom/android/incallui/call/DialerCall$LogState;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    .line 145
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mCannedTextResponsesLoadedListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/android/incallui/call/DialerCall;->mState:I

    .line 153
    iput v0, p0, Lcom/android/incallui/call/DialerCall;->preState:I

    .line 163
    iput v0, p0, Lcom/android/incallui/call/DialerCall;->mCallHistoryStatus:I

    const/4 v1, -0x1

    .line 174
    iput v1, p0, Lcom/android/incallui/call/DialerCall;->mCameraDirection:I

    .line 181
    iput v0, p0, Lcom/android/incallui/call/DialerCall;->answerAndReleaseButtonDisplayedTimes:I

    .line 182
    iput-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->releasedByAnsweringSecondCall:Z

    .line 185
    iput v0, p0, Lcom/android/incallui/call/DialerCall;->secondCallWithoutAnswerAndReleasedButtonTimes:I

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/call/DialerCall;->goHome:Ljava/lang/Boolean;

    .line 193
    iput-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->oldPhoneAccountRttCapable:Z

    const/4 v1, 0x1

    .line 236
    iput-boolean v1, p0, Lcom/android/incallui/call/DialerCall;->mRttSupportRemote:Z

    .line 240
    iput-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mHasShownRttAnsweredFailToast:Z

    .line 263
    new-instance v2, Lcom/android/incallui/call/DialerCall$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/call/DialerCall$1;-><init>(Lcom/android/incallui/call/DialerCall;)V

    iput-object v2, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    const-string v2, "android.telecom.extra.USE_ASSISTED_DIALING"

    const-string v3, "android.telecom.extra.ASSISTED_DIALING_EXTRAS"

    .line 792
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 793
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/call/DialerCall;->filterBundleList:Ljava/util/List;

    .line 798
    new-instance v4, Ljava/util/ArrayList;

    const-string v5, "selectPhoneAccountAccounts"

    filled-new-array {v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 799
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/incallui/call/DialerCall;->allUsedBundleList:Ljava/util/List;

    .line 805
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

    const-string v4, "android.telecom.extra.LAST_EMERGENCY_CALLBACK_TIME_MILLIS"

    const-string v5, "android.telecom.extra.CHILD_ADDRESS"

    const-string v6, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    const-string v7, "android.telecom.extra.CALL_SUBJECT"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/incallui/call/DialerCall;->allUsedExtraBundleList:Ljava/util/List;

    .line 462
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    .line 464
    iput-object p2, p0, Lcom/android/incallui/call/DialerCall;->mDialerCallDelegate:Lcom/android/incallui/call/DialerCallDelegate;

    .line 465
    iput-object p3, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    .line 466
    iput-object p4, p0, Lcom/android/incallui/call/DialerCall;->mLatencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    .line 467
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DialerCall_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/incallui/call/DialerCall;->sIdCounter:I

    add-int/lit8 p4, p2, 0x1

    sput p4, Lcom/android/incallui/call/DialerCall;->sIdCounter:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mId:Ljava/lang/String;

    .line 470
    new-instance p1, Lcom/android/incallui/call/DialerCall$VideoTechManager;

    invoke-direct {p1, p0}, Lcom/android/incallui/call/DialerCall$VideoTechManager;-><init>(Lcom/android/incallui/call/DialerCall;)V

    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mVideoTechManager:Lcom/android/incallui/call/DialerCall$VideoTechManager;

    .line 471
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 472
    invoke-virtual {p3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->oldDetails:Landroid/telecom/Call$Details;

    .line 474
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->updateFromTelecomCall()V

    .line 475
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->isHiddenNumber()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 476
    sget p1, Lcom/android/incallui/call/DialerCall;->sHiddenCounter:I

    add-int/2addr p1, v1

    sput p1, Lcom/android/incallui/call/DialerCall;->sHiddenCounter:I

    iput p1, p0, Lcom/android/incallui/call/DialerCall;->mHiddenId:I

    goto :goto_0

    .line 478
    :cond_0
    iput v0, p0, Lcom/android/incallui/call/DialerCall;->mHiddenId:I

    :goto_0
    if-eqz p5, :cond_1

    .line 482
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    iget-object p2, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, p2}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 485
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/incallui/call/DialerCall;->mTimeAddedMs:J

    .line 486
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->parseCallSpecificAppData()V

    .line 489
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 491
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->updateEnrichedCallSession()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->stateUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->update()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/incallui/call/DialerCall;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->mIsRttFirstActive:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/incallui/call/DialerCall;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/incallui/call/DialerCall;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->isMergeInProcess:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/android/incallui/call/DialerCall;->mRttSupportRemote:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/incallui/call/DialerCall;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->mRttSupportRemote:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->forceUpdateDetailByState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/android/incallui/call/DialerCall;->oldPhoneAccountRttCapable:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/incallui/call/DialerCall;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->oldPhoneAccountRttCapable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/call/DialerCall;)Landroid/telecom/Call;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/incallui/call/DialerCall;)Landroid/telecom/Call$Details;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/incallui/call/DialerCall;->oldDetails:Landroid/telecom/Call$Details;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)Landroid/telecom/Call$Details;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->oldDetails:Landroid/telecom/Call$Details;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/call/DialerCall;->skipUpdateDetails(Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(I)I
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/android/incallui/call/DialerCall;->translateState(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/incallui/call/DialerCall;->handleDetailsChanged(Landroid/telecom/Call$Details;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/call/DialerCall;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/incallui/call/DialerCall;->mCannedTextResponsesLoadedListeners:Ljava/util/List;

    return-object p0
.end method

.method private areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 754
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 756
    invoke-direct {p0, v3}, Lcom/android/incallui/call/DialerCall;->filterUnUsedBundles(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 759
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 760
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_3

    .line 761
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 763
    check-cast v4, Landroid/os/Bundle;

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/call/DialerCall;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 764
    :cond_3
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0
.end method

.method public static areSame(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static areSameNumber(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static clearRestrictedCount()V
    .locals 1

    const/4 v0, 0x0

    .line 972
    sput v0, Lcom/android/incallui/call/DialerCall;->sHiddenCounter:I

    return-void
.end method

.method private dispatchOnEnrichedCallSessionUpdate()V
    .locals 2

    .line 1768
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 1769
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onEnrichedCallSessionUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private filterUnUsedBundles(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 773
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->filterBundleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->allUsedBundleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    .line 785
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->allUsedExtraBundleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method private forceUpdateDetailByState()Z
    .locals 4

    .line 715
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    .line 716
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/call/DialerCall;->translateState(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "DialerCall.forceUpdateDetailByState"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public static getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSubscriptionNumber()Ljava/lang/String;
    .locals 1

    .line 1640
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getPhoneAccount()Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->oldDetails:Landroid/telecom/Call$Details;

    return-void
.end method

.method private isHiddenNumber()Z
    .locals 2

    .line 976
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parseCallSpecificAppData()V
    .locals 3

    .line 1345
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isExternalCall()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/callintent/CallIntentParser;->getCallSpecificAppData(Landroid/os/Bundle;)Lcom/android/dialer/callintent/CallSpecificAppData;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/call/DialerCall$LogState;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 1350
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    iget-object v0, v0, Lcom/android/incallui/call/DialerCall$LogState;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    if-nez v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    .line 1353
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->EXTERNAL_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 1354
    invoke-virtual {v1, v2}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v1

    .line 1355
    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/callintent/CallSpecificAppData;

    iput-object v1, v0, Lcom/android/incallui/call/DialerCall$LogState;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 1357
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1358
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    iget-object v1, v0, Lcom/android/incallui/call/DialerCall$LogState;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 1361
    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallSpecificAppData;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->INCOMING_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 1362
    invoke-virtual {v1, v2}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v1

    .line 1363
    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/callintent/CallSpecificAppData;

    iput-object v1, v0, Lcom/android/incallui/call/DialerCall$LogState;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    :cond_2
    return-void
.end method

.method private skipUpdateDetails(Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 731
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 735
    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 734
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/call/DialerCall;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/call/DialerCall;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "DialerCall.skipUpdateDetails"

    const-string v1, "force to update detais"

    .line 726
    invoke-static {p2, v1, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private stateUpdate()V
    .locals 10

    const-string v0, "stateUpdate"

    .line 661
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    .line 664
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mDetails:Landroid/telecom/Call$Details;

    const/16 v2, 0x400

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 668
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->updateFromTelecomCall()V

    .line 670
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v5

    .line 671
    iget-object v6, p0, Lcom/android/incallui/call/DialerCall;->mDetails:Landroid/telecom/Call$Details;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/Call$Details;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const-string v7, "DialerCall.stateUpdate"

    const/4 v8, 0x6

    if-ne v0, v5, :cond_3

    const/16 v9, 0xd

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_3

    :cond_2
    if-eqz v6, :cond_3

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "ignore unneccessnary connecting or dialing state"

    .line 674
    invoke-static {v7, v1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 677
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v6}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/call/DialerCall;->mDetails:Landroid/telecom/Call$Details;

    if-eqz v6, :cond_4

    .line 679
    invoke-virtual {v6, v2}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    const/4 v2, 0x3

    if-ne v5, v2, :cond_5

    if-eq v0, v8, :cond_6

    :cond_5
    if-ne v5, v8, :cond_7

    if-ne v0, v8, :cond_7

    .line 681
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldProperty = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",newProperty = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    if-nez v3, :cond_7

    .line 683
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    const v2, 0x7f1103fe

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_7
    if-eq v0, v5, :cond_a

    .line 688
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->oldDetails:Landroid/telecom/Call$Details;

    const/16 v0, 0xa

    if-ne v5, v0, :cond_9

    .line 690
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 692
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.dialer"

    .line 693
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.dialpad.finish"

    .line 694
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 697
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallDisconnect()V

    goto :goto_3

    .line 699
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 701
    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V

    .line 702
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 704
    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V

    goto :goto_5

    .line 706
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 707
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallUpdate()V

    goto :goto_4

    .line 711
    :cond_a
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private static translateState(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0xf

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_8
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/16 p0, 0xd

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private update()V
    .locals 10

    const-string v0, "Update"

    .line 609
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    .line 612
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mDetails:Landroid/telecom/Call$Details;

    const/16 v2, 0x400

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 616
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->updateFromTelecomCall()V

    .line 618
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v5

    .line 619
    iget-object v6, p0, Lcom/android/incallui/call/DialerCall;->mDetails:Landroid/telecom/Call$Details;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/Call$Details;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const-string v7, "DialerCall.update"

    const/4 v8, 0x6

    if-ne v0, v5, :cond_3

    const/16 v9, 0xd

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_3

    :cond_2
    if-eqz v6, :cond_3

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "ignore unneccessnary connecting or dialing state"

    .line 622
    invoke-static {v7, v1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 625
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v6}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/call/DialerCall;->mDetails:Landroid/telecom/Call$Details;

    if-eqz v6, :cond_4

    .line 627
    invoke-virtual {v6, v2}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    const/4 v2, 0x3

    if-ne v5, v2, :cond_5

    if-eq v0, v8, :cond_6

    :cond_5
    if-ne v5, v8, :cond_7

    if-ne v0, v8, :cond_7

    .line 629
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldProperty = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",newProperty = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    if-nez v3, :cond_7

    .line 631
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    const v2, 0x7f1103fe

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_7
    if-eq v0, v5, :cond_9

    const/16 v0, 0xa

    if-ne v5, v0, :cond_9

    .line 636
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 638
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.dialer"

    .line 639
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.dialpad.finish"

    .line 640
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 643
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallDisconnect()V

    goto :goto_3

    .line 645
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 647
    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V

    .line 648
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 650
    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V

    goto :goto_5

    .line 652
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 653
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallUpdate()V

    goto :goto_4

    .line 656
    :cond_a
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private updateEmergencyCallState()V
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1307
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mIsEmergencyCall:Z

    return-void
.end method

.method private updateEnrichedCallSession()V
    .locals 5

    .line 1732
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1735
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getEnrichedCallSession()Lcom/android/dialer/enrichedcall/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1739
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->dispatchOnEnrichedCallSessionUpdate()V

    return-void

    .line 1743
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 1746
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1747
    invoke-interface {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->createIncomingCallComposerFilter()Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;

    move-result-object v1

    goto :goto_0

    .line 1748
    :cond_2
    invoke-interface {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->createOutgoingCallComposerFilter()Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;

    move-result-object v1

    .line 1750
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getSession(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;)Lcom/android/dialer/enrichedcall/Session;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1755
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/enrichedcall/Session;->setUniqueDialerCallId(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->setEnrichedCallSession(Lcom/android/dialer/enrichedcall/Session;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1761
    invoke-interface {v0}, Lcom/android/dialer/enrichedcall/Session;->getSessionId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 1762
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "DialerCall.updateEnrichedCallSession"

    const-string v2, "setting session %d\'s dialer id to %s"

    .line 1758
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1764
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->dispatchOnEnrichedCallSessionUpdate()V

    return-void
.end method

.method private updateFromTelecomCall()V
    .locals 5

    .line 820
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DialerCall.updateFromTelecomCall"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mVideoTechManager:Lcom/android/incallui/call/DialerCall$VideoTechManager;

    iget-object v2, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v2}, Landroid/telecom/Call;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/call/DialerCall$VideoTechManager;->dispatchCallStateChanged(I)V

    .line 824
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->translateState(I)I

    move-result v0

    .line 825
    iget v2, p0, Lcom/android/incallui/call/DialerCall;->mState:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    .line 826
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->setState(I)V

    .line 827
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mChildCallIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 831
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 833
    iget-object v2, p0, Lcom/android/incallui/call/DialerCall;->mChildCallIds:Ljava/util/List;

    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mDialerCallDelegate:Lcom/android/incallui/call/DialerCallDelegate;

    iget-object v4, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    .line 835
    invoke-virtual {v4}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Call;

    invoke-interface {v3, v4}, Lcom/android/incallui/call/DialerCallDelegate;->getDialerCallFromTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    .line 836
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    .line 833
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    iget v2, v1, Lcom/android/incallui/call/DialerCall$LogState;->conferencedCalls:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/incallui/call/DialerCall$LogState;->conferencedCalls:I

    .line 843
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->updateFromCallExtras(Landroid/os/Bundle;)V

    .line 847
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mHandle:Landroid/net/Uri;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 849
    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mHandle:Landroid/net/Uri;

    .line 850
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->updateEmergencyCallState()V

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 857
    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_5

    .line 860
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    if-eqz v0, :cond_5

    const/16 v1, 0x40

    .line 863
    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mIsCallSubjectSupported:Z

    .line 864
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 865
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-le v0, v2, :cond_3

    .line 866
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/call/DialerCall;->callProviderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 868
    iput-object v1, p0, Lcom/android/incallui/call/DialerCall;->callProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 870
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    if-le v0, v2, :cond_4

    .line 871
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->callProviderLabel:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v0, ""

    .line 873
    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->callProviderLabel:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public addCannedTextResponsesLoadedListener(Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;)V
    .locals 1

    .line 553
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 554
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mCannedTextResponsesLoadedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/android/incallui/call/DialerCallListener;)V
    .locals 1

    .line 543
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 544
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public answer()V
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->answer(I)V

    return-void
.end method

.method public answer(I)V
    .locals 3

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DialerCall.answer"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1561
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0, p1}, Landroid/telecom/Call;->answer(I)V

    return-void
.end method

.method public answeringDisconnectsForegroundVideoCall()Z
    .locals 3

    .line 1336
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

    .line 1338
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected areCallExtrasCorrupted(Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    const-string v0, "android.telecom.extra.CHILD_ADDRESS"

    .line 895
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "DialerCall.areCallExtrasCorrupted"

    const-string v1, "callExtras is corrupted, ignoring exception"

    .line 898
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public blockCall()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    const/16 v0, 0xe

    .line 1007
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->setState(I)V

    return-void
.end method

.method public can(I)Z
    .locals 4

    .line 1141
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v0

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1147
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call;

    .line 1148
    invoke-virtual {v3}, Landroid/telecom/Call;->isRttActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1155
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_2

    return v2

    :cond_2
    and-int/lit8 p1, p1, -0x5

    :cond_3
    and-int/2addr v0, p1

    if-ne p1, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public canUpgradeToRttCall()Z
    .locals 2

    .line 1246
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isPhoneAccountRttCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1252
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1255
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1258
    :cond_3
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->hasActiveRttCall()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public didShowCameraPermission()Z
    .locals 1

    .line 1416
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->didShowCameraPermission:Z

    return v0
.end method

.method public disconnect()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerCall.disconnect"

    const-string v2, ""

    .line 1536
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 1537
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->setState(I)V

    .line 1538
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 1539
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallUpdate()V

    goto :goto_0

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->disconnect()V

    return-void
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getActualState()I
    .locals 1

    .line 1061
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->mState:I

    return v0
.end method

.method public getAnswerAndReleaseButtonDisplayedTimes()I
    .locals 1

    .line 1480
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->answerAndReleaseButtonDisplayedTimes:I

    return v0
.end method

.method public getCallHistoryStatus()I
    .locals 1

    .line 1408
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->mCallHistoryStatus:I

    return v0
.end method

.method public getCallProviderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->callProviderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCallProviderLabel()Ljava/lang/String;
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->callProviderLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCallSubject()Ljava/lang/String;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mCallSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    .line 1605
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v0

    .line 1606
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_4

    .line 1607
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1610
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1612
    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "android.telecom.extra.CALL_BACK_NUMBER"

    .line 1614
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    goto :goto_1

    .line 1608
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->getSubscriptionNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    .line 1619
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telecom/TelecomManager;->getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerCall.getCallbackNumber"

    const-string v3, "numbers are the same (and callback number is not being forced to show); not showing the callback number"

    .line 1621
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1625
    iput-object v2, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    .line 1627
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1628
    iput-object v2, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 1631
    iput-object v2, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    .line 1633
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->callbackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraDir()I
    .locals 1

    .line 592
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->mCameraDirection:I

    return v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1136
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getCannedTextResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getChildNumber()Ljava/lang/String;
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mChildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreationTimeMillis()J
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 2

    .line 1122
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->mState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    return-object v0

    .line 1123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getEnrichedCallCapabilities()Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mEnrichedCallCapabilities:Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    return-object v0
.end method

.method public getEnrichedCallSession()Lcom/android/dialer/enrichedcall/Session;
    .locals 1

    .line 1515
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mEnrichedCallSession:Lcom/android/dialer/enrichedcall/Session;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGoHome()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->goHome:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLastForwardedNumber()Ljava/lang/String;
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLastForwardedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLatencyReport()Lcom/android/incallui/latencyreport/LatencyReport;
    .locals 1

    .line 1476
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLatencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    return-object v0
.end method

.method public getLogState()Lcom/android/incallui/call/DialerCall$LogState;
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/TelecomCallUtil;->getNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 2

    .line 1212
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mDialerCallDelegate:Lcom/android/incallui/call/DialerCallDelegate;

    invoke-interface {v1, v0}, Lcom/android/incallui/call/DialerCallDelegate;->getDialerCallFromTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccount;
    .locals 2

    .line 1584
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    if-eqz v0, :cond_0

    return-object v0

    .line 1588
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1592
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    return-object v0
.end method

.method public getPreState()I
    .locals 1

    .line 1056
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->preState:I

    return v0
.end method

.method public getReleasedByAnsweringSecondCall()Z
    .locals 1

    .line 1488
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->releasedByAnsweringSecondCall:Z

    return v0
.end method

.method public getRttCall()Landroid/telecom/Call$RttCall;
    .locals 1

    .line 1228
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1231
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getRttCall()Landroid/telecom/Call$RttCall;

    move-result-object v0

    return-object v0
.end method

.method public getRttTranscript()Lcom/android/dialer/rtt/RttTranscript;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->rttTranscript:Lcom/android/dialer/rtt/RttTranscript;

    return-object v0
.end method

.method public getRttUIVisible()Z
    .locals 1

    .line 2043
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->rttUiVisibile:Z

    return v0
.end method

.method public getSecondCallWithoutAnswerAndReleasedButtonTimes()I
    .locals 1

    .line 1496
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->secondCallWithoutAnswerAndReleasedButtonTimes:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    return v0

    .line 1050
    :cond_0
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    return-object v0
.end method

.method public getTelecomCall()Landroid/telecom/Call;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    return-object v0
.end method

.method public getTimeAddedMs()J
    .locals 2

    .line 997
    iget-wide v0, p0, Lcom/android/incallui/call/DialerCall;->mTimeAddedMs:J

    return-wide v0
.end method

.method public getUniqueCallId()Ljava/lang/String;
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->uniqueCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .line 1204
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    return v0
.end method

.method public getVideoTech()Lcom/android/incallui/videotech/VideoTech;
    .locals 1

    .line 1597
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mVideoTechManager:Lcom/android/incallui/call/DialerCall$VideoTechManager;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall$VideoTechManager;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    return-object v0
.end method

.method public hasProperty(I)Z
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result p1

    return p1
.end method

.method public hasReceivedVideoUpgradeRequest()Z
    .locals 1

    .line 1286
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasReceivedVideoUpgradeRequest(I)Z

    move-result v0

    return v0
.end method

.method public hasSentRttUpgradeRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSentVideoUpgradeRequest()Z
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasSentVideoUpgradeRequest(I)Z

    move-result v0

    return v0
.end method

.method public hasShownRttAnsweredFailToast()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mHasShownRttAnsweredFailToast:Z

    return v0
.end method

.method public hasShownWiFiToLteHandoverToast()Z
    .locals 1

    .line 981
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->hasShownWiFiToLteHandoverToast:Z

    return v0
.end method

.method public hold()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerCall.hold"

    const-string v2, ""

    .line 1545
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1546
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->hold()V

    return-void
.end method

.method public increaseAnswerAndReleaseButtonDisplayedTimes()V
    .locals 1

    .line 1484
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->answerAndReleaseButtonDisplayedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/call/DialerCall;->answerAndReleaseButtonDisplayedTimes:I

    return-void
.end method

.method public increaseSecondCallWithoutAnswerAndReleasedButtonTimes()V
    .locals 1

    .line 1500
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->secondCallWithoutAnswerAndReleasedButtonTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/call/DialerCall;->secondCallWithoutAnswerAndReleasedButtonTimes:I

    return-void
.end method

.method public isActiveRttCall()Z
    .locals 1

    .line 1224
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->isRttActive()Z

    move-result v0

    return v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 1456
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mIsBlocked:Z

    return v0
.end method

.method public isCallSubjectSupported()Z
    .locals 1

    .line 1117
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mIsCallSubjectSupported:Z

    return v0
.end method

.method public isConferenceCall()Z
    .locals 1

    const/4 v0, 0x1

    .line 1189
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 1

    .line 1016
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mIsEmergencyCall:Z

    return v0
.end method

.method public isExternalCall()Z
    .locals 2

    .line 1325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v0, 0x40

    .line 1326
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInEmergencyCallbackWindow(J)Z
    .locals 4

    .line 1040
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    .line 1041
    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    .line 1042
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-string v3, "emergency_callback_window_millis"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInGlobalSpamList()Z
    .locals 1

    .line 1424
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->isInGlobalSpamList:Z

    return v0
.end method

.method public isInUserSpamList()Z
    .locals 1

    .line 1432
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->isInUserSpamList:Z

    return v0
.end method

.method public isInUserWhiteList()Z
    .locals 1

    .line 1440
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->isInUserWhiteList:Z

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    iget-boolean v0, v0, Lcom/android/incallui/call/DialerCall$LogState;->isIncoming:Z

    return v0
.end method

.method public isIncomingConfCall()Z
    .locals 4

    .line 1396
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1398
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "incomingConference"

    .line 1399
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1400
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIncomingConfCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "DialerCall"

    invoke-static {v3, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public isMergeInProcess()Z
    .locals 1

    .line 1468
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->isMergeInProcess:Z

    return v0
.end method

.method public isPhoneAccountRttCapable()Z
    .locals 3

    .line 1235
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getPhoneAccount()Landroid/telecom/PhoneAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x1000

    .line 1239
    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isPotentialEmergencyCallback()Z
    .locals 7

    const/4 v0, 0x4

    .line 1022
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.telecom.extra.LAST_EMERGENCY_CALLBACK_TIME_MILLIS"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    .line 1031
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1032
    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/call/DialerCall;->isInEmergencyCallbackWindow(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isRemotelyHeld()Z
    .locals 1

    .line 1464
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld:Z

    return v0
.end method

.method public isRttFirstActive()Z
    .locals 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRttFirstActive ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/call/DialerCall;->mIsRttFirstActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DialerCall"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mIsRttFirstActive:Z

    return v0
.end method

.method public isRttSupportRemote()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mRttSupportRemote:Z

    return v0
.end method

.method public isSpam()Z
    .locals 1

    .line 1448
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->mIsSpam:Z

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .line 1282
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->isTransmittingOrReceiving()Z

    move-result v0

    return v0
.end method

.method public notifyHandoverToWifiFailed()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerCall.notifyHandoverToWifiFailed"

    const-string v2, ""

    .line 570
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 572
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onHandoverToWifiFailure()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyInternationalCallOnWifi()V
    .locals 2

    const-string v0, "DialerCall.notifyInternationalCallOnWifi"

    .line 577
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 579
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onInternationalCallOnWifi()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyWiFiToLteHandover()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerCall.notifyWiFiToLteHandover"

    const-string v2, ""

    .line 563
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 565
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onWiFiToLteHandover()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 1

    .line 1671
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->callSessionEvent(I)V

    return-void
.end method

.method public onCameraDimensionsChanged(II)V
    .locals 1

    .line 1661
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->cameraDimensionsChanged(Lcom/android/incallui/call/DialerCall;II)V

    return-void
.end method

.method public onCapabilitiesUpdated()V
    .locals 2

    .line 1715
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    .line 1719
    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1721
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/DialerCall;->setEnrichedCallCapabilities(Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;)V

    .line 1722
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->update()V

    :cond_1
    return-void
.end method

.method public onEnrichedCallStateChanged()V
    .locals 0

    .line 1728
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->updateEnrichedCallSession()V

    return-void
.end method

.method public onPeerDimensionsChanged(II)V
    .locals 1

    .line 1666
    invoke-static {}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->peerDimensionsChanged(Lcom/android/incallui/call/DialerCall;II)V

    return-void
.end method

.method onRemovedFromCallList()V
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mVideoTechManager:Lcom/android/incallui/call/DialerCall$VideoTechManager;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall$VideoTechManager;->dispatchRemovedFromCallList()V

    return-void
.end method

.method public onSessionModificationStateChanged()V
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 1655
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallSessionModificationStateChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpgradedToVideo(Z)V
    .locals 2

    const-string v0, "DialerCall.onUpgradedToVideo"

    .line 1691
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1697
    :cond_0
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    .line 1699
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "toggling speakerphone not allowed when bluetooth supported."

    .line 1700
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1706
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    return-void

    .line 1710
    :cond_2
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public onVideoTechStateChanged()V
    .locals 0

    .line 1649
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->update()V

    return-void
.end method

.method public onVideoUpgradeRequestReceived()V
    .locals 5

    const-string v0, "DialerCall.onVideoUpgradeRequestReceived"

    .line 1676
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 1678
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 1679
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallUpgradeToVideo()V

    goto :goto_0

    .line 1682
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->update()V

    .line 1684
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1686
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 1685
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1531
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DialerCall.phoneAccountSelected"

    const-string v2, "accountHandle: %s, setDefault: %b"

    .line 1527
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1532
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerCall.reject"

    const-string v2, ""

    .line 1569
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1570
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    return-void
.end method

.method public removeCannedTextResponsesLoadedListener(Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;)V
    .locals 1

    .line 558
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 559
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mCannedTextResponsesLoadedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/android/incallui/call/DialerCallListener;)V
    .locals 1

    .line 548
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 549
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public respondToRttRequest(ZI)V
    .locals 5

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "respondToRttRequest  accept ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,rttRequestId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DailerCall"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_REJECTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1275
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    .line 1276
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 1271
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 1277
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/telecom/Call;->respondToRttRequest(IZ)V

    return-void
.end method

.method public sendRttUpgradeRequest()V
    .locals 1

    .line 1265
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->sendRttRequest()V

    return-void
.end method

.method public setBlockedStatus(Z)V
    .locals 0

    .line 1460
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->mIsBlocked:Z

    return-void
.end method

.method public setCallHistoryStatus(I)V
    .locals 0

    .line 1412
    iput p1, p0, Lcom/android/incallui/call/DialerCall;->mCallHistoryStatus:I

    return-void
.end method

.method public setCameraDir(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 600
    iput p1, p0, Lcom/android/incallui/call/DialerCall;->mCameraDirection:I

    goto :goto_1

    .line 598
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/incallui/call/DialerCall;->mCameraDirection:I

    :goto_1
    return-void
.end method

.method public setDidShowCameraPermission(Z)V
    .locals 0

    .line 1420
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->didShowCameraPermission:Z

    return-void
.end method

.method public setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 1

    .line 1130
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1131
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    iput-object p1, v0, Lcom/android/incallui/call/DialerCall$LogState;->disconnectCause:Landroid/telecom/DisconnectCause;

    return-void
.end method

.method public setDoNotShowDialogForHandoffToWifiFailure(Z)V
    .locals 0

    .line 993
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->doNotShowDialogForHandoffToWifiFailure:Z

    return-void
.end method

.method public setEnrichedCallCapabilities(Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;)V
    .locals 0

    .line 1510
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mEnrichedCallCapabilities:Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    return-void
.end method

.method public setEnrichedCallSession(Lcom/android/dialer/enrichedcall/Session;)V
    .locals 0

    .line 1519
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mEnrichedCallSession:Lcom/android/dialer/enrichedcall/Session;

    return-void
.end method

.method public setGoHome(Z)V
    .locals 0

    .line 251
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->goHome:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasShownRttAnsweredFailToast(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->mHasShownRttAnsweredFailToast:Z

    return-void
.end method

.method public setHasShownWiFiToLteHandoverToast()V
    .locals 1

    const/4 v0, 0x1

    .line 985
    iput-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->hasShownWiFiToLteHandoverToast:Z

    return-void
.end method

.method public setIsInGlobalSpamList(Z)V
    .locals 0

    .line 1428
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->isInGlobalSpamList:Z

    return-void
.end method

.method public setIsInUserSpamList(Z)V
    .locals 0

    .line 1436
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->isInUserSpamList:Z

    return-void
.end method

.method public setIsInUserWhiteList(Z)V
    .locals 0

    .line 1444
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->isInUserWhiteList:Z

    return-void
.end method

.method public setReleasedByAnsweringSecondCall(Z)V
    .locals 0

    .line 1492
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->releasedByAnsweringSecondCall:Z

    return-void
.end method

.method public setRttFirstActive(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->mIsRttFirstActive:Z

    return-void
.end method

.method public setRttTranscript(Lcom/android/dialer/rtt/RttTranscript;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->rttTranscript:Lcom/android/dialer/rtt/RttTranscript;

    return-void
.end method

.method public setRttUIVisible(Z)V
    .locals 0

    .line 2039
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->rttUiVisibile:Z

    return-void
.end method

.method public setSpam(Z)V
    .locals 0

    .line 1452
    iput-boolean p1, p0, Lcom/android/incallui/call/DialerCall;->mIsSpam:Z

    return-void
.end method

.method public setState(I)V
    .locals 4

    .line 1065
    iget v0, p0, Lcom/android/incallui/call/DialerCall;->mState:I

    iput v0, p0, Lcom/android/incallui/call/DialerCall;->preState:I

    .line 1066
    iput p1, p0, Lcom/android/incallui/call/DialerCall;->mState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1068
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/incallui/call/DialerCall$LogState;->isIncoming:Z

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 1070
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    .line 1071
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getConnectTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getConnectTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    :goto_0
    iput-wide v2, p1, Lcom/android/incallui/call/DialerCall$LogState;->duration:J

    :cond_2
    :goto_1
    return-void
.end method

.method public showWifiHandoverAlertAsToast()Z
    .locals 1

    .line 989
    iget-boolean v0, p0, Lcom/android/incallui/call/DialerCall;->doNotShowDialogForHandoffToWifiFailure:Z

    return v0
.end method

.method public splitFromConference()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerCall.splitFromConference"

    const-string v2, ""

    .line 1555
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1556
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->splitFromConference()V

    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .line 1392
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1369
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1375
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1380
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/call/DialerCall$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    .line 1381
    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    .line 1382
    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/Call$Details;->propertiesToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mChildCallIds:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 1384
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getParentId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    .line 1385
    invoke-virtual {v3}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    .line 1386
    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 1387
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 1388
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getCameraDir()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "[%s, %s, %s, %s, children:%s, parent:%s, conferenceable:%s, videoState:%s, mSessionModificationState:%d, CameraDir:%s]"

    .line 1375
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unhold()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerCall.unhold"

    const-string v2, ""

    .line 1550
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1551
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .line 1523
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCall:Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    return-void
.end method

.method protected updateFromCallExtras(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/incallui/call/DialerCall;->areCallExtrasCorrupted(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "android.telecom.extra.CHILD_ADDRESS"

    .line 913
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mChildNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 916
    iput-object v0, p0, Lcom/android/incallui/call/DialerCall;->mChildNumber:Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 918
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallChildNumberChange()V

    goto :goto_0

    :cond_1
    const-string v0, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    .line 926
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 928
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 932
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 933
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLastForwardedNumber:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 937
    iput-object v1, p0, Lcom/android/incallui/call/DialerCall;->mLastForwardedNumber:Ljava/lang/String;

    .line 938
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCallListener;

    .line 939
    invoke-interface {v1}, Lcom/android/incallui/call/DialerCallListener;->onDialerCallLastForwardedNumberChange()V

    goto :goto_1

    :cond_3
    const-string v0, "android.telecom.extra.CALL_SUBJECT"

    .line 947
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 948
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 949
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mCallSubject:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 950
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall;->mCallSubject:Ljava/lang/String;

    :cond_4
    :goto_2
    return-void
.end method

.method public updateNameIfRestricted(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    .line 965
    invoke-direct {p0}, Lcom/android/incallui/call/DialerCall;->isHiddenNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/call/DialerCall;->mHiddenId:I

    if-eqz v0, :cond_0

    sget v1, Lcom/android/incallui/call/DialerCall;->sHiddenCounter:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 966
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall;->mContext:Landroid/content/Context;

    const v3, 0x7f1104c0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public wasParentCall()Z
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall;->mLogState:Lcom/android/incallui/call/DialerCall$LogState;

    iget v0, v0, Lcom/android/incallui/call/DialerCall$LogState;->conferencedCalls:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
