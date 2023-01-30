.class public final Ltct/gpdatahub/sdk/common/constant/SdkConstants;
.super Ljava/lang/Object;
.source "SdkConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/common/constant/SdkConstants$DefaultSDKConfig;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVITY_SESSION:Ljava/lang/String; = "ActivitySession"

.field public static final ACTION_PAUSE:Ljava/lang/String; = "pause"

.field public static final ACTION_RESUME:Ljava/lang/String; = "resume"

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.tctdatahubprovider.provider.TctDataHubProvider"

.field public static final COMMON_URI:Landroid/net/Uri;

.field public static final DEBUG_FORCE_USE_GP_VERSION:Z

.field public static final EVENT_URI:Landroid/net/Uri;

.field public static final INSERT_STRATEGY_BACKGROUND:Ljava/lang/String; = "insert_type_background"

.field public static final INSERT_STRATEGY_BATCH:Ljava/lang/String; = "insert_type_batch"

.field public static final INSERT_STRATEGY_ONE:Ljava/lang/String; = "insert_type_one"

.field public static final MINIMUM_SESSION_DURATION:J = 0x0L

.field public static final MOBILE_EVENT_RECORD_BY_DATE_URI:Landroid/net/Uri;

.field public static final MOBILE_EVENT_URI:Landroid/net/Uri;

.field public static final PKG_ANDROID:Ljava/lang/String; = "android"

.field public static final PKG_COM_TCT:Ljava/lang/String; = "com.tct"

.field public static final ROM_AUTHORITY:Ljava/lang/String; = "com.android.providers.tctdatahubprovider.TctDataHubProvider"

.field public static final SDK_TYPE_GP:Ljava/lang/String; = "GP"

.field public static final SDK_TYPE_ROM:Ljava/lang/String; = "ROM"

.field public static final SESSION_TIMEOUT_DURATION:J = 0x7fffffffL

.field public static final SYSTEM_URI:Landroid/net/Uri;

.field public static final TCT_DATAHUB_PROVIDER:Ljava/lang/String; = "com.android.providers.tctdatahubprovider"

.field public static final TCT_DATAHUB_SDK_ENABLE:Ljava/lang/String; = "config_default_datahub_enable"

.field public static final TCT_DATAHUB_SDK_TYPE:Ljava/lang/String; = "config_tct.gpdatahub.sdk_type"

.field public static final TCT_DATAHUB_SDK_TYPE_IS_GP:Ljava/lang/String; = "tct.gpdatahub.sdk_type_is_gp"

.field public static final UPLOAD_URI:Landroid/net/Uri;

.field private static final URI_HEADER:Ljava/lang/String; = "content://"

.field public static final VERSION:Ljava/lang/String; = "tctrom1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.android.tctdatahubprovider.provider.TctDataHubProvider/event"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->EVENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.tctdatahubprovider.provider.TctDataHubProvider/system"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->SYSTEM_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.providers.tctdatahubprovider.TctDataHubProvider/upload"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.providers.tctdatahubprovider.TctDataHubProvider/mobile_event"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->MOBILE_EVENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.providers.tctdatahubprovider.TctDataHubProvider/common"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->COMMON_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.providers.tctdatahubprovider.TctDataHubProvider/mobile_event_record_by_date"

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->MOBILE_EVENT_RECORD_BY_DATE_URI:Landroid/net/Uri;

    const-string v0, "force_gp"

    const/4 v1, 0x2

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->DEBUG_FORCE_USE_GP_VERSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
