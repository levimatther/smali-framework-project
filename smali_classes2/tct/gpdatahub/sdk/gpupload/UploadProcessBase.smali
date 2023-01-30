.class public Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;
.super Ljava/lang/Object;
.source "UploadProcessBase.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;
.implements Ltct/gpdatahub/sdk/gpupload/IProcessor;


# static fields
.field public static final MSG_NEW_UPLOAD_TASK:I = 0x1

.field public static final MSG_NOTIFY_TRANSFORM_DATA_SUCCESS:I = 0xf

.field public static final MSG_ON_ACTIVITY_RESUME:I = 0xb

.field public static final MSG_ON_APPLICATION_EXIT:I = 0xa

.field public static final MSG_ON_BOOT_COMPLETED:I = 0xe

.field public static final MSG_ON_DATE_UPDATE:I = 0x10

.field public static final MSG_ON_NEW_REGISTER_PKG:I = 0x9

.field public static final MSG_ON_SCREEN_CHANGED:I = 0xd

.field public static final MSG_ON_START:I = 0x0

.field public static final MSG_ON_STOP:I = 0x63

.field public static final MSG_REQUEST_CONFIG_FROM_SERVER:I = 0x8

.field public static final MSG_REQUEST_UPLOAD_FIXED_REC:I = 0xc

.field public static final MSG_REQUEST_UPLOAD_NEW_TASK:I = 0x11

.field public static final MSG_SCHEDULE_TASK_ONGOING_IF_NEED:I = 0x5

.field public static final MSG_UPDATE_CONFIG_FROM_SERVER:I = 0x7

.field public static final MSG_UPDATE_EXPECT_TIME:I = 0x6

.field public static final MSG_UPDATE_PENDING_RECORD:I = 0x4

.field public static final MSG_UPLOAD_TASK_FAILED:I = 0x3

.field public static final MSG_UPLOAD_TASK_SUCCESS:I = 0x2

.field public static final REASON_UPLOAD_FAILED_COMPRESS_DATA:I = 0x4

.field public static final REASON_UPLOAD_FAILED_ENCRYPT:I = 0x3

.field public static final REASON_UPLOAD_FAILED_ERROR_PARAMS:I = 0x0

.field public static final REASON_UPLOAD_FAILED_SPLIT_FILES:I = 0x5

.field public static final REASON_UPLOAD_FAILED_TASK_EXIST:I = 0x1

.field public static final REASON_UPLOAD_FAILED_TRANSFORM_DATA:I = 0x2

.field public static final REASON_UPLOAD_FAILED_UPLOADING_DATA:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field intervalRunnable:Ljava/lang/Runnable;

.field private isServerConfigInit:Z

.field private mConfigSetting:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

.field private mContext:Landroid/content/Context;

.field mCurServerConfigVersion:Ljava/lang/String;

.field private mDatahubStateCallback:Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;

.field private mDebugIntervalEnable:Z

.field private mDebugIntervalSeconds:I

.field private mDebugUploadBaseInfo:Z

.field private mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

.field mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

.field private mIsBootCompeted:Z

.field private mIsGpVersion:Z

.field private mIsLocalConfigInit:Z

.field private mIsNetworkAvailable:Z

.field private mIsScreenON:Z

.field private mIsTeyeIdInit:Z

.field private mOnGoingUploadTask:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;",
            "Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestNewTaskLock:Ljava/lang/Object;

.field private mServerConfigRequesting:Z

.field mUploadCallback:Landroid/os/Handler$Callback;

.field private mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

.field private mUploadHandler:Landroid/os/Handler;

.field private mUploadThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 103
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mConfigSetting:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    .line 104
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 107
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    .line 108
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mRequestNewTaskLock:Ljava/lang/Object;

    .line 109
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDatahubStateCallback:Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    const-string v0, ""

    .line 112
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mCurServerConfigVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    .line 124
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsBootCompeted:Z

    .line 126
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    .line 127
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsTeyeIdInit:Z

    .line 128
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    .line 129
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsNetworkAvailable:Z

    .line 130
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsScreenON:Z

    .line 132
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mServerConfigRequesting:Z

    .line 134
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugUploadBaseInfo:Z

    .line 135
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalEnable:Z

    const/16 v0, 0x12c

    .line 136
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalSeconds:I

    .line 139
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;

    invoke-direct {v0, p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;-><init>(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    .line 275
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;

    invoke-direct {v0, p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;-><init>(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadCallback:Landroid/os/Handler$Callback;

    .line 1210
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$5;

    invoke-direct {v0, p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$5;-><init>(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->intervalRunnable:Ljava/lang/Runnable;

    .line 359
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 360
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-UploadThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadThread:Landroid/os/HandlerThread;

    .line 362
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 363
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadCallback:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    .line 365
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result p1

    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-eqz p1, :cond_0

    .line 368
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/GPDevice;

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Ltct/gpdatahub/sdk/gpupload/GPDevice;-><init>(Ltct/gpdatahub/sdk/gpupload/IProcessor;Landroid/content/Context;)V

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    goto :goto_0

    .line 370
    :cond_0
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/RomDevice;

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;-><init>(Ltct/gpdatahub/sdk/gpupload/IProcessor;Landroid/content/Context;)V

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ljava/lang/Object;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleNewUploadTask(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->updateConfigFromServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->requestConfigFromServer()V

    return-void
.end method

.method static synthetic access$1300(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleScreenChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleTransformDataSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    return-void
.end method

.method static synthetic access$1500(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnRequestUploadNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    return-void
.end method

.method static synthetic access$1602(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mServerConfigRequesting:Z

    return p1
.end method

.method static synthetic access$202(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsNetworkAvailable:Z

    return p1
.end method

.method static synthetic access$300(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    return p0
.end method

.method static synthetic access$302(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    return p1
.end method

.method static synthetic access$400(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsTeyeIdInit:Z

    return p0
.end method

.method static synthetic access$402(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsTeyeIdInit:Z

    return p1
.end method

.method static synthetic access$500(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->removeJobSchedulersIfExist()V

    return-void
.end method

.method static synthetic access$600(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    return p0
.end method

.method static synthetic access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;
    .locals 0

    .line 65
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    return-object p0
.end method

.method static synthetic access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;
    .locals 0

    .line 65
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mConfigSetting:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    return-object p0
.end method

.method private computeEndRecordId(J)J
    .locals 10

    .line 443
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getMaxMobileEventsForUpload()I

    move-result v0

    .line 444
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->queryNewestMobileEventId(Landroid/content/Context;)J

    move-result-wide v1

    .line 446
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_0

    int-to-long v6, v0

    add-long v8, p1, v6

    cmp-long v0, v1, v8

    if-ltz v0, :cond_0

    sub-long/2addr v1, p1

    .line 448
    div-long/2addr v1, v6

    mul-long/2addr v1, v6

    add-long v4, p1, v1

    .line 449
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[computeEndRecordId] endRecordId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 452
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[computeEndRecordId] newest="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", lastUnUploadDataIndex="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v1, v4

    if-eqz v0, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-eqz v0, :cond_3

    const-wide/16 v6, 0x1

    cmp-long v0, v1, v6

    if-eqz v0, :cond_1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    add-long v4, p1, v6

    goto :goto_1

    :cond_2
    add-long v4, v1, v6

    goto :goto_1

    .line 455
    :cond_3
    :goto_0
    iget-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-nez p1, :cond_4

    .line 457
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleNoRecordExist()V

    :cond_4
    :goto_1
    return-wide v4
.end method

.method private deleteOverflowDataIfNeed(JJ)J
    .locals 4

    .line 512
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteOverflowDataIfNeed],newInsertId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " unloadIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getMaxFailedTimes()I

    move-result v0

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getMaxMobileEventsForUpload()I

    move-result v1

    mul-int/2addr v0, v1

    sub-long/2addr p1, p3

    int-to-long v1, v0

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    .line 515
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deleteOverflowDataIfNeed],newInsertId - unloadIndex > "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", now start to delete these overflow data..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    add-long/2addr v1, p3

    invoke-static {p1, p3, p4, v1, v2}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->deleteMobileEventById(Landroid/content/Context;JJ)V

    .line 518
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1, v1, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUnUploadMobileEventIndex(J)V

    .line 519
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1, v1, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUnQueryMobileEventIndex(J)V

    .line 520
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 522
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDataHubDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-wide p3, v1

    :cond_0
    return-wide p3
.end method

.method private getTEyeIdFromServer()V
    .locals 7

    const-string v0, "teyeId"

    .line 817
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v2, "[getTEyeIdFromServer]: getTEyeIdFromServer start"

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 821
    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-eqz v2, :cond_1

    .line 822
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getTeyeIdFromROM()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 823
    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getTeyeIdFromROM()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/provider/DataProvider;->queryTeyeIdFromOtherPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 824
    :goto_0
    sget-object v2, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getTEyeIdFromServer]: teyeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 826
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setTEyeId(Ljava/lang/String;)V

    .line 827
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    const/4 v2, 0x1

    .line 828
    iput-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsTeyeIdInit:Z

    .line 830
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 831
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 832
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 833
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 835
    sget-object v2, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v3, "[getTEyeIdFromServer]: getSharedPreferences failed:"

    invoke-static {v2, v3, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 839
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    new-instance v2, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;

    invoke-direct {v2, p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;-><init>(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 875
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForTeyeId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 840
    invoke-static/range {v1 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->getTEyeIdFromServer(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILjava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method private handleNewUploadTask(Ljava/lang/Object;)V
    .locals 1

    .line 1007
    instance-of v0, p1, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    if-eqz v0, :cond_1

    .line 1008
    check-cast p1, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    .line 1009
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->alreadyExistTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1010
    invoke-virtual {p0, v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleTaskFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    goto :goto_0

    .line 1012
    :cond_0
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->scheduleNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1015
    invoke-virtual {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleTaskFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    :goto_0
    return-void
.end method

.method private handleOnRequestUploadNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 378
    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnRequestUploadNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;I)V

    return-void
.end method

.method private handleOnRequestUploadNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;I)V
    .locals 9

    .line 382
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleOnRequestUploadNewTask]: delayMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isServerConfigInit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsTeyeIdInit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsTeyeIdInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mRequestNewTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableToUploadDailyInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isIdleForUploadTask()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_2

    .line 386
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->trackActivityLifecycle()V

    .line 387
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUnUploadMobileEventIndex()J

    move-result-wide v1

    .line 388
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUnQueryMobileEventIndex()J

    move-result-wide v3

    .line 389
    invoke-direct {p0, v1, v2}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->computeEndRecordId(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_1

    cmp-long p1, v1, v5

    if-ltz p1, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;

    invoke-direct {p1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;-><init>()V

    const-string v7, "record"

    .line 397
    invoke-virtual {p1, v7}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->setFileType(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;

    move-result-object p1

    .line 398
    invoke-virtual {p1, v1, v2}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->setStartRecordId(J)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;

    move-result-object p1

    .line 399
    invoke-virtual {p1, v3, v4}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->setUnQueryRecordId(J)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;

    move-result-object p1

    .line 400
    invoke-virtual {p1, v5, v6}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->setEndRecordId(J)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;

    move-result-object p1

    .line 401
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->setDate(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;

    move-result-object p1

    .line 402
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForDailyDataUpload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->setUrl(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;

    move-result-object p1

    .line 403
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->build()Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    move-result-object p1

    goto :goto_1

    .line 392
    :cond_1
    :goto_0
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string p2, "[handleOnRequestUploadNewTask] endRecordId=0 or lastUnUploadDataIndex >= endRecordId, return!!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    monitor-exit v0

    return-void

    :cond_2
    const-string v1, "record"

    .line 405
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 406
    monitor-exit v0

    return-void

    .line 408
    :cond_3
    :goto_1
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 409
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 410
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 412
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleScreenChanged(Z)V
    .locals 3

    .line 540
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleScreenChanged]: screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->removeJobSchedulersIfExist()V

    .line 543
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsScreenON:Z

    .line 544
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleOnScreenChanged(Z)V

    return-void
.end method

.method private handleTransformDataSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 4

    .line 530
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->alreadyExistTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getEndRecordId()J

    move-result-wide v0

    .line 532
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1, v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUnQueryMobileEventIndex(J)V

    .line 533
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 534
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleTransformDataSuccess] lastQueryIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseConfigFromServer(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "on"

    const-string v3, "datahub"

    .line 707
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 708
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v3, p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setDataHubEnable(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "max_mobile_events_un_upload"

    .line 710
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 711
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v4, v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setMaxMobileEventsForUpload(I)V

    const-string v3, "upload_policy_flag"

    .line 712
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 713
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v4, v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUploadPolicyFlag(I)V

    const-string v3, "max_failed_times"

    .line 714
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 715
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v4, v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setMaxFailedTimes(I)V

    const-string v3, "schedule_interval_second"

    .line 716
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 717
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v4, v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setIntervalTimeSecond(I)V

    const-string v3, "counts_policy_schedule_interval_hours"

    .line 719
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 720
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v4, v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setCountsPolicyIntervalHours(I)V

    .line 721
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "switch_off_versions"

    .line 722
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 723
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v1

    .line 724
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    const-string v5, "2.00.26-debug"

    .line 725
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v3, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setDataHubEnable(Z)V

    const-string v3, "datahub need to turn off by version because of server config"

    .line 728
    invoke-static {v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    move v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_1
    const-string v4, "upload_control_req_flag"

    .line 735
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 736
    iget-object v5, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v5, v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUploadControlReqFlag(I)V

    const-string v4, "request_service_config_interval_hours"

    .line 738
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 739
    iget-object v5, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v5, v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setRequestConfigIntervalHours(I)V

    .line 740
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "switch_off_countries"

    .line 741
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 742
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 743
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 744
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    const-string v6, ""

    .line 746
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 748
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 749
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setDataHubEnable(Z)V

    const-string v2, "datahub need to turn off by country because of server config"

    .line 751
    invoke-static {v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    move v2, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move v2, v0

    .line 757
    :goto_3
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_5

    const-string v4, "datahub_enabled"

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 759
    :try_start_2
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 761
    :cond_4
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move v0, v1

    .line 766
    :goto_4
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    return v0
.end method

.method private removeJobSchedulersIfExist()V
    .locals 2

    .line 1197
    invoke-static {}, Ltct/gpdatahub/sdk/common/constant/UploadConstant;->isUseHandlePostReplaceJobSchedule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->intervalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1201
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1204
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/JobSchedulers;->exist(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/JobSchedulers;->cancelScheduler(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestConfigFromServer()V
    .locals 5

    .line 473
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestConfigFromServer]: productName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mServerConfigRequesting:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mServerConfigRequesting:Z

    .line 477
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 478
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->getTEyeIdFromServer()V

    .line 480
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 481
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 482
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForServerConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 483
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    new-instance v3, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$3;

    invoke-direct {v3, p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$3;-><init>(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->requestConfigFromServer(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private updateConfigFromServer(Ljava/lang/String;)V
    .locals 5

    .line 771
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateConfigFromServer]: jsonStr ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    .line 774
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result v1

    .line 775
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadControlReqFlag()I

    move-result v2

    .line 777
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->parseConfigFromServer(Ljava/lang/String;)Z

    move-result p1

    .line 780
    iget-boolean v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalEnable:Z

    if-eqz v3, :cond_0

    .line 781
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    iget v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalSeconds:I

    invoke-virtual {v3, v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setIntervalTimeSecond(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 785
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 788
    :cond_1
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleServerConfigRequestFinish()V

    .line 790
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateConfigFromServer]: onConfigFromServerUpdate (mDatahubStateCallback != null)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDatahubStateCallback:Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result p1

    if-ne v0, p1, :cond_3

    iget-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    if-nez p1, :cond_4

    .line 793
    :cond_3
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateConfigFromServer]: onConfigFromServerUpdate isServerConfigInit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDatahubStateCallback:Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;

    if-eqz p1, :cond_4

    .line 795
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v3

    invoke-interface {p1, v3}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;->notifyConfigFromServerUpdate(Z)V

    .line 800
    :cond_4
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 801
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 802
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 803
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->uploadBaseInfoIdNeed()Z

    .line 808
    :cond_5
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result p1

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 809
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadControlReqFlag()I

    move-result p1

    if-ne v2, p1, :cond_6

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 810
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result p1

    if-eq v0, p1, :cond_7

    .line 811
    :cond_6
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->schedulerIntervalJobIfNeed()V

    :cond_7
    return-void
.end method


# virtual methods
.method public alreadyExistTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z
    .locals 1

    .line 1121
    instance-of v0, p1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1293
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-nez v0, :cond_5

    .line 1294
    array-length v0, p3

    const-string v1, "on"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    aget-object v0, p3, v2

    const-string v4, "debugUploadBaseInfo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    aget-object p1, p3, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1296
    iput-boolean v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugUploadBaseInfo:Z

    goto/16 :goto_1

    .line 1298
    :cond_0
    iput-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugUploadBaseInfo:Z

    goto/16 :goto_1

    .line 1300
    :cond_1
    array-length v0, p3

    const/4 v4, 0x2

    if-le v0, v4, :cond_3

    aget-object v0, p3, v2

    const-string v5, "debugInterval"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1301
    aget-object p1, p3, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1302
    iput-boolean v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalEnable:Z

    .line 1304
    :try_start_0
    aget-object p1, p3, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalSeconds:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1307
    :cond_2
    iput-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalEnable:Z

    .line 1309
    :catch_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDebugIntervalEnable = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalEnable:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mDebugIntervalSeconds = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDebugIntervalSeconds:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1311
    :cond_3
    array-length v0, p3

    if-lez v0, :cond_4

    aget-object v0, p3, v2

    const-string v1, "dinfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "current var :"

    .line 1312
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-----"

    .line 1313
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServerConfigInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsLocalConfigInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsScreenON = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsScreenON:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsNetworkAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsNetworkAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableToUploadDailyInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableToUploadDailyInfo()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableToSendHeartBeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableToSendHeartBeat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableToUploadBaseInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableToUploadBaseInfo()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableToUploadFixedRecord = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableToUploadFixedRecord()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "important info:"

    .line 1322
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "SdkBuildVersion = 2.00.26-debug"

    .line 1324
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 1329
    :cond_4
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getConfigSetting()Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;
    .locals 1

    .line 679
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mConfigSetting:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    return-object v0
.end method

.method public getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;
    .locals 1

    .line 691
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    return-object v0
.end method

.method public getOnGoingUploadTask()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;",
            "Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;",
            ">;"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTEyeId()Ljava/lang/String;
    .locals 3

    .line 649
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    if-eqz v0, :cond_0

    .line 650
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTEyeId]: id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 653
    :goto_0
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v2, "[getTEyeId]:  mUploadConfigInfo = null!!!"

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 654
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getTeyeIdFromROM()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->onRequestConfigFromServer()V

    :cond_1
    return-object v0
.end method

.method public getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;
    .locals 1

    .line 674
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    return-object v0
.end method

.method public getUploadHandler()Landroid/os/Handler;
    .locals 1

    .line 686
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleIntervalJobs()V
    .locals 4

    .line 1089
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleIntervalJobs()V

    .line 1090
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->intervalRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getIntervalTimeSecond()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public handleNoRecordExist()V
    .locals 1

    .line 1095
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleNoRecordExist()V

    return-void
.end method

.method public handleOnApplicationExit()V
    .locals 1

    .line 1082
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleOnApplicationExit()V

    :cond_0
    return-void
.end method

.method public handleOnBootCompleted()V
    .locals 3

    const/4 v0, 0x1

    .line 923
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsBootCompeted:Z

    .line 924
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsScreenON:Z

    .line 929
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleOnBootCompleted]: mIsScreenON="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsScreenON:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsNetworkAvailable:Z

    .line 935
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleOnBootCompleted()V

    .line 937
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 939
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->onRequestConfigFromServer(I)V

    .line 941
    :cond_1
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isUserSetUpComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 943
    :cond_2
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->schedulerIntervalJobIfNeed()V

    :cond_3
    return-void
.end method

.method public handleOnDateUpdated()V
    .locals 1

    .line 914
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->readyReceiveEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleOnDateUpdated()V

    return-void
.end method

.method public handleOnInsertEvent(JI)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_6

    .line 1028
    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->readyReceiveEvent()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 1030
    :cond_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getMaxMobileEventsForUpload()I

    move-result v2

    .line 1031
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUnUploadMobileEventIndex()J

    move-result-wide v3

    if-nez p3, :cond_1

    return-void

    .line 1039
    :cond_1
    invoke-direct {p0, p1, p2, v3, v4}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->deleteOverflowDataIfNeed(JJ)J

    move-result-wide v3

    .line 1041
    iget-object p3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result p3

    .line 1042
    sget-object v5, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onInsertEvent]: maxCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", unloadIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", isIdleForUploadTask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isIdleForUploadTask()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", uploadFlag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1042
    invoke-static {v5, v6}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_5

    cmp-long v5, v3, v0

    if-lez v5, :cond_5

    .line 1045
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isIdleForUploadTask()Z

    move-result v5

    if-eqz v5, :cond_5

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_3

    cmp-long v5, p1, v3

    if-lez v5, :cond_2

    sub-long v5, p1, v3

    int-to-long v7, v2

    .line 1048
    rem-long/2addr v5, v7

    cmp-long v2, v5, v0

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1052
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getScheduleNextTime()J

    move-result-wide v5

    cmp-long v0, v5, v0

    if-eqz v0, :cond_3

    .line 1053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getScheduleNextTime()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gtz v0, :cond_4

    :cond_3
    and-int/lit16 p3, p3, 0x100

    if-eqz p3, :cond_5

    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    cmp-long p1, p1, v3

    if-ltz p1, :cond_5

    .line 1057
    :cond_4
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onRequireUploadNewTask()V

    .line 1061
    :cond_5
    iget-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isIdleForUploadTask()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1063
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->uploadDailyDataIfNeed()Z

    :cond_6
    :goto_0
    return-void
.end method

.method public handleOnNewPkgRegister(Ljava/lang/String;)V
    .locals 1

    .line 1070
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleOnNewPkgRegister(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleOnScreenChanged(Z)V
    .locals 0

    return-void
.end method

.method public handleOnStart()V
    .locals 1

    .line 949
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    if-nez v0, :cond_0

    .line 950
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->loadingLocalConfig()V

    const/4 v0, 0x1

    .line 951
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    .line 953
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleOnStart()V

    return-void
.end method

.method public handleOnStop()V
    .locals 3

    .line 958
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleOnStop()V

    .line 959
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v1, "[handleOnStop]:"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 962
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 963
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    .line 965
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    .line 966
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->stopUploadTask()V

    .line 967
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 970
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public handleServerConfigRequestFinish()V
    .locals 1

    .line 1100
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleServerConfigRequestFinish()V

    return-void
.end method

.method public handleTaskFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 9

    .line 1126
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v1, "[handleTaskFailed]: "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0, p2}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->alreadyExistTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 1131
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDatahubStateCallback:Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;

    if-eqz v1, :cond_0

    .line 1132
    invoke-interface {v1, p1, p2}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;->notifyUploadFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z

    .line 1134
    :cond_0
    move-object v1, p2

    check-cast v1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    .line 1135
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    .line 1137
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 1138
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getStartRecordId()J

    move-result-wide v4

    .line 1139
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v6

    .line 1138
    invoke-static {v3, v4, v5, v6, v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->insertFailedUploadRecordByStartId(Landroid/content/Context;JII)I

    move-result v0

    .line 1140
    sget-object v3, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleTaskFailed]: failedTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getMaxFailedTimes()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1144
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleTaskFailed]: failed more time, drop the data  start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getStartRecordId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    invoke-static {v0, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v3

    .line 1148
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getStartRecordId()J

    move-result-wide v5

    .line 1149
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v7

    .line 1148
    invoke-static {v0, v5, v6, v7, v8}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->deleteMobileEventById(Landroid/content/Context;JJ)V

    .line 1151
    sget-boolean v0, Ltct/gpdatahub/sdk/common/constant/Debug;->DEBUG_NO_DELETE_UPLOAD_FILE:Z

    if-nez v0, :cond_1

    .line 1152
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 1154
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0, v3, v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUnUploadMobileEventIndex(J)V

    .line 1158
    :cond_2
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1159
    invoke-virtual {v5}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getCountsPolicyIntervalSeconds()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 1158
    invoke-virtual {v0, v3, v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setScheduleNextTime(J)V

    .line 1161
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUnQueryMobileEventIndex(J)V

    .line 1162
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 1165
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0, p1, v1}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleTaskFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    .line 1167
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    :try_start_0
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->stopUploadTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public handleTaskSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 9

    .line 573
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v1, "[handleTaskSuccess]: "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    instance-of v0, p1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    .line 575
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    move-object v0, p1

    check-cast v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    .line 578
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    .line 580
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDatahubStateCallback:Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;

    if-eqz v2, :cond_0

    .line 581
    invoke-interface {v2, p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;->notifyUploadSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    .line 587
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "uploadSize"

    .line 588
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getAddParams()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 591
    sget-object v3, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    :goto_0
    move-object v8, v2

    .line 593
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 594
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getStartRecordId()J

    move-result-wide v4

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEventType()I

    move-result v6

    .line 595
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v7

    .line 594
    invoke-static/range {v3 .. v8}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->insertSuccessUploadRecordByStartId(Landroid/content/Context;JIILjava/lang/String;)I

    .line 597
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getStartRecordId()J

    move-result-wide v3

    .line 598
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v5

    .line 597
    invoke-static {v2, v3, v4, v5, v6}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->deleteMobileEventById(Landroid/content/Context;JJ)V

    .line 600
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 601
    invoke-virtual {v5}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getCountsPolicyIntervalSeconds()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 600
    invoke-virtual {v2, v3, v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setScheduleNextTime(J)V

    .line 602
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->getEndRecordId()J

    move-result-wide v2

    .line 603
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0, v2, v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUnUploadMobileEventIndex(J)V

    .line 604
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0, v2, v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUnQueryMobileEventIndex(J)V

    .line 605
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 608
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->handleTaskSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    .line 610
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleTaskSuccess]: update lastUnUploadDataIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getAddParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->stopUploadTask()V

    :cond_1
    return-void
.end method

.method public isEnableDataHub()Z
    .locals 3

    .line 622
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 623
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v2, "[isEnableDataHub]: Local configuration not init !"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 626
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-static {}, Ltct/gpdatahub/sdk/common/constant/DefaultConfig;->getRestrictCountries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isEnableScheduleUtilScreenOff()Z
    .locals 2

    .line 640
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEnableSchedulerIntervalJob()Z
    .locals 1

    .line 1116
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->isEnableSchedulerIntervalJob()Z

    move-result v0

    return v0
.end method

.method public isEnableToSendHeartBeat()Z
    .locals 2

    .line 1249
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1250
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadControlReqFlag()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 1251
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnableToUploadBaseInfo()Z
    .locals 1

    .line 1232
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1233
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadControlReqFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsNetworkAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableToUploadDailyInfo()Z
    .locals 3

    .line 1239
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1240
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadControlReqFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1241
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result v2

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->isFitNetworkNow(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 1243
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gdpr_user_action"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnableToUploadFixedRecord()Z
    .locals 3

    .line 1221
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1222
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadControlReqFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1223
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadFixedRecDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1224
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadFixedRecDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsNetworkAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    .line 1227
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gdpr_user_action"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnableUploadOnApplicationExit()Z
    .locals 1

    .line 1256
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1257
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1258
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableUploadOnIntervalTime()Z
    .locals 1

    .line 1270
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1271
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1272
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableUploadOnScreenChanged()Z
    .locals 1

    .line 1263
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1264
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 1265
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdleForUploadTask()Z
    .locals 1

    .line 1111
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mOnGoingUploadTask:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isMaybeNewRecordGenerate()Z
    .locals 4

    .line 634
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->queryNewestMobileEventId(Landroid/content/Context;)J

    move-result-wide v0

    .line 635
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUnUploadMobileEventIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServerConfigInit()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isServerConfigInit:Z

    return v0
.end method

.method public isTeyeIdInit()Z
    .locals 1

    .line 669
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsTeyeIdInit:Z

    return v0
.end method

.method public loadingLocalConfig()V
    .locals 2

    .line 976
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    .line 977
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mConfigSetting:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    .line 978
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->setUploadConfigInfo(Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;)V

    .line 979
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mConfigSetting:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setConfigSettings(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)V

    .line 982
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->readConfigs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 985
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :goto_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 989
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsTeyeIdInit:Z

    .line 993
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->loadingLocalConfig()V

    return-void
.end method

.method public notifyUpdateExpectTime()V
    .locals 4

    .line 1345
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1347
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onRequestConfigFromServer()V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->onRequestConfigFromServer(I)V

    return-void
.end method

.method public onRequestConfigFromServer(I)V
    .locals 4

    .line 422
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 424
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onRequestUploadFixedRec()V
    .locals 2

    .line 429
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 431
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public readyReceiveEvent()Z
    .locals 3

    .line 1277
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-eqz v0, :cond_0

    .line 1279
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsLocalConfigInit:Z

    return v0

    .line 1280
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isUserSetUpComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsBootCompeted:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1282
    :cond_2
    :goto_0
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[readyReceiveEvent] return false!! userComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isUserSetUpComplete()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsBootCompeted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsBootCompeted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public requestUploadFixedRec()V
    .locals 2

    .line 435
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v1, "[requestUploadFixedRec]: "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableToUploadFixedRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->requestUploadFixedRec()V

    :cond_0
    return-void
.end method

.method public scheduleNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 1

    .line 1106
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->scheduleNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    return-void
.end method

.method public schedulerIntervalJobIfNeed()V
    .locals 4

    .line 1183
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->removeJobSchedulersIfExist()V

    .line 1186
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableSchedulerIntervalJob()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsScreenON:Z

    if-eqz v0, :cond_1

    .line 1187
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v1, "[schedulerIntervalJobIfNeed]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-static {}, Ltct/gpdatahub/sdk/common/constant/UploadConstant;->isUseHandlePostReplaceJobSchedule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->intervalRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1191
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getIntervalTimeSecond()I

    move-result v2

    invoke-static {v0, v1, v2}, Ltct/gpdatahub/sdk/gpupload/JobSchedulers;->scheduler(Landroid/content/Context;II)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setDatahubStateCallback(Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;)V
    .locals 0

    .line 1338
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDatahubStateCallback:Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;

    return-void
.end method

.method protected setUserSetUpComplete(Z)V
    .locals 1

    .line 549
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUserSetUpComplete(Z)V

    .line 550
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    return-void
.end method

.method protected updateExpectTime()V
    .locals 4

    .line 556
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->querySuccessUploadTime(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 557
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getExpectTime()Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 560
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->calWhichTimeFrequent(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_0
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime()Ljava/lang/String;

    move-result-object v0

    .line 564
    :goto_0
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateExpectTime]: setExpectTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v1, v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setExpectTime(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    return-void
.end method

.method public uploadBaseInfoIdNeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uploadDailyDataIfNeed()Z
    .locals 2

    .line 892
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    const-string v1, "[uploadDailyDataIfNeed] enter.."

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableToUploadDailyInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->uploadDailyDataIfNeed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uploadFixedRecIfNeed()Z
    .locals 3

    .line 901
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[uploadFixedRecIfNeed] fixDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadFixedRecDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toDay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableToUploadFixedRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mIsGpVersion:Z

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->mDevice:Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;->uploadFixedRecIfNeed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
