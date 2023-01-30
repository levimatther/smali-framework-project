.class public Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;
.super Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;
.source "UploadConfigInfo.java"


# static fields
.field public static final ATTR_DEFAULT_UPLOAD_GRADE:Ljava/lang/String; = "default_upload_grade"

.field public static final ATTR_EXPECT_TIME:Ljava/lang/String; = "expect_time"

.field public static final ATTR_IS_DATAHUB_ENABLE:Ljava/lang/String; = "is_datahub_enable"

.field public static final ATTR_IS_UPLOAD_BASE_INFO:Ljava/lang/String; = "is_upload_base_info"

.field public static final ATTR_IS_USER_SETUP_COMPLETE:Ljava/lang/String; = "is_user_setup_complete"

.field public static final ATTR_LAST_QUERY_TIME:Ljava/lang/String; = "last_query_time"

.field public static final ATTR_LAST_UPLOAD_DATE:Ljava/lang/String; = "last_upload_date"

.field public static final ATTR_LAST_UPLOAD_FIXED_REC_DATE:Ljava/lang/String; = "last_upload_fixed_rec_date"

.field public static final ATTR_MAX_FAILED_TIMES:Ljava/lang/String; = "max_failed_times"

.field public static final ATTR_MAX_MOBILE_EVENTS_FOR_UPLOAD:Ljava/lang/String; = "max_mobile_events_for_upload"

.field public static final ATTR_MAX_RECORDS_TO_QUERY:Ljava/lang/String; = "max_records_to_query"

.field public static final ATTR_PKG_VERSION_CODE:Ljava/lang/String; = "pkg_version_code"

.field public static final ATTR_POLICY_COUNTS_SCHEDULE_INTERVAL_HOURS:Ljava/lang/String; = "counts_policy_schedule_interval_hours"

.field public static final ATTR_REQUEST_CONFIG_INTERVAL_HOURS:Ljava/lang/String; = "request_service_config_interval_hours"

.field public static final ATTR_SCHEDULE_INTERVAL_SECOND:Ljava/lang/String; = "schedule_interval_second"

.field public static final ATTR_SCHEDULE_NEXT_TIME:Ljava/lang/String; = "schedule_next_time"

.field public static final ATTR_T_EYE_ID:Ljava/lang/String; = "teye_id"

.field public static final ATTR_UN_QUERY_MOBILE_EVENT_INDEX:Ljava/lang/String; = "un_query_mobile_event_index"

.field public static final ATTR_UN_UPLOAD_MOBILE_EVENT_INDEX:Ljava/lang/String; = "un_upload_mobile_event_index"

.field public static final ATTR_UPLOAD_CONTROL_REQ_FLAG:Ljava/lang/String; = "upload_control_req_flag"

.field public static final ATTR_UPLOAD_POLICY_FLAG:Ljava/lang/String; = "upload_policy_flag"

.field public static final TAG_UPLOAD:Ljava/lang/String; = "upload"

.field private static sInstance:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mCountsPolicyIntervalHours:I

.field private mDefaultUploadGrade:I

.field private mExpectTime:Ljava/lang/String;

.field private mIntervalTimeSecond:I

.field private mIsDataHubEnable:Z

.field private mIsUploadBaseInfo:Z

.field private mIsUserSetUpComplete:Z

.field private mLastQueryTime:Ljava/lang/String;

.field private mLastUploadDate:Ljava/lang/String;

.field private mLastUploadFixedRecDate:Ljava/lang/String;

.field private mMaxFailedTimes:I

.field private mMaxMobileEventsForUpload:I

.field private mMaxRecordsToQuery:I

.field private mRequestConfigIntervalHours:I

.field private mScheduleNextTime:J

.field private mTEyeId:Ljava/lang/String;

.field private mUnQueryMobileEventIndex:J

.field private mUnUploadMobileEventIndex:J

.field private mUploadControlReqFlag:I

.field private mUploadFixedRecIntervalMinutes:I

.field private mUploadPolicyFlag:I

.field private mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 130
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadDate:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastQueryTime:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mExpectTime:Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mDefaultUploadGrade:I

    const/16 v2, 0x1e

    .line 86
    iput v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxRecordsToQuery:I

    const/16 v3, 0x32

    .line 88
    iput v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxFailedTimes:I

    const/16 v3, 0x12c

    .line 90
    iput v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIntervalTimeSecond:I

    .line 92
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUserSetUpComplete:Z

    const-wide/16 v3, 0x1

    .line 95
    iput-wide v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnUploadMobileEventIndex:J

    .line 96
    iput-wide v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnQueryMobileEventIndex:J

    const/16 v3, 0x64

    .line 97
    iput v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxMobileEventsForUpload:I

    const/4 v3, 0x1

    .line 100
    iput-boolean v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsDataHubEnable:Z

    .line 101
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mTEyeId:Ljava/lang/String;

    .line 103
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadPolicyFlag:I

    .line 106
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUploadBaseInfo:Z

    const-wide/16 v3, 0x0

    .line 108
    iput-wide v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mScheduleNextTime:J

    const/4 v3, -0x1

    .line 111
    iput v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mVersionCode:I

    const/16 v3, 0x18

    .line 114
    iput v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mCountsPolicyIntervalHours:I

    .line 118
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadFixedRecDate:Ljava/lang/String;

    .line 120
    iput v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadFixedRecIntervalMinutes:I

    .line 123
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadControlReqFlag:I

    .line 126
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mRequestConfigIntervalHours:I

    if-nez v1, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppUtils;->isTctLauncher(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x16

    .line 135
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadPolicyFlag:I

    goto :goto_0

    :cond_0
    const-string v0, "android"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    .line 138
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadPolicyFlag:I

    goto :goto_0

    .line 140
    :cond_1
    iput v3, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadPolicyFlag:I

    :cond_2
    :goto_0
    return-void
.end method

.method private getCountsPolicyIntervalHours()I
    .locals 1

    .line 303
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mCountsPolicyIntervalHours:I

    return v0
.end method

.method public static final getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;
    .locals 2

    .line 146
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->sInstance:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    if-nez v0, :cond_1

    .line 147
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->sInstance:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->sInstance:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 151
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 153
    :cond_1
    :goto_0
    sget-object p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->sInstance:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    return-object p0
.end method


# virtual methods
.method public getCountsPolicyIntervalSeconds()I
    .locals 2

    .line 307
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mCountsPolicyIntervalHours:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDefaultUploadGrade()I
    .locals 1

    .line 183
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mDefaultUploadGrade:I

    return v0
.end method

.method public getExpectTime()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mExpectTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalTimeSecond()I
    .locals 1

    .line 208
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIntervalTimeSecond:I

    return v0
.end method

.method public getLastQueryTime()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastQueryTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUploadDate()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUploadFixedRecDate()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadFixedRecDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFailedTimes()I
    .locals 1

    .line 199
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxFailedTimes:I

    return v0
.end method

.method public getMaxMobileEventsForUpload()I
    .locals 1

    .line 260
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxMobileEventsForUpload:I

    return v0
.end method

.method public getMaxRecordsToQuery()I
    .locals 1

    .line 191
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxRecordsToQuery:I

    return v0
.end method

.method public getRequestConfigIntervalHours()I
    .locals 1

    .line 344
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mRequestConfigIntervalHours:I

    return v0
.end method

.method public getScheduleNextTime()J
    .locals 2

    .line 285
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mScheduleNextTime:J

    return-wide v0
.end method

.method public getTEyeId()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mTEyeId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnQueryMobileEventIndex()J
    .locals 2

    .line 252
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnQueryMobileEventIndex:J

    return-wide v0
.end method

.method public getUnUploadMobileEventIndex()J
    .locals 2

    .line 243
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnUploadMobileEventIndex:J

    return-wide v0
.end method

.method public getUploadControlReqFlag()I
    .locals 1

    .line 336
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadControlReqFlag:I

    return v0
.end method

.method protected getUploadFixedRecIntervalMinutes()I
    .locals 1

    .line 324
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadFixedRecIntervalMinutes:I

    return v0
.end method

.method public getUploadFixedRecIntervalSeconds()I
    .locals 2

    .line 332
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadFixedRecIntervalMinutes:I

    const v1, 0xea60

    mul-int/2addr v0, v1

    return v0
.end method

.method public getUploadPolicyFlag()I
    .locals 1

    .line 268
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadPolicyFlag:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 293
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mVersionCode:I

    return v0
.end method

.method public isDataHubEnable()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsDataHubEnable:Z

    return v0
.end method

.method public isUploadBaseInfo()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUploadBaseInfo:Z

    return v0
.end method

.method public isUserSetUpComplete()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUserSetUpComplete:Z

    return v0
.end method

.method public read(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "last_upload_date"

    .line 411
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadDate:Ljava/lang/String;

    const-string v1, "last_query_time"

    .line 412
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastQueryTime:Ljava/lang/String;

    const-string v1, "default_upload_grade"

    .line 413
    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mDefaultUploadGrade:I

    const-string v1, "expect_time"

    .line 414
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mExpectTime:Ljava/lang/String;

    const-string v0, "max_records_to_query"

    .line 415
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxRecordsToQuery:I

    const-string v0, "max_failed_times"

    .line 416
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxFailedTimes:I

    const-string v0, "schedule_interval_second"

    .line 417
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIntervalTimeSecond:I

    const-string v0, "is_user_setup_complete"

    .line 418
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUserSetUpComplete:Z

    const-string v0, "un_upload_mobile_event_index"

    .line 421
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnUploadMobileEventIndex:J

    const-string v0, "un_query_mobile_event_index"

    .line 422
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnQueryMobileEventIndex:J

    const-string v0, "max_mobile_events_for_upload"

    .line 423
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxMobileEventsForUpload:I

    const-string v0, "is_datahub_enable"

    .line 425
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsDataHubEnable:Z

    const-string v0, "teye_id"

    .line 426
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mTEyeId:Ljava/lang/String;

    const-string v0, "upload_policy_flag"

    .line 427
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadPolicyFlag:I

    const-string v0, "is_upload_base_info"

    .line 428
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUploadBaseInfo:Z

    const-string v0, "schedule_next_time"

    .line 429
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mScheduleNextTime:J

    const-string v0, "pkg_version_code"

    .line 430
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mVersionCode:I

    const-string v0, "counts_policy_schedule_interval_hours"

    .line 431
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mCountsPolicyIntervalHours:I

    const-string v0, "last_upload_fixed_rec_date"

    .line 432
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadFixedRecDate:Ljava/lang/String;

    const-string v0, "upload_control_req_flag"

    .line 433
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadControlReqFlag:I

    const-string v0, "request_service_config_interval_hours"

    .line 434
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mRequestConfigIntervalHours:I

    return-void
.end method

.method public bridge synthetic readConfigs()V
    .locals 0

    .line 30
    invoke-super {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->readConfigs()V

    return-void
.end method

.method public bridge synthetic setConfigSettings(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->setConfigSettings(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)V

    return-void
.end method

.method public setCountsPolicyIntervalHours(I)V
    .locals 0

    .line 311
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mCountsPolicyIntervalHours:I

    return-void
.end method

.method public setDataHubEnable(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsDataHubEnable:Z

    return-void
.end method

.method public setDefaultUploadGrade(I)V
    .locals 0

    .line 187
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mDefaultUploadGrade:I

    return-void
.end method

.method public setExpectTime(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mExpectTime:Ljava/lang/String;

    return-void
.end method

.method public setIntervalTimeSecond(I)V
    .locals 0

    .line 212
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIntervalTimeSecond:I

    return-void
.end method

.method public setLastQueryTime(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastQueryTime:Ljava/lang/String;

    return-void
.end method

.method public setLastUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setLastUploadFixedRecDate(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadFixedRecDate:Ljava/lang/String;

    return-void
.end method

.method public setMaxFailedTimes(I)V
    .locals 0

    .line 203
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxFailedTimes:I

    return-void
.end method

.method public setMaxMobileEventsForUpload(I)V
    .locals 0

    .line 264
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxMobileEventsForUpload:I

    return-void
.end method

.method public setMaxRecordsToQuery(I)V
    .locals 0

    .line 195
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxRecordsToQuery:I

    return-void
.end method

.method public setRequestConfigIntervalHours(I)V
    .locals 0

    .line 348
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mRequestConfigIntervalHours:I

    return-void
.end method

.method public setScheduleNextTime(J)V
    .locals 0

    .line 289
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mScheduleNextTime:J

    return-void
.end method

.method public setTEyeId(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mTEyeId:Ljava/lang/String;

    return-void
.end method

.method public setUnQueryMobileEventIndex(J)V
    .locals 0

    .line 256
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnQueryMobileEventIndex:J

    return-void
.end method

.method public setUnUploadMobileEventIndex(J)V
    .locals 0

    .line 247
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnUploadMobileEventIndex:J

    return-void
.end method

.method public setUploadBaseInfo(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUploadBaseInfo:Z

    return-void
.end method

.method public setUploadControlReqFlag(I)V
    .locals 0

    .line 340
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadControlReqFlag:I

    return-void
.end method

.method public setUploadFixedRecIntervalMinutes(I)V
    .locals 0

    .line 328
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadFixedRecIntervalMinutes:I

    return-void
.end method

.method public setUploadPolicyFlag(I)V
    .locals 0

    .line 272
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadPolicyFlag:I

    return-void
.end method

.method public setUserSetUpComplete(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUserSetUpComplete:Z

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 297
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mVersionCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadConfigInfo{mLastUploadDate =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLastQueryTime =\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastQueryTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mExpectTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mExpectTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultUploadGrade ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mDefaultUploadGrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxRecordsToQuery ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxRecordsToQuery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxFailedTimes ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxFailedTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIntervalTimeSecond ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIntervalTimeSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUserSetUpComplete ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUserSetUpComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnUploadMobileEventIndex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnUploadMobileEventIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUnQueryMobileEventIndex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUnQueryMobileEventIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxMobileEventsForUpload ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mMaxMobileEventsForUpload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDataHubEnable ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsDataHubEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTEyeId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mTEyeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUploadPolicyFlag ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadPolicyFlag:I

    .line 368
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsUploadBaseInfo ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mIsUploadBaseInfo:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mScheduleNextTime ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mScheduleNextTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mVersionCode ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCountsPolicyIntervalHours ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mCountsPolicyIntervalHours:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastUploadFixedRecDate ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mLastUploadFixedRecDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mUploadControlReqFlag ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mUploadControlReqFlag:I

    .line 374
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestConfigIntervalHours ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->mRequestConfigIntervalHours:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updateConfigs()V
    .locals 0

    .line 30
    invoke-super {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;->updateConfigs()V

    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "upload"

    .line 381
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_upload_date"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastQueryTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_query_time"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getDefaultUploadGrade()I

    move-result v2

    const-string v3, "default_upload_grade"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 385
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getExpectTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "expect_time"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getMaxRecordsToQuery()I

    move-result v2

    const-string v3, "max_records_to_query"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 387
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getMaxFailedTimes()I

    move-result v2

    const-string v3, "max_failed_times"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 388
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getIntervalTimeSecond()I

    move-result v2

    const-string v3, "schedule_interval_second"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 390
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isUserSetUpComplete()Z

    move-result v2

    const-string v3, "is_user_setup_complete"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 392
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUnUploadMobileEventIndex()J

    move-result-wide v2

    const-string v4, "un_upload_mobile_event_index"

    invoke-static {p1, v4, v2, v3}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 393
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUnQueryMobileEventIndex()J

    move-result-wide v2

    const-string v4, "un_query_mobile_event_index"

    invoke-static {p1, v4, v2, v3}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 394
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getMaxMobileEventsForUpload()I

    move-result v2

    const-string v3, "max_mobile_events_for_upload"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 396
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v2

    const-string v3, "is_datahub_enable"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 397
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "teye_id"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result v2

    const-string v3, "upload_policy_flag"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 399
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isUploadBaseInfo()Z

    move-result v2

    const-string v3, "is_upload_base_info"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 400
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getScheduleNextTime()J

    move-result-wide v2

    const-string v4, "schedule_next_time"

    invoke-static {p1, v4, v2, v3}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 401
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getVersionCode()I

    move-result v2

    const-string v3, "pkg_version_code"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 402
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getCountsPolicyIntervalHours()I

    move-result v2

    const-string v3, "counts_policy_schedule_interval_hours"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 403
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadFixedRecDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_upload_fixed_rec_date"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadControlReqFlag()I

    move-result v2

    const-string v3, "upload_control_req_flag"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 405
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getRequestConfigIntervalHours()I

    move-result v2

    const-string v3, "request_service_config_interval_hours"

    invoke-static {p1, v3, v2}, Ltct/gpdatahub/sdk/common/utils/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 406
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
