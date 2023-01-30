.class public Lcom/android/voicemail/impl/ActivationTask;
.super Lcom/android/voicemail/impl/scheduling/BaseTask;
.source "ActivationTask.java"


# static fields
.field private static final EXTRA_MESSAGE_DATA_BUNDLE:Ljava/lang/String; = "extra_message_data_bundle"

.field private static final RETRY_INTERVAL_MILLIS:I = 0x1388

.field private static final RETRY_TIMES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VvmActivationTask"

.field private static activationTaskListener:Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;


# instance fields
.field private mMessageData:Landroid/os/Bundle;

.field private mResultDate:Landroid/os/Bundle;

.field private final mRetryPolicy:Lcom/android/voicemail/impl/scheduling/RetryPolicy;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    .line 74
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;-><init>(I)V

    .line 75
    new-instance v0, Lcom/android/voicemail/impl/scheduling/RetryPolicy;

    const/4 v1, 0x4

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/RetryPolicy;-><init>(II)V

    iput-object v0, p0, Lcom/android/voicemail/impl/ActivationTask;->mRetryPolicy:Lcom/android/voicemail/impl/scheduling/RetryPolicy;

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/ActivationTask;->addPolicy(Lcom/android/voicemail/impl/scheduling/Policy;)Lcom/android/voicemail/impl/scheduling/BaseTask;

    return-void
.end method

.method private static clearLegacyVoicemailNotification(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.voicemail.VoicemailClient.ACTION_SHOW_LEGACY_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.PHONE_ACCOUNT_HANDLE"

    .line 355
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.telephony.extra.NOTIFICATION_COUNT"

    const/4 v1, 0x0

    .line 357
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static hasSignal(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    .line 362
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 364
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 365
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static onSuccess(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .line 341
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 343
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_REQUEST_STATUS_SUCCESS:Lcom/android/voicemail/impl/OmtpEvents;

    .line 342
    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 345
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/ActivationTask;->clearLegacyVoicemailNotification(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method public static registerTaskListener(Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;)V
    .locals 0

    .line 84
    sput-object p0, Lcom/android/voicemail/impl/ActivationTask;->activationTaskListener:Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 1

    .line 108
    invoke-static {p0}, Lcom/android/voicemail/impl/ActivationTask;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "VvmActivationTask"

    const-string v0, "Activation requested while device is not provisioned, postponing"

    .line 109
    invoke-static {p2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/DeviceProvisionedJobService;->activateAfterProvisioned(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void

    .line 117
    :cond_0
    const-class v0, Lcom/android/voicemail/impl/ActivationTask;

    invoke-static {p0, v0, p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string v0, "extra_message_data_bundle"

    .line 119
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const/high16 p2, 0x10000000

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static unregisterTaskLister()V
    .locals 1

    .line 90
    sget-object v0, Lcom/android/voicemail/impl/ActivationTask;->activationTaskListener:Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 91
    sput-object v0, Lcom/android/voicemail/impl/ActivationTask;->activationTaskListener:Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;

    :cond_0
    return-void
.end method

.method private static updateSource(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/sms/StatusMessage;)V
    .locals 2

    .line 331
    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/StatusMessage;->getReturnCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {p0, p1, p2}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->addAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/sms/StatusMessage;)V

    .line 334
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/ActivationTask;->onSuccess(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_0
    const-string p0, "VvmActivationTask"

    const-string p1, "Visual voicemail not available for subscriber."

    .line 336
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createRestartIntent()Landroid/content/Intent;
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_ACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 133
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 135
    invoke-super {p0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createRestartIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 3

    const-string v0, "VvmActivationTask"

    const-string v1, "onCompleted"

    .line 146
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-super {p0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->onCompleted()V

    .line 148
    sget-object v1, Lcom/android/voicemail/impl/ActivationTask;->activationTaskListener:Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;

    if-eqz v1, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/voicemail/impl/ActivationTask;->mResultDate:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;->onResult(Landroid/os/Bundle;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->hasFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->hasFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/voicemail/impl/ActivationTask;->mRetryPolicy:Lcom/android/voicemail/impl/scheduling/RetryPolicy;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/scheduling/RetryPolicy;->hasMoreRetries()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "remove taskLister"

    .line 153
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/android/voicemail/impl/ActivationTask;->unregisterTaskLister()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/voicemail/impl/scheduling/BaseTask;->onCreate(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string p1, "extra_message_data_bundle"

    .line 128
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/voicemail/impl/ActivationTask;->mMessageData:Landroid/os/Bundle;

    return-void
.end method

.method public onExecuteInBackgroundThread()V
    .locals 10

    const-string v0, "VvmActivationTask"

    const-string v1, "onExecuteInBackgroundThread"

    .line 161
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isNotMainThread()V

    .line 164
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ACTIVATION_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 163
    invoke-static {v1, v2}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v1, "null PhoneAccountHandle"

    .line 168
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/voicemail/impl/PreOMigrationHandler;->migrate(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 174
    new-instance v3, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    .line 175
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, v5}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 177
    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VVM not supported on phoneAccountHandle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->removeAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 184
    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isLegacyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Setting up filter for legacy mode"

    .line 185
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->activateSmsFilter()V

    :cond_2
    const-string v1, "VVM is disabled"

    .line 188
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v1

    .line 198
    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setType(Ljava/lang/String;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    move-result v1

    if-nez v1, :cond_4

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to configure content provider - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    .line 203
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VVM content provider configured - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Account is already activated"

    .line 206
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/voicemail/impl/ActivationTask;->onSuccess(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void

    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_ACTIVATING:Lcom/android/voicemail/impl/OmtpEvents;

    .line 210
    invoke-virtual {v3, v1, v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/voicemail/impl/ActivationTask;->hasSignal(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Service lost during activation, aborting"

    .line 214
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v0

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->NOTIFICATION_SERVICE_LOST:Lcom/android/voicemail/impl/OmtpEvents;

    .line 217
    invoke-virtual {v3, v0, v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    return-void

    .line 224
    :cond_6
    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->activateSmsFilter()V

    .line 225
    iget-object v1, p0, Lcom/android/voicemail/impl/ActivationTask;->mRetryPolicy:Lcom/android/voicemail/impl/scheduling/RetryPolicy;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/scheduling/RetryPolicy;->getVoicemailStatusEditor()Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v6

    .line 227
    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getProtocol()Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/android/voicemail/impl/ActivationTask;->mMessageData:Landroid/os/Bundle;

    const-string v4, "R"

    if-eqz v2, :cond_8

    const-string v1, "stop_activation"

    .line 234
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "stop to activate vvm"

    .line 235
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_0
    move-object v8, v2

    goto/16 :goto_3

    .line 241
    :cond_8
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v2

    const-string v7, "Unable to send status request SMS"

    const-string v8, "can\'t get future STATUS SMS"

    if-eqz v2, :cond_a

    .line 243
    :try_start_0
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/operatorutils/IOperatorManager;->activateVVM(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    .line 244
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "rc"

    if-eqz v1, :cond_9

    :try_start_1
    const-string v1, "0"

    .line 246
    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v1, "1"

    .line 248
    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v1, "ipt"

    const-string v9, "443"

    .line 250
    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "st"

    .line 251
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 267
    invoke-static {v0, v8, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    return-void

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    .line 263
    :goto_2
    invoke-static {v0, v8, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    return-void

    .line 259
    :catch_4
    invoke-static {v0, v7}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    return-void

    .line 255
    :catch_5
    sget-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_STATUS_SMS_TIME_OUT:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v3, v6, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    return-void

    .line 273
    :cond_a
    :try_start_2
    new-instance v2, Lcom/android/voicemail/impl/sms/StatusSmsFetcher;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9, v5}, Lcom/android/voicemail/impl/sms/StatusSmsFetcher;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 274
    :try_start_3
    invoke-virtual {v2}, Lcom/android/voicemail/impl/sms/StatusSmsFetcher;->getSentIntent()Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->startActivation(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/app/PendingIntent;)V

    .line 278
    invoke-virtual {v2}, Lcom/android/voicemail/impl/sms/StatusSmsFetcher;->get()Landroid/os/Bundle;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :try_start_4
    invoke-virtual {v2}, Lcom/android/voicemail/impl/sms/StatusSmsFetcher;->close()V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v8, v1

    .line 298
    :goto_3
    new-instance v7, Lcom/android/voicemail/impl/sms/StatusMessage;

    invoke-direct {v7, v8}, Lcom/android/voicemail/impl/sms/StatusMessage;-><init>(Landroid/os/Bundle;)V

    .line 299
    iput-object v8, p0, Lcom/android/voicemail/impl/ActivationTask;->mResultDate:Landroid/os/Bundle;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATUS SMS received: st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v7}, Lcom/android/voicemail/impl/sms/StatusMessage;->getProvisioningStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v7}, Lcom/android/voicemail/impl/sms/StatusMessage;->getReturnCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v7}, Lcom/android/voicemail/impl/sms/StatusMessage;->getProvisioningStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "subscriber ready, no activation required"

    .line 307
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v7}, Lcom/android/voicemail/impl/ActivationTask;->updateSource(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/sms/StatusMessage;)V

    goto :goto_4

    .line 310
    :cond_b
    invoke-virtual {v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->supportsProvisioning()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Subscriber not ready, start provisioning"

    .line 311
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p0

    .line 312
    invoke-virtual/range {v3 .. v8}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->startProvisioning(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/sms/StatusMessage;Landroid/os/Bundle;)V

    goto :goto_4

    .line 314
    :cond_c
    invoke-virtual {v7}, Lcom/android/voicemail/impl/sms/StatusMessage;->getProvisioningStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Subscriber new but provisioning is not supported"

    .line 315
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v7}, Lcom/android/voicemail/impl/ActivationTask;->updateSource(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/sms/StatusMessage;)V

    goto :goto_4

    :cond_d
    const-string v1, "Subscriber not ready but provisioning is not supported"

    .line 320
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_SERVICE_NOT_AVAILABLE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v3, v6, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 325
    :goto_4
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ACTIVATION_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 324
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void

    :catchall_0
    move-exception v1

    .line 273
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    .line 279
    :try_start_6
    invoke-virtual {v2}, Lcom/android/voicemail/impl/sms/StatusSmsFetcher;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v4
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    .line 290
    :goto_6
    invoke-static {v0, v8, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    return-void

    .line 286
    :catch_9
    invoke-static {v0, v7}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    return-void

    .line 282
    :catch_a
    sget-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_STATUS_SMS_TIME_OUT:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v3, v6, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    return-void
.end method
