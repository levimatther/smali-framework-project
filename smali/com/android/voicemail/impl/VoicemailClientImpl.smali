.class public Lcom/android/voicemail/impl/VoicemailClientImpl;
.super Ljava/lang/Object;
.source "VoicemailClientImpl.java"

# interfaces
.implements Lcom/android/voicemail/VoicemailClient;


# static fields
.field private static final ALLOW_VOICEMAIL_ARCHIVE:Ljava/lang/String; = "allow_voicemail_archive"

.field private static final OMTP_VOICEMAIL_BLACKLIST:[Ljava/lang/String;

.field private static final OMTP_VOICEMAIL_TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.phone"

    .line 55
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/VoicemailClientImpl;->OMTP_VOICEMAIL_BLACKLIST:[Ljava/lang/String;

    const-string/jumbo v0, "vvm_type_omtp"

    const-string/jumbo v1, "vvm_type_cvvm"

    const-string/jumbo v2, "vvm_type_vvm3"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/VoicemailClientImpl;->OMTP_VOICEMAIL_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method public addActivationStateListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V
    .locals 0

    .line 161
    invoke-static {p1}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->addListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V

    return-void
.end method

.method public appendOmtpVoicemailSelectionClause(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVisualVoicemailPackageName()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " AND "

    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "("

    .line 183
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_omtp_voicemail"

    .line 187
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " != 1"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 188
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " OR "

    .line 190
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "source_package"

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    sget-object p1, Lcom/android/voicemail/impl/VoicemailClientImpl;->OMTP_VOICEMAIL_BLACKLIST:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, "AND ("

    .line 201
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!= ?)"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public appendOmtpVoicemailStatusSelectionClause(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 211
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVisualVoicemailPackageName()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " AND "

    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "("

    .line 215
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "source_package"

    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, ")"

    .line 221
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR NOT ("

    .line 223
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 225
    :goto_0
    sget-object v3, Lcom/android/voicemail/impl/VoicemailClientImpl;->OMTP_VOICEMAIL_TYPE:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    const-string v3, " OR "

    .line 227
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, " ("

    .line 229
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "source_type"

    .line 231
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IS ?"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    sget-object v3, Lcom/android/voicemail/impl/VoicemailClientImpl;->OMTP_VOICEMAIL_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    sget-object v2, Lcom/android/voicemail/impl/VoicemailClientImpl;->OMTP_VOICEMAIL_BLACKLIST:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    const-string v5, "AND ("

    .line 239
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "!= ?"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public createPinChanger(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/PinChanger;
    .locals 1

    .line 171
    new-instance v0, Lcom/android/voicemail/impl/PinChangerImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/voicemail/impl/PinChangerImpl;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method public getConfig(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/os/PersistableBundle;
    .locals 1

    .line 143
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method

.method public getSetPinIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;
    .locals 2

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "extra_phone_account_handle"

    .line 125
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public getSettingsFragment()Ljava/lang/String;
    .locals 1

    .line 90
    const-class v0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCarrierSupport(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    .line 253
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 254
    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isCarrierAppInstalled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0

    .line 131
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    return p1
.end method

.method public isVoicemailArchiveAvailable(Landroid/content/Context;)Z
    .locals 4

    .line 100
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    const-string v1, "VoicemailClientImpl.isVoicemailArchiveAllowed"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "not running on O or later"

    .line 101
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p1

    const-string v0, "allow_voicemail_archive"

    invoke-interface {p1, v0, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string v0, "feature disabled by config: %s"

    .line 106
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    return v3
.end method

.method public isVoicemailArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0

    .line 95
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    return p1
.end method

.method public isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0

    .line 78
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    return p1
.end method

.method public isVoicemailModuleEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBoot(Landroid/content/Context;)V
    .locals 0

    .line 149
    invoke-static {p1}, Lcom/android/voicemail/impl/OmtpService;->onBoot(Landroid/content/Context;)V

    .line 150
    invoke-static {p1}, Lcom/android/voicemail/impl/StatusCheckJobService;->schedule(Landroid/content/Context;)V

    return-void
.end method

.method public onShutdown(Landroid/content/Context;)V
    .locals 0

    .line 156
    invoke-static {p1}, Lcom/android/voicemail/impl/OmtpService;->onShutdown(Landroid/content/Context;)V

    return-void
.end method

.method public removeActivationStateListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V
    .locals 0

    .line 166
    invoke-static {p1}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->removeListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V

    return-void
.end method

.method public setVoicemailArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 0

    .line 119
    invoke-static {p1, p2, p3}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->setArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    return-void
.end method

.method public setVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 0

    .line 84
    invoke-static {p1, p2, p3}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->setEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    return-void
.end method

.method public showConfigUi(Landroid/content/Context;)V
    .locals 2

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/voicemail/impl/configui/VoicemailSecretCodeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
