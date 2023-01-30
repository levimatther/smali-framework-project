.class public Lcom/android/voicemail/impl/OmtpService;
.super Landroid/telephony/VisualVoicemailService;
.source "OmtpService.java"


# static fields
.field public static final ACTION_SMS_RECEIVED:Ljava/lang/String; = "com.android.vociemailomtp.sms.sms_received"

.field public static final EXTRA_VOICEMAIL_SMS:Ljava/lang/String; = "extra_voicemail_sms"

.field private static final IS_SHUTTING_DOWN:Ljava/lang/String; = "com.android.voicemail.impl.is_shutting_down"

.field private static final TAG:Ljava/lang/String; = "VvmOmtpService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/telephony/VisualVoicemailService;-><init>()V

    return-void
.end method

.method private isModuleEnabled()Z
    .locals 1

    .line 173
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailModuleEnabled()Z

    move-result v0

    return v0
.end method

.method private isServiceEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4

    .line 177
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 179
    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "VvmOmtpService"

    if-nez v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VVM not supported on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 183
    :cond_0
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isLegacyModeEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "VVM is disabled"

    .line 185
    invoke-static {v3, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static isShuttingDown(Landroid/content/Context;)Z
    .locals 2

    .line 204
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "com.android.voicemail.impl.is_shutting_down"

    const/4 v1, 0x0

    .line 205
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1

    .line 192
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 193
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    return p0
.end method

.method static onBoot(Landroid/content/Context;)V
    .locals 2

    const-string v0, "VvmOmtpService"

    const-string v1, "onBoot"

    .line 158
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p0}, Lcom/android/voicemail/impl/OmtpService;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    .line 160
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, v0}, Lcom/android/voicemail/impl/OmtpService;->setShuttingDown(Landroid/content/Context;Z)V

    return-void
.end method

.method static onShutdown(Landroid/content/Context;)V
    .locals 2

    const-string v0, "VvmOmtpService"

    const-string v1, "onShutdown"

    .line 166
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p0}, Lcom/android/voicemail/impl/OmtpService;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    .line 168
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    const/4 v0, 0x1

    .line 169
    invoke-static {p0, v0}, Lcom/android/voicemail/impl/OmtpService;->setShuttingDown(Landroid/content/Context;Z)V

    return-void
.end method

.method private static setShuttingDown(Landroid/content/Context;Z)V
    .locals 1

    .line 197
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 198
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "com.android.voicemail.impl.is_shutting_down"

    .line 199
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 200
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onCellServiceConnected(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    const-string v0, "VvmOmtpService"

    const-string v1, "onCellServiceConnected"

    .line 57
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/android/voicemail/impl/OmtpService;->isModuleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "onCellServiceConnected received when module is disabled"

    .line 59
    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/android/voicemail/impl/OmtpService;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p2, "onCellServiceConnected: user locked"

    .line 65
    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 70
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/voicemail/impl/OmtpService;->isServiceEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_UNBUNDLED_EVENT_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "stop_activation"

    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    invoke-static {p0, p2, v0}, Lcom/android/voicemail/impl/ActivationTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void
.end method

.method public onSimRemoved(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    const-string v0, "VvmOmtpService"

    const-string v1, "onSimRemoved"

    .line 116
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/android/voicemail/impl/OmtpService;->isModuleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "onSimRemoved called when module is disabled"

    .line 118
    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/android/voicemail/impl/OmtpService;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p2, "onSimRemoved: user locked"

    .line 124
    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/android/voicemail/impl/OmtpService;->isShuttingDown(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "onSimRemoved: system shutting down, ignoring"

    .line 130
    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 135
    :cond_2
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_UNBUNDLED_EVENT_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 136
    invoke-static {p0, p2}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->removeAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 137
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void
.end method

.method public onSmsReceived(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V
    .locals 2

    const-string v0, "VvmOmtpService"

    const-string v1, "onSmsReceived"

    .line 86
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/android/voicemail/impl/OmtpService;->isModuleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "onSmsReceived received when module is disabled"

    .line 88
    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/android/voicemail/impl/OmtpService;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-static {p0, p2}, Lcom/android/voicemail/impl/sms/LegacyModeSmsHandler;->handle(Landroid/content/Context;Landroid/telephony/VisualVoicemailSms;)V

    return-void

    .line 98
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/VisualVoicemailSms;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/OmtpService;->isServiceEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 105
    :cond_2
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_UNBUNDLED_EVENT_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vociemailomtp.sms.sms_received"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_voicemail_sms"

    .line 108
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/OmtpService;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void
.end method

.method public onStopped(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V
    .locals 2

    const-string v0, "VvmOmtpService"

    const-string v1, "onStopped"

    .line 142
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/android/voicemail/impl/OmtpService;->isModuleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onStopped called when module is disabled"

    .line 144
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/android/voicemail/impl/OmtpService;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "onStopped: user locked"

    .line 149
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->finish()V

    return-void

    .line 153
    :cond_1
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_UNBUNDLED_EVENT_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method
