.class public Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;
.super Ljava/lang/Object;
.source "VisualVoicemailSettingsUtil.java"


# static fields
.field private static final IS_ENABLED_KEY:Ljava/lang/String; = "is_enabled"

.field private static final NATIVE_AUTOMATICALLY_DOWNLOADED_VOICEMAILS_KEY:Ljava/lang/String; = "native_automatically_download_voicemails"

.field private static final NATIVE_TRANSCRIBE_VOICEMAILS_KEY:Ljava/lang/String; = "native_transcribe_voicemails"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    .line 131
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const p1, 0x7f110572

    .line 135
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 134
    invoke-virtual {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/dialer/util/SettingsUtil;->isVVMEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "VisualVoicemailSettingsUtil"

    const-string v1, "VVM is disabled"

    .line 117
    invoke-static {p1, v1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 121
    :cond_1
    new-instance v1, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v1, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string v2, "is_enabled"

    .line 122
    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {v1, v2, v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 127
    :cond_2
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isEnabledByDefault()Z

    move-result p0

    return p0
.end method

.method public static isEnabledUserSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 148
    :cond_0
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string p0, "is_enabled"

    .line 149
    invoke-virtual {v0, p0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNativeVoicemailAutomaticallyDownloadEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    .line 103
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string p0, "native_automatically_download_voicemails"

    const/4 p1, 0x0

    .line 106
    invoke-virtual {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isNativeVoicemailTranscriptionEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    .line 95
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string p0, "native_transcribe_voicemails"

    const/4 p1, 0x0

    .line 98
    invoke-virtual {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 1

    .line 62
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailArchiveAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 61
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 63
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 64
    invoke-virtual {v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    const v0, 0x7f110572

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisualVoicemailSettingsUtil.setEnable"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 47
    invoke-virtual {v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_enabled"

    .line 48
    invoke-virtual {v0, v1, p2}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    .line 50
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->startActivation()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->removeAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 55
    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->startDeactivation()V

    :goto_0
    return-void
.end method

.method public static setNativeVoicemailAutomaticallyDownloadEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 1

    .line 83
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 86
    invoke-virtual {v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    const-string p1, "native_automatically_download_voicemails"

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNativeVoicemailTranscriptionEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 1

    .line 73
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 76
    invoke-virtual {v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    const-string p1, "native_transcribe_voicemails"

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    return-void
.end method
