.class public Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;
.super Ljava/lang/Object;
.source "UploadInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper$BaseFields;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseInfoHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseInfoJsonObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->getBaseInfoJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseInfoJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->makeSystemBaseInfo(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;

    move-result-object v1

    .line 52
    invoke-static {p0, p2}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->makeAppInfo(Landroid/content/Context;Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/model/AppMode;

    move-result-object p0

    :try_start_0
    const-string p2, "teyeId"

    .line 54
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deviceName"

    .line 55
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "model"

    .line 56
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getModel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "brand"

    .line 57
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getBrand()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "androidVersion"

    .line 58
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getAndroidVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "romVersion"

    .line 59
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getRomVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deviceType"

    .line 60
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getDeviceType()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "timeZone"

    .line 61
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getTimeZone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mcc"

    .line 62
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getMcc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isRomDevice"

    .line 63
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->getIsRomDevice()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "appVersion"

    .line 64
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->getAppVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "appInstallSource"

    .line 65
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->getAppInstallSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "packageName"

    .line 66
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "datahub_sdk_version"

    const-string p1, "2.00.26-debug"

    .line 67
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BaseInfoHelper"

    const-string p2, "[getBaseInfoJsonString] put exception!"

    .line 70
    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static isRomDevice(Landroid/content/Context;)Z
    .locals 3

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 79
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 80
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.providers.tctdatahubprovider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static makeAppInfo(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/model/AppMode;
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->makeAppInfo(Landroid/content/Context;Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/model/AppMode;

    move-result-object p0

    return-object p0
.end method

.method private static makeAppInfo(Landroid/content/Context;Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/model/AppMode;
    .locals 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[makeAppInfo] context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInfoHelper"

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/gpupload/model/AppMode;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 111
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 112
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    iget-object p1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 115
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2, p1}, Ltct/gpdatahub/sdk/common/utils/LanguageUtil;->getStringToEnglish(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-virtual {v0, p0}, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->setAppName(Ljava/lang/String;)V

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->setAppVersion(Ljava/lang/String;)V

    .line 118
    iget-object p0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->setAppInstallSource(Ljava/lang/String;)V

    .line 119
    iget-object p0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->setPackageName(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static makeSystemBaseInfo(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;
    .locals 2

    .line 88
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;-><init>()V

    .line 89
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setDeviceName(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setModel(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setBrand(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setAndroidVersion(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getBuildVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setRomVersion(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setDeviceType(I)V

    .line 95
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setTimeZone(Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setMcc(Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->isRomDevice(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->setIsRomDevice(Z)V

    return-object v0
.end method
