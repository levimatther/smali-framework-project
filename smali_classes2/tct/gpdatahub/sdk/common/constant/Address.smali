.class public Ltct/gpdatahub/sdk/common/constant/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field public static final CONFUSED_ADDRESS:Ljava/lang/String; = "datahub_host//"

.field public static final CONFUSED_ADDRESS_BETA:Ljava/lang/String; = "datahub_host_beta//"

.field private static DEFAULT_BASE_DATA_SUFFIX:Ljava/lang/String; = null

.field private static DEFAULT_GET_SEVER_CONFIG_ROM_SUFFIX:Ljava/lang/String; = null

.field private static DEFAULT_GET_SEVER_CONFIG_SUFFIX:Ljava/lang/String; = null

.field private static DEFAULT_HEART_BEAT_ADDRESS:Ljava/lang/String; = "collection/configheartbeat"

.field private static DEFAULT_HEART_BEAT_PARAMS:Ljava/lang/String; = "?configurationName=datahub&teyeId=%s&packageName=%s&codeName=%s&deviceName=%s&mcc=%s"

.field public static final DEFAULT_HEART_BEAT_PATH_CUSTOM:Ljava/lang/String;

.field public static final DEFAULT_HEART_BEAT_PATH_CUSTOM_BETA:Ljava/lang/String;

.field private static DEFAULT_HEART_BEAT_SUFFIX:Ljava/lang/String; = null

.field public static final DEFAULT_SERVER_CONFIG_PATH:Ljava/lang/String; = "https://i.tct-rom.com/get-config/?configurationName=datahub&version=-1"

.field public static final DEFAULT_SERVER_CONFIG_PATH_BETA:Ljava/lang/String; = "https://i.tct-rom.com/get-config/?configurationName=datahub_test&version=-1"

.field public static final DEFAULT_SERVER_CONFIG_PATH_CUSTOM:Ljava/lang/String;

.field public static final DEFAULT_SERVER_CONFIG_PATH_CUSTOM_BETA:Ljava/lang/String;

.field public static final DEFAULT_SERVER_CONFIG_PATH_CUSTOM_ROM:Ljava/lang/String;

.field public static final DEFAULT_SERVER_CONFIG_PATH_CUSTOM_ROM_BETA:Ljava/lang/String;

.field public static final DEFAULT_SERVER_T_EVE_ID_PATH:Ljava/lang/String; = "https://i.tct-rom.com/collection/get-teye-id"

.field public static final DEFAULT_UPLOAD_HTTP_BASE_SUFFIX:Ljava/lang/String; = "appBaseData/"

.field public static final DEFAULT_UPLOAD_HTTP_DAILY_SUFFIX:Ljava/lang/String; = "dailyData/"

.field private static HOST:Ljava/lang/String;

.field public static final HOST_BASE:Ljava/lang/String;

.field public static final HOST_BASE_BETA:Ljava/lang/String;

.field private static HOST_BETA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_SUFFIX:Ljava/lang/String;

    const-string v0, "collection/mobile-data/"

    .line 10
    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_BASE_DATA_SUFFIX:Ljava/lang/String;

    const-string v0, "get-config/?configurationName=datahub&version=-1&packageName=%s"

    .line 11
    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_GET_SEVER_CONFIG_SUFFIX:Ljava/lang/String;

    const-string v0, "get-config/?configurationName=datahub&version=-1&packageName=%s&codeName=%s"

    .line 12
    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_GET_SEVER_CONFIG_ROM_SUFFIX:Ljava/lang/String;

    const-string v0, "https://i.tct-rom.com/"

    .line 13
    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->HOST:Ljava/lang/String;

    const-string v0, "https://www.test-teye.com/"

    .line 14
    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BETA:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_BASE_DATA_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BASE:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BETA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_BASE_DATA_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BASE_BETA:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_GET_SEVER_CONFIG_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_SERVER_CONFIG_PATH_CUSTOM:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BETA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_GET_SEVER_CONFIG_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_SERVER_CONFIG_PATH_CUSTOM_BETA:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_GET_SEVER_CONFIG_ROM_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_SERVER_CONFIG_PATH_CUSTOM_ROM:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BETA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_GET_SEVER_CONFIG_ROM_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_SERVER_CONFIG_PATH_CUSTOM_ROM_BETA:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_PATH_CUSTOM:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->HOST_BETA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/Address;->DEFAULT_HEART_BEAT_PATH_CUSTOM_BETA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
