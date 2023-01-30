.class public Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;
.super Ljava/lang/Object;
.source "AppConfigSettings.java"


# static fields
.field private static SDK_VERSION_SET_BY_CODE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static TEYEID:Ljava/lang/String;

.field private static mCacheConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private insertStrategy:Ljava/lang/String;

.field private isAppBaseInfoAddable:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->sInstanceLock:Ljava/lang/Object;

    const-string v0, "sdk_version_set_by_code"

    .line 36
    sput-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->SDK_VERSION_SET_BY_CODE:Ljava/lang/String;

    const-string v0, "teyeId"

    .line 37
    sput-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TEYEID:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isAppBaseInfoAddable:Z

    .line 42
    iput-object p1, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    const-string p1, "insert_type_one"

    .line 43
    iput-object p1, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->insertStrategy:Ljava/lang/String;

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;
    .locals 2

    .line 47
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->sInstance:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->sInstance:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    .line 51
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->sInstance:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    return-object p0

    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getResStringFromFramework(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 182
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    .line 183
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :catch_1
    sget-object p1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    const-string p2, "Resources.NotFoundException"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSdkVersionByCode()Ljava/lang/String;
    .locals 5

    const-string v0, "default"

    :try_start_0
    const-string v1, "android"

    .line 215
    iget-object v2, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    sget-object v2, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->SDK_VERSION_SET_BY_CODE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 219
    sget-object v2, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->SDK_VERSION_SET_BY_CODE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 221
    sget-object v2, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSdkVersionByCode failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    sget-object v1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdkVersionByCode, sdk_version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setSdkVersionByCode(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "android"

    .line 233
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    sget-object v1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->SDK_VERSION_SET_BY_CODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    sget-object v1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->SDK_VERSION_SET_BY_CODE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSdkVersionToGp, sdk_version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSdkVersionToGp failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getInsertStrategy()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->insertStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public getTeyeIdFromGP()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 102
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TEYEID:Ljava/lang/String;

    sget-object v2, Ltct/gpdatahub/sdk/common/utils/FileUtils;->DATAHUB_FILE_PATH:Ljava/lang/String;

    const-string v3, "teyeId.xml"

    invoke-static {v1, v2, v3}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->readXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    sget-object v1, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTeyeIdFromGP,teyeId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getTeyeIdFromROM()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/rom/CommonDaoROM;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->getTeyeIdFromROM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackBehaviorFromApp()Z
    .locals 4

    .line 71
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    const-string v2, "appTrackConfig"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isTrackEnableFromApp"

    .line 76
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isDefaultDataHubEnable()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 78
    sget-object v2, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    const-string v3, "getTrackBehaviorFromApp failed:"

    invoke-static {v2, v3, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isDefaultDataHubEnable()Z

    move-result v0

    return v0
.end method

.method public isAppBaseInfoAddable()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isAppBaseInfoAddable:Z

    return v0
.end method

.method public isDefaultDataHubEnable()Z
    .locals 4

    .line 163
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    const-string v1, "config_default_datahub_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "com.tct"

    .line 167
    invoke-direct {p0, v1, v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getResStringFromFramework(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "android"

    .line 169
    invoke-direct {p0, v1, v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getResStringFromFramework(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "off"

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 175
    :cond_2
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public isGPVersion()Z
    .locals 7

    .line 127
    invoke-direct {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getSdkVersionByCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ROM"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "GP"

    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 133
    :cond_1
    sget-boolean v0, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->DEBUG_FORCE_USE_GP_VERSION:Z

    if-eqz v0, :cond_2

    .line 134
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    const-string v1, "[isGPVersion] force DEBUG_FORCE_USE_GP_VERSION"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 137
    :cond_2
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    const-string v4, "tct.gpdatahub.sdk_type_is_gp"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 138
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    const-string v0, "config_tct.gpdatahub.sdk_type"

    const-string v5, "com.tct"

    .line 142
    invoke-direct {p0, v0, v5}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getResStringFromFramework(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "android"

    .line 144
    invoke-direct {p0, v0, v5}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getResStringFromFramework(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 151
    :cond_5
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mCacheConfig:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    const-string v1, "this is GP Version."

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public setAppBaseInfoAddable(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isAppBaseInfoAddable:Z

    return-void
.end method

.method public setSdkVersionToGp()V
    .locals 1

    const-string v0, "GP"

    .line 199
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->setSdkVersionByCode(Ljava/lang/String;)V

    return-void
.end method

.method public setSdkVersionToRom()V
    .locals 1

    const-string v0, "ROM"

    .line 206
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->setSdkVersionByCode(Ljava/lang/String;)V

    return-void
.end method

.method public setTeyeIdForGP(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    :try_start_0
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TEYEID:Ljava/lang/String;

    sget-object v1, Ltct/gpdatahub/sdk/common/utils/FileUtils;->DATAHUB_FILE_PATH:Ljava/lang/String;

    const-string v2, "teyeId.xml"

    invoke-static {v0, p1, v1, v2}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->writeXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTeyeIdForROM(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/rom/CommonDaoROM;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->setTeyeIdForROM(Ljava/lang/String;)V

    return-void
.end method

.method public setTrackBehaviorFromApp(Z)V
    .locals 3

    .line 56
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->mContext:Landroid/content/Context;

    const-string v1, "appTrackConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isTrackEnableFromApp"

    .line 62
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set the track behavior from app ,isTrackEnableFromApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->TAG:Ljava/lang/String;

    const-string v1, "setTrackBehaviorFromApp failed:"

    invoke-static {v0, v1, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
