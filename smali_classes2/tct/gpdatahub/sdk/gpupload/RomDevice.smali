.class public Ltct/gpdatahub/sdk/gpupload/RomDevice;
.super Ljava/lang/Object;
.source "RomDevice.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/IDeviceProxy;


# static fields
.field private static final INTERNAL_NEXT_TRY_UPLOAD_MILL_SECONDS:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private emulateFailedRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private emulateFailedTasksList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;",
            ">;"
        }
    .end annotation
.end field

.field emulateQueryRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field emulateSuccessRecordDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field emulateSuccessTasksList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field mCurServerConfigVersion:Ljava/lang/String;

.field private mDebugIntervalUploadEnable:Z

.field private mDebugIntervalUploadSeconds:I

.field private mHandleFixedRecUploading:Z

.field private mNextTryRequestConfigExpectTime:J

.field private mNextTryUploadExpectTime:J

.field private mNextTryUploadFixedRecTime:J

.field private mPendingUploadBaseInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingUploadFixedRecs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingUploadTasks:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;",
            "Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingHeadBeat:Z

.field private mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

.field private mUploadingBaseInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ltct/gpdatahub/sdk/gpupload/IProcessor;Landroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    .line 51
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadBaseInfo:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadFixedRecs:Ljava/util/HashSet;

    const-string v0, ""

    .line 57
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mCurServerConfigVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mSendingHeadBeat:Z

    .line 60
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadingBaseInfo:Z

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    .line 63
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mHandleFixedRecUploading:Z

    .line 66
    iput-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    .line 69
    iput-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryRequestConfigExpectTime:J

    .line 71
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadEnable:Z

    .line 72
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadSeconds:I

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->emulateQueryRecords:Ljava/util/ArrayList;

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->emulateSuccessRecordDates:Ljava/util/List;

    .line 660
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->emulateSuccessTasksList:Ljava/util/LinkedList;

    .line 661
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->emulateFailedTasksList:Ljava/util/LinkedList;

    .line 662
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->emulateFailedRecord:Ljava/util/HashMap;

    .line 75
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    .line 76
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;
    .locals 0

    .line 45
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ljava/util/HashSet;
    .locals 0

    .line 45
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadFixedRecs:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$302(Ltct/gpdatahub/sdk/gpupload/RomDevice;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    return-wide p1
.end method

.method static synthetic access$402(Ltct/gpdatahub/sdk/gpupload/RomDevice;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mHandleFixedRecUploading:Z

    return p1
.end method

.method static synthetic access$500(Ltct/gpdatahub/sdk/gpupload/RomDevice;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->isConfigUpdate(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ltct/gpdatahub/sdk/gpupload/IProcessor;
    .locals 0

    .line 45
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    return-object p0
.end method

.method static synthetic access$700(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadEnable:Z

    return p0
.end method

.method static synthetic access$800(Ltct/gpdatahub/sdk/gpupload/RomDevice;)I
    .locals 0

    .line 45
    iget p0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadSeconds:I

    return p0
.end method

.method static synthetic access$902(Ltct/gpdatahub/sdk/gpupload/RomDevice;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mSendingHeadBeat:Z

    return p1
.end method

.method private getConfigSetting()Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;
    .locals 1

    .line 499
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getConfigSetting()Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    move-result-object v0

    return-object v0
.end method

.method private getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;
    .locals 1

    .line 495
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method private isConfigUpdate(Ljava/lang/String;)Z
    .locals 1

    .line 480
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 481
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "version"

    .line 482
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 483
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mCurServerConfigVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mCurServerConfigVersion:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 488
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private scheduleTaskOnGoingIfNeed()V
    .locals 3

    .line 239
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getOnGoingUploadTask()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    .line 240
    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getOnGoingUploadTask()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 243
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    .line 245
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    .line 247
    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableTransform(Z)V

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v0, v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableEncrypt(Z)V

    .line 249
    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableCompress(Z)V

    .line 250
    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableUploading(Z)V

    .line 252
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getOnGoingUploadTask()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v2

    check-cast v2, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->createAndStartUploadStateMachine()V

    goto :goto_0

    .line 259
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    const-string v1, "[scheduleTaskOnGoingIfNeed]: nothing to do "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendHeadBeatToServerIfNeed()V
    .locals 8

    .line 428
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendHeadBeatToServerIfNeed]..mSendingHeadBeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mSendingHeadBeat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableToSendHeartBeat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mSendingHeadBeat:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mSendingHeadBeat:Z

    .line 432
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v0

    .line 433
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 434
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForHeartBeat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 435
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendHeadBeatToServerIfNeed]..url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    new-instance v3, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;

    invoke-direct {v3, p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;-><init>(Ltct/gpdatahub/sdk/gpupload/RomDevice;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->sendHeadBeatToServer(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private updateLastUploadDate(Ljava/lang/String;)V
    .locals 3

    .line 326
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateLastUploadDate]: curDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setLastUploadDate(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 505
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    .line 506
    array-length v1, p3

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v1, v4, :cond_0

    aget-object v1, p3, v5

    const-string v7, "debugUploadBase"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_11

    .line 508
    aget-object p1, p3, v6

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setLastUploadDate(Ljava/lang/String;)V

    .line 509
    aget-object p1, p3, v4

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setExpectTime(Ljava/lang/String;)V

    .line 510
    iput-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    goto/16 :goto_3

    .line 512
    :cond_0
    array-length v1, p3

    const-string v7, "on"

    if-le v1, v6, :cond_2

    aget-object v1, p3, v5

    const-string v8, "debugBeta"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 513
    aget-object p1, p3, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 514
    invoke-static {v6}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->setDebugBetaAddress(Z)V

    goto/16 :goto_3

    .line 516
    :cond_1
    invoke-static {v5}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->setDebugBetaAddress(Z)V

    goto/16 :goto_3

    .line 518
    :cond_2
    array-length v1, p3

    if-le v1, v6, :cond_3

    aget-object v1, p3, v5

    const-string v8, "debugUploadFixed"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_11

    .line 520
    aget-object p1, p3, v6

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setLastUploadFixedRecDate(Ljava/lang/String;)V

    .line 521
    iput-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    goto/16 :goto_3

    .line 523
    :cond_3
    array-length v1, p3

    const-string v2, " , mNextTryUploadFixedRecTime = "

    const/4 v3, 0x3

    if-le v1, v3, :cond_7

    aget-object v1, p3, v5

    const-string v8, "debugNextExpectTime"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNextTryUploadExpectTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getDisplayTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    .line 525
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getDisplayTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , mNextTryRequestConfigExpectTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryRequestConfigExpectTime:J

    .line 526
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getDisplayTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    :try_start_0
    aget-object p1, p3, v6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 529
    aget-object p1, p3, v6

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    .line 531
    :cond_4
    aget-object p1, p3, v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 532
    aget-object p1, p3, v4

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    .line 534
    :cond_5
    aget-object p1, p3, v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 535
    aget-object p1, p3, v3

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryRequestConfigExpectTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "time format request yyyy-MM-dd-HH:mm:SS !!"

    .line 538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " , CurrentHourAndMinuteTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , DisplayTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    .line 542
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 543
    :cond_7
    array-length v1, p3

    if-le v1, v6, :cond_9

    aget-object v1, p3, v5

    const-string v8, "debugLiteVersion"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 544
    aget-object p1, p3, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 545
    invoke-static {v6}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->setDebugUsingLiteVersion(Z)V

    goto/16 :goto_3

    .line 547
    :cond_8
    invoke-static {v5}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->setDebugUsingLiteVersion(Z)V

    goto/16 :goto_3

    .line 549
    :cond_9
    array-length v1, p3

    if-lez v1, :cond_a

    aget-object v1, p3, v5

    const-string v8, "dhttp"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseAddress = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForBaseInfoUpload()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", dailyAddress = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForDailyDataUpload()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", configAddress = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    .line 552
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForServerConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 553
    :cond_a
    array-length v1, p3

    if-le v1, v4, :cond_c

    aget-object v1, p3, v5

    const-string v8, "debugUploadInterval"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 554
    aget-object p1, p3, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 555
    iput-boolean v6, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadEnable:Z

    .line 557
    :try_start_1
    aget-object p1, p3, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadSeconds:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 561
    :cond_b
    iput-boolean v5, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadEnable:Z

    .line 563
    :catch_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDebugIntervalUploadEnable = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadEnable:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mDebugIntervalUploadSeconds = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mDebugIntervalUploadSeconds:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 565
    :cond_c
    array-length v1, p3

    if-lez v1, :cond_11

    aget-object v1, p3, v5

    const-string v7, "dinfo"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_d

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastFixedDate = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadFixedRecDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    .line 569
    invoke-static {v7, v8}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ( time_stamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    .line 570
    invoke-static {v7, v8}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getDisplayTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastUploadDate = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , UploadExpectTime = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getExpectTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , mNextTryUploadExpectTime = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    .line 573
    invoke-static {v8, v9}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    .line 574
    invoke-static {v8, v9}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getDisplayTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    const-string v0, "-----"

    .line 589
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getConfigSetting()Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 592
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Policy:"

    .line 593
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    array-length v1, p3

    if-le v1, v4, :cond_10

    aget-object v1, p3, v6

    const-string v2, "rec"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 597
    array-length v1, p3

    if-le v1, v3, :cond_f

    .line 598
    aget-object v1, p3, v4

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 599
    invoke-virtual {p0, p1, p2, p3, v6}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->dumpRecInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    goto :goto_2

    .line 601
    :cond_e
    invoke-virtual {p0, p1, p2, p3, v5}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->dumpRecInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    goto :goto_2

    .line 604
    :cond_f
    invoke-virtual {p0, p1, p2, p3, v6}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->dumpRecInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 605
    invoke-virtual {p0, p1, p2, p3, v5}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->dumpRecInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    :cond_10
    :goto_2
    const-string p1, "important:"

    .line 609
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "sdk-version: 2.00.26-debug"

    .line 611
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPendingUploadBaseInfo :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadBaseInfo:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    :goto_3
    return-void
.end method

.method public dumpRecInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_1

    .line 637
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->querySuccessUploadDate(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 639
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "successDate(size="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ") :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "-----"

    .line 640
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 642
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\n-----"

    .line 644
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 647
    :cond_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->debugQueryAllFailedRecord(Landroid/content/Context;Ljava/io/PrintWriter;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public handleIntervalJobs()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->sendHeadBeatToServerIfNeed()V

    return-void
.end method

.method public handleNoRecordExist()V
    .locals 4

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    .line 186
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[computeEndRecordId] mNextTryUploadExpectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", curMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleOnApplicationExit()V
    .locals 0

    return-void
.end method

.method public handleOnBootCompleted()V
    .locals 4

    .line 94
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    const-string v1, "[onBootCompleted]: "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getYesterday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setLastUploadDate(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadFixedRecDate()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 108
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getYesterday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setLastUploadFixedRecDate(Ljava/lang/String;)V

    move v0, v1

    .line 111
    :cond_1
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastQueryTime()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 112
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onStart]: getYesterday="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getYesterday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getYesterday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-00:00:01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setLastQueryTime(Ljava/lang/String;)V

    move v0, v1

    .line 116
    :cond_2
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getExpectTime()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 117
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setExpectTime(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 121
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    :cond_4
    return-void
.end method

.method public handleOnDateUpdated()V
    .locals 2

    .line 83
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->readyReceiveEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    .line 89
    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    return-void
.end method

.method public handleOnInsertEvent(JI)V
    .locals 0

    return-void
.end method

.method public handleOnNewPkgRegister(Ljava/lang/String;)V
    .locals 3

    .line 163
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 164
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getConfigSetting()Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->isBaseInfoUploaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadBaseInfo:Ljava/util/List;

    .line 165
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateBaseInfoConfigWhenRegister] pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadBaseInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public handleOnScreenChanged(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 146
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getRequestConfigIntervalHours()I

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryRequestConfigExpectTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 150
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->onRequestConfigFromServer()V

    .line 153
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->schedulerIntervalJobIfNeed()V

    :cond_1
    return-void
.end method

.method public handleOnStart()V
    .locals 0

    return-void
.end method

.method public handleOnStop()V
    .locals 0

    return-void
.end method

.method public handleServerConfigRequestFinish()V
    .locals 6

    .line 192
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getRequestConfigIntervalHours()I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    .line 194
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v4

    invoke-virtual {v4}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getRequestConfigIntervalHours()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryRequestConfigExpectTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 196
    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryRequestConfigExpectTime:J

    :goto_0
    return-void
.end method

.method public handleTaskFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 2

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x1b7740

    add-long/2addr p1, v0

    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    return-void
.end method

.method public handleTaskSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 2

    .line 314
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    const-string v1, "[handleTaskSuccess]: "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 316
    iput-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    .line 317
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->updateLastUploadDate(Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->notifyUpdateExpectTime()V

    return-void
.end method

.method public isEnableSchedulerIntervalJob()Z
    .locals 1

    .line 266
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableToSendHeartBeat()Z

    move-result v0

    return v0
.end method

.method public loadingLocalConfig()V
    .locals 4

    .line 204
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getConfigSetting()Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->getUploadBaseInfos()Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getConfigSetting()Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->getUploadBaseInfos()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    .line 206
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->isUploaded()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadBaseInfo:Ljava/util/List;

    .line 207
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadBaseInfo:Ljava/util/List;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestUploadFixedRec()V
    .locals 5

    .line 272
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    const-string v1, "[requestUploadFixedRec]: "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mHandleFixedRecUploading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mHandleFixedRecUploading:Z

    .line 277
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 278
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForDailyDataUpload()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    new-instance v3, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;

    invoke-direct {v3, p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;-><init>(Ltct/gpdatahub/sdk/gpupload/RomDevice;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->requestUploadFixedRec(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public scheduleNewTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mContext:Landroid/content/Context;

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    .line 219
    invoke-interface {v2}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getUploadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;-><init>(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;Landroid/os/Handler;)V

    .line 230
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mPendingUploadTasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->scheduleTaskOnGoingIfNeed()V

    :cond_0
    return-void
.end method

.method public uploadBaseInfoIdNeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uploadDailyDataIfNeed()Z
    .locals 8

    .line 382
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableToUploadDailyInfo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 383
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentDay()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v2}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object v2

    .line 385
    sget-object v3, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    const-string v4, "[uploadDailyDataIfNeed] enter.."

    invoke-static {v3, v4}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 386
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getLastUploadDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getExpectTime()Ljava/lang/String;

    move-result-object v3

    .line 391
    iget-wide v4, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    invoke-static {v0, v3}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->compareTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 393
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    const-string v3, "[uploadDailyDataIfNeed]: time to expect time to schedule"

    invoke-static {v0, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_0
    iget-wide v3, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadExpectTime:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_1

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v3, v6

    if-gez v0, :cond_1

    .line 398
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    const-string v3, "[uploadDailyDataIfNeed]: time to next expect time to schedule"

    invoke-static {v0, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 402
    invoke-interface {v2}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onRequireUploadNewTask()V

    return v5

    :cond_2
    return v1
.end method

.method public uploadFixedRecIfNeed()Z
    .locals 4

    .line 412
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[uploadFixedRecIfNeed] mNextTryUploadFixedRecTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mNextTryUploadFixedRecTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", curTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableToUploadFixedRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mNextTryUploadFixedRecTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 418
    :cond_0
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mHandleFixedRecUploading:Z

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->onRequestUploadFixedRec()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
