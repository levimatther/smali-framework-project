.class public Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static APP_CLOSE:Ljava/lang/String; = null

.field private static APP_OPEN:Ljava/lang/String; = null

.field private static final CHECK_DELAY:I = 0x1f4

.field private static INSERT_STRATEGY:Ljava/lang/String;

.field private static IS_SDK_GP_VERSION:Z

.field private static final TAG:Ljava/lang/String;

.field private static sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

.field private static sInstance:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mForegroundActivityCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInsertOpen:Z

.field private mIsForeground:Z

.field private mPaused:Z

.field private mProcessor:Ltct/gpdatahub/sdk/Processor;

.field private sStartSessionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sInstanceLock:Ljava/lang/Object;

    const-string v0, "COMMON_APP_OPEN"

    .line 51
    sput-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->APP_OPEN:Ljava/lang/String;

    const-string v0, "COMMON_APP_CLOSE"

    .line 52
    sput-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->APP_CLOSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltct/gpdatahub/sdk/Processor;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "activity_lifecycle_callbacks_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mIsForeground:Z

    .line 42
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mPaused:Z

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    .line 53
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mInsertOpen:Z

    .line 57
    iput-object p1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mContext:Landroid/content/Context;

    .line 58
    iget-wide v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sStartSessionTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sStartSessionTime:J

    .line 61
    :cond_0
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    sput-boolean v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->IS_SDK_GP_VERSION:Z

    .line 62
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInsertStrategy()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->INSERT_STRATEGY:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    .line 64
    iget-object p2, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object p1

    sput-object p1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    return-void
.end method

.method static synthetic access$000(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mIsForeground:Z

    return p0
.end method

.method static synthetic access$002(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mIsForeground:Z

    return p1
.end method

.method static synthetic access$100(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mPaused:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 34
    sget-boolean v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->IS_SDK_GP_VERSION:Z

    return v0
.end method

.method static synthetic access$300(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final getInstance(Landroid/content/Context;Ltct/gpdatahub/sdk/Processor;)Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;
    .locals 2

    .line 70
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sInstance:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    invoke-direct {v1, p0, p1}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;-><init>(Landroid/content/Context;Ltct/gpdatahub/sdk/Processor;)V

    sput-object v1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sInstance:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    .line 74
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-object p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sInstance:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    return-object p0

    :catchall_0
    move-exception p0

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private trackActivitySession(Ljava/lang/String;J)V
    .locals 3

    .line 185
    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getTrackBehaviorFromApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    sget-object p1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    const-string p2, "track behavior is not allowed from app"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getTrackFromServer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    sget-object p1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    const-string p2, "track behavior is not allowed from server"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_1
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCallbacks, trackActivitySession, activityName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 197
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 198
    iget-object p3, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {p3, p1, p2}, Ltct/gpdatahub/sdk/Processor;->insertActivitySession(Ljava/lang/String;I)V

    goto :goto_0

    .line 200
    :cond_2
    sget-object p1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    const-string p2, "ActivityLifecycleCallbacks, trackActivitySession, the Activity sessionTime is too large to track."

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public insertAppClose()V
    .locals 5

    .line 216
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCallbacks, trackActivitySession,insertAppOpen,mInsertOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mInsertOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mInsertOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mInsertOpen:Z

    .line 219
    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    sget-object v1, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->APP_CLOSE:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Ltct/gpdatahub/sdk/Processor;->processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public insertAppOpen()V
    .locals 5

    .line 208
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCallbacks, trackActivitySession,insertAppOpen,mInsertOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mInsertOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mInsertOpen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mInsertOpen:Z

    .line 211
    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    sget-object v1, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_TIME:Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->APP_OPEN:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Ltct/gpdatahub/sdk/Processor;->processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public isInForeground()Z
    .locals 3

    .line 177
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCallbacks, is application in foreground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mIsForeground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 94
    sget-object p2, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityLifecycleCallbacks, onActivityCreated, activityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 134
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCallbacks, onActivityDestroyed, activityName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 100
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCallbacks, onActivityPaused, activityName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mPaused:Z

    .line 103
    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sStartSessionTime:J

    sub-long/2addr v0, v2

    .line 109
    invoke-direct {p0, p1, v0, v1}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->trackActivitySession(Ljava/lang/String;J)V

    .line 112
    sget-object p1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->INSERT_STRATEGY:Ljava/lang/String;

    const-string v0, "insert_type_background"

    if-ne p1, v0, :cond_1

    .line 113
    iget-object p1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    new-instance v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks$1;

    invoke-direct {v0, p0}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks$1;-><init>(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->check:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sStartSessionTime:J

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 146
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCallbacks, onActivityResumed, activityName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mPaused:Z

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mIsForeground:Z

    .line 151
    iget-object p1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->check:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 139
    sget-object p2, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityLifecycleCallbacks, onActivitySaveInstanceState, activityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sStartSessionTime:J

    .line 82
    iget v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->insertAppOpen()V

    .line 85
    :cond_0
    iget v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 87
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCallbacks, onActivityStarted, activityName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mForegroundActivityCount "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget v1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    .line 161
    sget-object v1, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityLifecycleCallbacks, onActivityStopped, activityName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mForegroundActivityCount "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->mForegroundActivityCount:I

    if-gtz v0, :cond_0

    .line 164
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->insertAppClose()V

    .line 167
    :try_start_0
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    const-string v1, "sDataHubManagerService, onApplicationExit"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tct/internal/gpdatahub/IDataHubManager;->onApplicationExit(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
