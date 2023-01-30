.class public Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;
.super Ljava/lang/Object;
.source "OmtpVvmCarrierConfigHelper.java"


# static fields
.field public static final KEY_CARRIER_VVM_PACKAGE_NAME_STRING:Ljava/lang/String; = "carrier_vvm_package_name_string"

.field public static final KEY_CARRIER_VVM_PACKAGE_NAME_STRING_ARRAY:Ljava/lang/String; = "carrier_vvm_package_name_string_array"

.field public static final KEY_VVM_CELLULAR_DATA_REQUIRED_BOOL:Ljava/lang/String; = "vvm_cellular_data_required_bool"

.field public static final KEY_VVM_CLIENT_PREFIX_STRING:Ljava/lang/String; = "vvm_client_prefix_string"

.field public static final KEY_VVM_DESTINATION_NUMBER_STRING:Ljava/lang/String; = "vvm_destination_number_string"

.field public static final KEY_VVM_DISABLED_CAPABILITIES_STRING_ARRAY:Ljava/lang/String; = "vvm_disabled_capabilities_string_array"

.field public static final KEY_VVM_LEGACY_MODE_ENABLED_BOOL:Ljava/lang/String; = "vvm_legacy_mode_enabled_bool"

.field public static final KEY_VVM_PORT_NUMBER_INT:Ljava/lang/String; = "vvm_port_number_int"

.field public static final KEY_VVM_PREFETCH_BOOL:Ljava/lang/String; = "vvm_prefetch_bool"

.field public static final KEY_VVM_SSL_PORT_NUMBER_INT:Ljava/lang/String; = "vvm_ssl_port_number_int"

.field public static final KEY_VVM_TYPE_STRING:Ljava/lang/String; = "vvm_type_string"

.field private static final TAG:Ljava/lang/String; = "OmtpVvmCarrierCfgHlpr"


# instance fields
.field private final mCarrierConfig:Landroid/os/PersistableBundle;

.field private final mContext:Landroid/content/Context;

.field private final mOverrideConfig:Landroid/os/PersistableBundle;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

.field private final mTelephonyConfig:Landroid/os/PersistableBundle;

.field private final mVvmType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 137
    iput-object p3, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mOverrideConfig:Landroid/os/PersistableBundle;

    .line 139
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocolFactory;->create(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 103
    const-class p2, Landroid/telephony/TelephonyManager;

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 106
    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    const-string v0, "OmtpVvmCarrierCfgHlpr"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p1, "PhoneAccountHandle is invalid"

    .line 108
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 110
    iput-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    .line 111
    iput-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mOverrideConfig:Landroid/os/PersistableBundle;

    .line 112
    iput-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    return-void

    .line 117
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierConfig(Landroid/telephony/TelephonyManager;)Landroid/os/PersistableBundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 118
    new-instance v2, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;

    invoke-direct {v2, p1}, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->getConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    .line 121
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    .line 122
    iget-object p2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocolFactory;->create(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-result-object p2

    iput-object p2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    .line 124
    invoke-static {p1}, Lcom/android/voicemail/impl/configui/ConfigOverrideFragment;->isOverridden(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 125
    invoke-static {p1}, Lcom/android/voicemail/impl/configui/ConfigOverrideFragment;->getConfig(Landroid/content/Context;)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mOverrideConfig:Landroid/os/PersistableBundle;

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Config override is activated: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mOverrideConfig:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iput-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mOverrideConfig:Landroid/os/PersistableBundle;

    :goto_0
    return-void
.end method

.method private getCarrierConfig(Landroid/telephony/TelephonyManager;)Landroid/os/PersistableBundle;
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "OmtpVvmCarrierCfgHlpr"

    const-string v0, "No carrier config service found."

    .line 444
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 448
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string/jumbo v0, "vvm_type_string"

    .line 450
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private static getCarrierVvmPackageNames(Landroid/os/PersistableBundle;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 203
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, "carrier_vvm_package_name_string"

    .line 204
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "carrier_vvm_package_name_string_array"

    .line 207
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 209
    array-length v2, p0

    if-lez v2, :cond_2

    .line 210
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 213
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getCarrierVvmPackageNamesWithoutValidation()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mOverrideConfig:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames(Landroid/os/PersistableBundle;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames(Landroid/os/PersistableBundle;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames(Landroid/os/PersistableBundle;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getDisabledCapabilities(Landroid/os/PersistableBundle;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "vvm_disabled_capabilities_string_array"

    .line 295
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 299
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 300
    array-length v1, p0

    if-lez v1, :cond_2

    .line 301
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 302
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 458
    invoke-direct {p0, p1, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mOverrideConfig:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method


# virtual methods
.method public activateSmsFilter()V
    .locals 4

    .line 361
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    new-instance v2, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    invoke-direct {v2}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;-><init>()V

    .line 365
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getClientPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->setClientPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->build()Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v2

    .line 362
    invoke-static {v0, v1, v2}, Lcom/android/voicemail/impl/TelephonyMangerCompat;->setVisualVoicemailSmsFilterSettings(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/telephony/VisualVoicemailSmsFilterSettings;)Ljava/lang/String;

    return-void
.end method

.method public getApplicationPort()I
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    const/4 v0, 0x0

    .line 255
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vvm_port_number_int"

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCarrierVvmPackageNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames(Landroid/os/PersistableBundle;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames(Landroid/os/PersistableBundle;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getClientPrefix()Ljava/lang/String;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    const-string/jumbo v0, "vvm_client_prefix_string"

    .line 310
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "//VVM"

    return-object v0
.end method

.method public getConfig()Landroid/os/PersistableBundle;
    .locals 2

    .line 144
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDestinationNumber()Ljava/lang/String;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    const-string/jumbo v0, "vvm_destination_number_string"

    .line 261
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getDisabledCapabilities(Landroid/os/PersistableBundle;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getDisabledCapabilities(Landroid/os/PersistableBundle;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getProtocol()Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    return-object v0
.end method

.method public getSslPort()I
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    const/4 v0, 0x0

    .line 267
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vvm_ssl_port_number_int"

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getVvmType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vvm_type_string"

    .line 174
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 2

    .line 404
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OmtpEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmtpVvmCarrierCfgHlpr"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->handleEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    return-void
.end method

.method public isCarrierAppInstalled()Z
    .locals 4

    .line 493
    invoke-direct {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNamesWithoutValidation()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 497
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 499
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 500
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isCellularDataRequired()Z
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    const/4 v0, 0x0

    .line 245
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "vvm_cellular_data_required_bool"

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnabledByDefault()Z
    .locals 5

    .line 224
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageNames()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 232
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    :try_start_0
    iget-object v4, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    return v2
.end method

.method public isLegacyModeEnabled()Z
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/SettingsUtil;->isLegacyVVMEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OmtpVvmCarrierCfgHlpr"

    const-string v1, "isLegacyModeEnabled : true"

    .line 331
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 335
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "vvm_legacy_mode_enabled_bool"

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPrefetchEnabled()Z
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    const/4 v0, 0x1

    .line 250
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "vvm_prefetch_bool"

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestStatus(Landroid/app/PendingIntent;)V
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    invoke-virtual {v0, p0, p1}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->requestStatus(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startActivation()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/voicemail/impl/ActivationTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_2
    return-void

    .line 351
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivation : vvmType is null or empty for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OmtpVvmCarrierCfgHlpr"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDeactivation()V
    .locals 4

    .line 369
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    const-string v0, "OmtpVvmCarrierCfgHlpr"

    const-string v1, "startDeactivation"

    .line 370
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isLegacyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    .line 374
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 373
    invoke-static {v1, v2, v3}, Lcom/android/voicemail/impl/TelephonyMangerCompat;->setVisualVoicemailSmsFilterSettings(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/telephony/VisualVoicemailSmsFilterSettings;)Ljava/lang/String;

    const-string v1, "filter disabled"

    .line 375
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0, p0}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->startDeactivation(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;)V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->removeAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method public startProvisioning(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/sms/StatusMessage;Landroid/os/Bundle;)V
    .locals 8

    .line 394
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 395
    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->startProvisioning(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/sms/StatusMessage;Landroid/os/Bundle;)V

    return-void
.end method

.method public supportsProvisioning()Z
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mProtocol:Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->supportsProvisioning()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OmtpVvmCarrierConfigHelper ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "phoneAccountHandle: "

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierConfig: "

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 416
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", telephonyConfig: "

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->mTelephonyConfig:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 418
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationNumber: "

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getDestinationNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationPort: "

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getApplicationPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sslPort: "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getSslPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabledByDefault: "

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isEnabledByDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCellularDataRequired: "

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isCellularDataRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPrefetchEnabled: "

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isPrefetchEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLegacyModeEnabled: "

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isLegacyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
