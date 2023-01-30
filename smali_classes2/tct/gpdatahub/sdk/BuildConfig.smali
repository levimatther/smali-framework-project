.class public final Ltct/gpdatahub/sdk/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "tct.gpdatahub.sdk"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final IS_SHOW_LOG:Z = true

.field public static final SDK_BUILD_TIME:Ljava/lang/String; = "2021-03-23 20:33"

.field public static final VERSION_CODE:I = 0x4e3a

.field public static final VERSION_NAME:Ljava/lang/String; = "2.00.26-debug"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ltct/gpdatahub/sdk/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
