.class public Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;
.super Ljava/lang/Object;
.source "ServerManager.java"


# static fields
.field private static final CUSTOM_PKG_FOR_ROM:Ljava/lang/String; = "com.tct.rom"

.field private static debugBetaAddress:Z = false

.field private static debugUsingLiteVersion:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostByVersionType()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->isUsingBetaAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BASE_BETA:Ljava/lang/String;

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getUrlForBaseInfoUpload()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getHostByVersionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appBaseData/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlForDailyDataUpload()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getHostByVersionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dailyData/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlForHeartBeat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 68
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->isUsingBetaAddress()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "com.tct.rom"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_PATH_CUSTOM_BETA:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v6

    aput-object v4, v7, v5

    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object p0, v7, v3

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object p0, v7, v2

    aput-object p1, v7, v1

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_PATH_CUSTOM:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v6

    aput-object v4, v7, v5

    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object p0, v7, v3

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object p0, v7, v2

    aput-object p1, v7, v1

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getUrlForServerConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "https://i.tct-rom.com/get-config/?configurationName=datahub&version=-1"

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object p0

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 34
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->isUsingBetaAddress()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 35
    sget-object p0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_SERVER_CONFIG_PATH_CUSTOM_BETA:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 37
    :cond_1
    sget-object p0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_SERVER_CONFIG_PATH_CUSTOM:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->isUsingBetaAddress()Z

    move-result p0

    const-string p1, "com.tct.rom"

    const/4 v2, 0x2

    if-eqz p0, :cond_4

    .line 41
    sget-object p0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_SERVER_CONFIG_PATH_CUSTOM_ROM_BETA:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    sget-boolean p1, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->debugUsingLiteVersion:Z

    if-eqz p1, :cond_3

    const-string p1, "lite"

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    :goto_0
    aput-object p1, v2, v0

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 43
    :cond_4
    sget-object p0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_SERVER_CONFIG_PATH_CUSTOM_ROM:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object p1, v2, v0

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getUrlForTeyeId()Ljava/lang/String;
    .locals 1

    const-string v0, "https://i.tct-rom.com/collection/get-teye-id"

    return-object v0
.end method

.method public static isDebugBetaAddress()Z
    .locals 1

    .line 88
    sget-boolean v0, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->debugBetaAddress:Z

    return v0
.end method

.method private static isUsingBetaAddress()Z
    .locals 2

    .line 82
    sget-boolean v0, Ltct/gpdatahub/sdk/common/constant/Debug;->NO_RELEASE_VERSION:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "datahub-beta"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->debugBetaAddress:Z

    if-nez v0, :cond_1

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getToken()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static setDebugBetaAddress(Z)V
    .locals 0

    .line 92
    sput-boolean p0, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->debugBetaAddress:Z

    return-void
.end method

.method public static setDebugUsingLiteVersion(Z)V
    .locals 0

    .line 96
    sput-boolean p0, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->debugUsingLiteVersion:Z

    return-void
.end method
