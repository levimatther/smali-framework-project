.class public Lcom/android/tct/common/RttManager;
.super Ljava/lang/Object;
.source "RttManager.java"


# static fields
.field private static final DIAL_TONE_STREAM_TYPE:I = 0x0

.field public static final FEATURES_RTT_VOICE:I = 0x20

.field private static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final RTT_CALL_OFF:I = 0x0

.field public static final RTT_CALL_ON:I = 0x1

.field public static final RTT_OP_MODE_ALWAYS_VISIBLE_MANUAL:I = 0x0

.field public static final RTT_OP_MODE_VISIBLE_DURING_CALLS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RttManager"

.field private static final TONE_RELATIVE_VOLUME:I = 0x50

.field private static mContext:Landroid/content/Context;

.field private static sRttInstance:Lcom/android/tct/common/RttManager;


# instance fields
.field private mPrimaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/tct/common/RttManager;
    .locals 2

    const-class v0, Lcom/android/tct/common/RttManager;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/android/tct/common/RttManager;->sRttInstance:Lcom/android/tct/common/RttManager;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/android/tct/common/RttManager;

    invoke-direct {v1}, Lcom/android/tct/common/RttManager;-><init>()V

    sput-object v1, Lcom/android/tct/common/RttManager;->sRttInstance:Lcom/android/tct/common/RttManager;

    .line 82
    :cond_0
    sget-object v1, Lcom/android/tct/common/RttManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 83
    invoke-static {}, Lcom/android/dialer/binary/common/DialerApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/tct/common/RttManager;->mContext:Landroid/content/Context;

    .line 85
    :cond_1
    sget-object v1, Lcom/android/tct/common/RttManager;->sRttInstance:Lcom/android/tct/common/RttManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$upgradeToRTT$0(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "upgradeToRTT, successfully complete pre call task,call state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/call/DialerCall$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RttManager"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->sendRttUpgradeRequest()V

    return-void
.end method

.method private showEmcFailureDialog(Landroid/content/Context;)V
    .locals 3

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RTT]showDialog rtt emc failure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/tct/common/DialerDialogActivity;->sIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RttManager"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    sget-boolean v0, Lcom/android/tct/common/DialerDialogActivity;->sIsShowing:Z

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/tct/common/DialerDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "show_rtt_emc_failure"

    .line 312
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndShowRttAnsweredFailToast(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 422
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 423
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 435
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->hasShownRttAnsweredFailToast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 436
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isRttSupportRemote()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_4

    .line 437
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tct/common/RttManager;->isRttRequest(Landroid/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/OperatorConfig;->isShowRttAnsweredFailToast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 438
    :cond_2
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1103f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 439
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 442
    invoke-virtual {p2, v1}, Lcom/android/incallui/call/DialerCall;->setHasShownRttAnsweredFailToast(Z)V

    :cond_4
    return-void
.end method

.method public getCallStateLabel(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;
    .locals 2

    .line 158
    iget v0, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRttRequest:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1103f0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_1
    iget v0, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRtt:Z

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1102bb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 167
    :cond_3
    iget v0, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-boolean p3, p3, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRtt:Z

    if-eqz p3, :cond_4

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110503

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method

.method public getCallerName(Lcom/android/incallui/call/DialerCall;)Ljava/lang/String;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/tct/common/RttManager;->mPrimaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 410
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRttOperationMode(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x2

    if-nez p1, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "rtt_call_operation_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isRttCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 259
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/Call;->isRttActive()Z

    move-result p1

    return p1
.end method

.method public isRttCallLog(I)Z
    .locals 1

    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRttInComingCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x400

    .line 188
    invoke-virtual {p1, v1}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 190
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRttInComingCall: Incoming rtt call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "RttManager"

    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isRttManualMode(Landroid/content/Context;)Z
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/tct/common/RttManager;->getRttOperationMode(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRttRequest(Landroid/telecom/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.telecom.extra.START_CALL_WITH_RTT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 181
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRttRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "RttManager"

    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isRttSupported(Landroid/content/Context;)Z
    .locals 7

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rtt_calling_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 94
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRttSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "RttManager"

    invoke-static {v5, v3, v4}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    const-string v0, "phone"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 100
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "empty"

    if-eq v3, v4, :cond_2

    .line 101
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isInLimitedService()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 107
    invoke-static {p1, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    .line 108
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p1

    const/16 v4, 0xd

    if-eq p1, v4, :cond_3

    .line 112
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p1

    if-nez p1, :cond_4

    .line 113
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v4, :cond_4

    :cond_3
    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    .line 114
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRttSupported--telephonyManager.getVoiceNetworkType(): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRttSupported--telephonyManager.getDataNetworkType(): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    move p1, v2

    .line 118
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRttSupported--isVolteAvailable: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    .line 122
    :cond_7
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRttSupported--imsRegistered: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v5, p1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_8
    return v0
.end method

.method public makeTextForConnectionEvent(Landroid/content/Context;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 215
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/operatorutils/IOperatorManager;->makeTextForConnectionEvent(Landroid/content/Context;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrimaryCallStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrimaryCallStateChange current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RttManager"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/tct/common/RttManager;->showEccNotificationIfNeeded(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    sget-object p1, Lcom/android/tct/common/RttManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/tct/common/RttManager;->showEmcFailureDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onRttInitiationFailure(Landroid/content/Context;Landroid/telecom/Call;I)V
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRttInitiationFailure reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RttManager"

    invoke-static {v2, p3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 267
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/incallui/call/CallList;->getDialerCallFromTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    .line 268
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result p2

    if-eqz p2, :cond_0

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "onRttInitiationFailure isEmergencyNumber"

    .line 269
    invoke-static {v2, p3, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/operatorutils/IOperatorManager;->showRttEmcFailedNotify(Landroid/content/Context;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110404

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRttRequest(Landroid/telecom/Call;ILandroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RttManager"

    const-string v3, "onRttRequest"

    .line 388
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRttRequest  call = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/tct/common/RttManager;->playTone()V

    .line 394
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/call/CallList;->getDialerCallFromTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    .line 395
    invoke-virtual {p0, v1}, Lcom/android/tct/common/RttManager;->getCallerName(Lcom/android/incallui/call/DialerCall;)Ljava/lang/String;

    move-result-object v1

    .line 396
    sget-object v2, Lcom/android/tct/common/RttManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11040e

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 397
    invoke-virtual {p1}, Landroid/telecom/Call;->isRttActive()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 399
    invoke-virtual {p1, p2, v4}, Landroid/telecom/Call;->respondToRttRequest(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRttStop(Landroid/content/Context;Landroid/telecom/Call;)V
    .locals 4

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RttManager"

    const-string v3, "RTT status lost, close conversation UI and launch InCall UI"

    .line 281
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/call/CallList;->getDialerCallFromTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    .line 285
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3

    .line 286
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/operatorutils/OperatorConfig;->isDefShowRttEmcNotifyWhenRttStop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "onRttStop isEmergencyNumber"

    .line 293
    invoke-static {v2, v0, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/operatorutils/IOperatorManager;->showRttEmcFailedNotify(Landroid/content/Context;)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f11020e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "onRttStop: RTT status lost, but no active call"

    .line 287
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public playTone()V
    .locals 5

    const-string v0, "RttManager"

    .line 358
    iget-object v1, p0, Lcom/android/tct/common/RttManager;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 360
    :try_start_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x50

    invoke-direct {v2, v1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/android/tct/common/RttManager;->mToneGenerator:Landroid/media/ToneGenerator;

    const-string v2, "[RTT]two tone beep played"

    new-array v3, v1, [Ljava/lang/Object;

    .line 361
    invoke-static {v0, v2, v3}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RTT]Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/android/tct/common/RttManager;->mToneGenerator:Landroid/media/ToneGenerator;

    return-void

    .line 368
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tct/common/RttManager;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x1c

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    return-void
.end method

.method public rttChatFragment_onViewCreated(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Landroid/widget/EditText;)V
    .locals 0

    const-string p3, "RttManager rttChatFragment_onViewCreated"

    .line 373
    invoke-static {p3}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {}, Lcom/android/dialer/util/CallUtil;->isVideoCallingSupported()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 380
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/operatorutils/IOperatorManager;->showVideoCallTip(Landroid/content/Context;)V

    .line 382
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tct/common/RttManager;->checkAndShowRttAnsweredFailToast(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "RttManager"

    const-string p3, "context or call is null!"

    .line 375
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public rttDowngradeClicked(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RttManager"

    const-string v2, "rttDowngradeClicked: "

    .line 205
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/telecom/Call;->isRttActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/telecom/Call;->stopRtt()V

    :cond_0
    return-void
.end method

.method public setPrimaryInfo(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/android/tct/common/RttManager;->mPrimaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    return-void
.end method

.method public shouldShowRttCallButton(Landroid/content/Context;)Z
    .locals 1

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/tct/common/RttManager;->isRttSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tct/common/RttManager;->isRttManualMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public showEccNotificationIfNeeded(Lcom/android/incallui/call/DialerCall;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 219
    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isMediaTekPlatform()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    .line 223
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getPreState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RttManager"

    const-string v4, "showEccNotificationIfNeeded "

    .line 226
    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/tct/common/RttManager;->isRttRequest(Landroid/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    sget-object v1, Lcom/android/tct/common/RttManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    .line 232
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/tct/common/RttManager;->isRttCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 234
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-eq p1, v3, :cond_2

    const/16 v1, 0x13

    if-ne p1, v1, :cond_4

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "showEccNotificationIfNeeded: show dialog"

    .line 237
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "showEccNotificationIfNeeded: is not rtt request"

    .line 245
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return v0
.end method

.method public upgradeToRTT(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 4

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeToRttClicked, call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RttManager"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 330
    :cond_0
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "changeToRttClicked, Upgrade RTT fail, Since the call was already RTT!"

    .line 331
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 334
    :cond_1
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/android/tct/common/RttManager;->playTone()V

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1103ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "upgradeToRTT, call state is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall$State;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 346
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_3

    move v1, v2

    .line 349
    :cond_3
    new-instance p1, Lcom/android/tct/common/-$$Lambda$RttManager$837Oe99cI2GjYn6PANvgD-Nb-tg;

    invoke-direct {p1, p2}, Lcom/android/tct/common/-$$Lambda$RttManager$837Oe99cI2GjYn6PANvgD-Nb-tg;-><init>(Lcom/android/incallui/call/DialerCall;)V

    if-eqz v1, :cond_4

    const-wide/16 v0, 0x640

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0xc8

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postDelayedOnUiThread(Ljava/lang/Runnable;J)V

    return v2

    .line 336
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1104bd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 335
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_2
    return v1
.end method
