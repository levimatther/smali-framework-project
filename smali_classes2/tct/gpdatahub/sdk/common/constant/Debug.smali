.class public Ltct/gpdatahub/sdk/common/constant/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final DEBUG_EMULATE_DATA:Z = false

.field public static final DEBUG_ENABLE_DUMPSYS:Z = true

.field public static final DEBUG_NO_DELETE_UPLOAD_FILE:Z

.field public static final DEBUG_PASS_CONFIG_REQUEST:Z = false

.field public static final DEBUG_PASS_TRANSFORM:Z = false

.field public static final DEBUG_SUIT_MEMORY_RATIO:F = 35.0f

.field public static final DEBUG_TIMERLOG_ENABLE:Z = true

.field public static final DEBUG_VERSION:Z = true

.field public static final NO_RELEASE_VERSION:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    if-nez v0, :cond_1

    .line 15
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->isDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    sput-boolean v0, Ltct/gpdatahub/sdk/common/constant/Debug;->DEBUG_NO_DELETE_UPLOAD_FILE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
