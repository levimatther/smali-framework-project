.class public final Lcom/android/voicemail/impl/VvmPackageInstallHandler;
.super Ljava/lang/Object;
.source "VvmPackageInstallHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handlePackageInstalled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 49
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 50
    new-instance v2, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v2, p0, v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 52
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "VvmPackageInstallHandler.handlePackageInstalled"

    const-string v3, "Carrier app installed"

    .line 62
    invoke-static {v2, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p0, v1}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabledUserSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "VVM enabled by user, not disabling"

    .line 65
    invoke-static {v2, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "Carrier VVM package installed, disabling system VVM client"

    .line 74
    invoke-static {v2, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 77
    invoke-static {p0, v1, v2}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->setEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static handlePackageUninstalled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 91
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 92
    new-instance v2, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v2, p0, v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 94
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "VvmPackageInstallHandler.handlePackageUninstalled"

    const-string v3, "Carrier app Uninstalled"

    .line 104
    invoke-static {v2, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p0, v1}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabledUserSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "VVM enabled by user, not disabling"

    .line 107
    invoke-static {v2, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "Carrier VVM package uninstalled, disabling system VVM client"

    .line 113
    invoke-static {v2, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 116
    invoke-static {p0, v1, v2}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->setEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method
