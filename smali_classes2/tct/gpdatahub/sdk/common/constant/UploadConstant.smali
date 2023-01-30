.class public Ltct/gpdatahub/sdk/common/constant/UploadConstant;
.super Ljava/lang/Object;
.source "UploadConstant.java"


# static fields
.field public static final DEFAULT_INTERVAL_TIME_SECONDS:I = 0x12c

.field public static final DEFAULT_MAX_EVENTS_FOR_UPLOAD:I = 0x64

.field public static final DEFAULT_MAX_SCHEDULE_HOURS:I = 0x18

.field public static final DEFAULT_MAX_SCHEDULE_NEXT_UPLOAD_FIXED_RECS_MINUTES:I = 0x1e

.field public static final DEFAULT_REQUEST_MAX_FAIL_TIMES:I = 0x32

.field public static final DEFUALT_UPLOAD_REQ_CONTROL_FOR_GP_VERSION:I = 0x6

.field public static final DEFUALT_UPLOAD_REQ_CONTROL_FOR_ROM_LITE_VERSION:I = 0x3

.field public static final DEFUALT_UPLOAD_REQ_CONTROL_FOR_ROM_VERSION:I = 0xf

.field public static final UPLOAD_POLICY_BY_COUNTS:I = 0x1

.field public static final UPLOAD_POLICY_BY_INTERVAL_TIME:I = 0x2

.field public static final UPLOAD_POLICY_BY_REAL_TIME:I = 0x100

.field public static final UPLOAD_POLICY_NETWORK_ALL_AVAILABLE:I = 0x20

.field public static final UPLOAD_POLICY_NETWORK_ONLY_WIFI:I = 0x10

.field public static final UPLOAD_POLICY_ON_APPLICATION_EXIT:I = 0x8

.field public static final UPLOAD_POLICY_ON_SCREEN_CHANGE:I = 0x4

.field public static final UPLOAD_REQ_CONTROL_WITH_BASE_INFO:I = 0x2

.field public static final UPLOAD_REQ_CONTROL_WITH_DAILY_INFO:I = 0x4

.field public static final UPLOAD_REQ_CONTROL_WITH_FIXED_RECORD_INFO:I = 0x8

.field public static final UPLOAD_REQ_CONTROL_WITH_HEART_BEAT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUseHandlePostReplaceJobSchedule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
