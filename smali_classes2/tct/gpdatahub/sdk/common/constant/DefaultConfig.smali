.class public Ltct/gpdatahub/sdk/common/constant/DefaultConfig;
.super Ljava/lang/Object;
.source "DefaultConfig.java"


# static fields
.field public static final DEFAULT_REQUEST_ENABLE:Ljava/lang/String; = "on"

.field public static final DEFAULT_REQUEST_EVENT:I = 0x64

.field public static final DEFAULT_REQUEST_MAX_FAIL_TIME:I = 0x32

.field public static final DEFAULT_SCHEDULE_INTERVAL_SECOND:I = 0x12c

.field public static final DEFAULT_UPLOAD_POLICY:I = 0x18

.field public static final DEFAULT_UPLOAD_TASK_NEED_COMPRESS:Z = true

.field public static final DEFAULT_UPLOAD_TASK_NEED_ENRYPT:Z = false

.field public static final DEFAULT_UPLOAD_TASK_NEED_SPLIT:Z = false

.field private static final RESTRICT_COUNTRIES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/common/constant/DefaultConfig;->RESTRICT_COUNTRIES:Ljava/util/ArrayList;

    const-string v1, "RU"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Ltct/gpdatahub/sdk/common/constant/DefaultConfig;->RESTRICT_COUNTRIES:Ljava/util/ArrayList;

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestrictCountries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Ltct/gpdatahub/sdk/common/constant/DefaultConfig;->RESTRICT_COUNTRIES:Ljava/util/ArrayList;

    return-object v0
.end method
