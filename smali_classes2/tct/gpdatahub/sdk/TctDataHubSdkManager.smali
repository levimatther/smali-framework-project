.class public Ltct/gpdatahub/sdk/TctDataHubSdkManager;
.super Ljava/lang/Object;
.source "TctDataHubSdkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static hasInit:Z

.field private static mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

.field private static mUploadSdkManager:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

.field private static final sObject:Ljava/lang/Object;

.field private static sTctDataHubSdkManager:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

.field private static syncRomTeyeId:Z


# instance fields
.field private mActivityLifecycleCallbacks:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mProcessor:Ltct/gpdatahub/sdk/Processor;

.field private mTeyeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->sObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->hasInit:Z

    .line 57
    sput-boolean v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "datahub_init_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v1, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;

    invoke-direct {v1, p0, p1}, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;-><init>(Ltct/gpdatahub/sdk/TctDataHubSdkManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Ltct/gpdatahub/sdk/TctDataHubSdkManager;Landroid/content/Context;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->contextCheck(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ltct/gpdatahub/sdk/TctDataHubSdkManager;Ltct/gpdatahub/sdk/Processor;)Ltct/gpdatahub/sdk/Processor;
    .locals 0

    .line 48
    iput-object p1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    return-object p1
.end method

.method static synthetic access$302(Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;
    .locals 0

    .line 48
    sput-object p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    return-object p0
.end method

.method static synthetic access$402(Ltct/gpdatahub/sdk/internal/UploadSdkManager;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;
    .locals 0

    .line 48
    sput-object p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mUploadSdkManager:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    return-object p0
.end method

.method static synthetic access$502(Ltct/gpdatahub/sdk/TctDataHubSdkManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 48
    iput-object p1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-static {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Ltct/gpdatahub/sdk/TctDataHubSdkManager;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->registerActivityLifecycleCallbacks()V

    return-void
.end method

.method static synthetic access$800(Ltct/gpdatahub/sdk/TctDataHubSdkManager;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isAppForeground()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Ltct/gpdatahub/sdk/TctDataHubSdkManager;)Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;
    .locals 0

    .line 48
    iget-object p0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mActivityLifecycleCallbacks:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    return-object p0
.end method

.method private contextCheck(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 357
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is null!"

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-nez v1, :cond_2

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is not an Application, quit TctDatahubManager!"

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/TctDataHubSdkManager;
    .locals 2

    .line 111
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->sTctDataHubSdkManager:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 114
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->sObject:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->sTctDataHubSdkManager:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    if-nez v1, :cond_1

    .line 116
    new-instance v1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->sTctDataHubSdkManager:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    .line 118
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    sget-object p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->sTctDataHubSdkManager:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 118
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getTeyeIdFromService()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    .line 259
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0}, Lcom/tct/internal/gpdatahub/IDataHubManager;->getTeyeId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasSyncRomTeyeId()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isRomDevice()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "syncRomTEyeId"

    if-nez v0, :cond_0

    .line 312
    sput-boolean v1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    const-string v0, "not rom device, no need to sync"

    .line 313
    invoke-static {v2, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    sput-boolean v1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    const-string v0, "not gp version, no need to sync"

    .line 318
    invoke-static {v2, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getTEyeId()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->getTeyeId()Ljava/lang/String;

    move-result-object v4

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", romTEyeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uploadConfigInfoTEyeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 328
    iget-object v5, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    if-nez v3, :cond_2

    const-string v3, ""

    .line 334
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setTEyeId(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 338
    sput-boolean v1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 330
    sput-boolean v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    const-string v0, "stop sync"

    .line 331
    invoke-static {v2, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    const-class v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 124
    :try_start_0
    sget-object p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is null!"

    invoke-static {p0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    .line 127
    :cond_0
    :try_start_1
    sget-boolean p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->hasInit:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 128
    sput-boolean p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->hasInit:Z

    .line 129
    sget-object p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "TctDataHub Sdk Version:2.00.26-debug,Build Time:2021-03-23 20:33"

    invoke-static {p0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isAppForeground()Z
    .locals 5

    .line 93
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    return v3

    .line 99
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 100
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "context is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "app in Foreground"

    .line 103
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "app in background"

    .line 106
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    return v3
.end method

.method private isDisableTrackEvent()Z
    .locals 4

    .line 268
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isSdkNotInit()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 270
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 272
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v3, 0x186a0

    div-int/2addr v0, v3

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 274
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "in other user, may not allow to user datahub services, stop track!"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 278
    :cond_2
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gdpr_user_action"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 279
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "user not allow datahub, stop track!"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 291
    :cond_3
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getTrackBehaviorFromApp()Z

    move-result v0

    if-nez v0, :cond_4

    .line 292
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "track behavior is not allowed from app"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 295
    :cond_4
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mUploadSdkManager:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getTrackFromServer()Z

    move-result v0

    if-nez v0, :cond_5

    .line 296
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "track behavior is not allowed from server"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 299
    :cond_5
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "datahub_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    .line 300
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "track behavior is not allowed from server, for module using rom version"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    return v2
.end method

.method private isRomDevice()Z
    .locals 2

    .line 307
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isSdkNotInit()Z
    .locals 2

    .line 343
    sget-boolean v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->hasInit:Z

    if-nez v0, :cond_0

    .line 344
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "SDK not init"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private registerActivityLifecycleCallbacks()V
    .locals 3

    .line 373
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "it\'s ROM version, quit registerActivityLifecycleCallbacks."

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 377
    :cond_0
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isDisableTrackEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 380
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 381
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 383
    iget-object v1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->getInstance(Landroid/content/Context;Ltct/gpdatahub/sdk/Processor;)Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    move-result-object v1

    iput-object v1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mActivityLifecycleCallbacks:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 385
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "registerActivityLifecycleCallbacks."

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_2
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is not an Application, quit."

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltct/gpdatahub/sdk/TctDataHubEventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 161
    :try_start_0
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isDisableTrackEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "trackEventInfo , eventId is null"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 166
    :cond_1
    sget-boolean v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    if-nez v0, :cond_2

    .line 167
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->hasSyncRomTeyeId()V

    :cond_2
    if-eqz p1, :cond_3

    .line 170
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/Processor;->processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltct/gpdatahub/sdk/TctDataHubEventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isDisableTrackEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "trackEventInfo , eventId is null"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "trackEventInfo , pkgName is null"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_2
    sget-boolean v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    if-nez v0, :cond_3

    .line 205
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->hasSyncRomTeyeId()V

    :cond_3
    if-eqz p1, :cond_4

    .line 208
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ltct/gpdatahub/sdk/Processor;->processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getTeyeId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isDisableTrackEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 245
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->getTeyeIdFromService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    .line 248
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getTeyeIdFromROM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    .line 251
    :cond_2
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getTeyeIdFromGP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    .line 254
    :cond_3
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mTeyeId:Ljava/lang/String;

    return-object v0
.end method

.method public trackActivityLifecycle()V
    .locals 1

    .line 220
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isDisableTrackEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/Processor;->trackActivityLifecycle()V

    return-void
.end method

.method public trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, v0, p2, v1}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const-string v4, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    .line 402
    invoke-virtual/range {v1 .. v6}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_0
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "data is null, paraType should be PARA_TYPE_NONE"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v2, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 178
    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const-string v0, ""

    .line 418
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "data type is String, paraType should be PARA_TYPE_BASE or PARA_TYPE_SORT"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isDisableTrackEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 421
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "trackEventInfo , eventId is null"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 425
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "trackEventInfo , pkgName is null"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 429
    :cond_4
    sget-boolean v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    if-nez v0, :cond_5

    .line 430
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->hasSyncRomTeyeId()V

    :cond_5
    if-eqz p1, :cond_6

    .line 433
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ltct/gpdatahub/sdk/Processor;->processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltct/gpdatahub/sdk/TctDataHubEventType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0, p2, p3}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltct/gpdatahub/sdk/TctDataHubEventType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p4, v0, :cond_4

    .line 454
    :try_start_0
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isDisableTrackEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "trackEventInfo , eventId is null"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 459
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "trackEventInfo , pkgName is null"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 463
    :cond_2
    sget-boolean v0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->syncRomTeyeId:Z

    if-nez v0, :cond_3

    .line 464
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->hasSyncRomTeyeId()V

    :cond_3
    if-eqz p1, :cond_5

    .line 467
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ltct/gpdatahub/sdk/Processor;->processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 470
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_4
    sget-object p1, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->TAG:Ljava/lang/String;

    const-string p2, "data type is Map, paraType should be PARA_TYPE_MAP"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltct/gpdatahub/sdk/TctDataHubEventType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 182
    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->trackEventInfo(Ltct/gpdatahub/sdk/TctDataHubEventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public trackThrowableInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 230
    :try_start_0
    invoke-direct {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->isDisableTrackEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v0, p1, p2}, Ltct/gpdatahub/sdk/Processor;->trackThrowableInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
