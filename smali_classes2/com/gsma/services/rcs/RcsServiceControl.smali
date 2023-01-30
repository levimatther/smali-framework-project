.class public Lcom/gsma/services/rcs/RcsServiceControl;
.super Ljava/lang/Object;
.source "RcsServiceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;,
        Lcom/gsma/services/rcs/RcsServiceControl$IntentUtils;,
        Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;
    }
.end annotation


# static fields
.field private static final INTENT_RESPONSE_TIMEOUT:J = 0x1f40L

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final RCS_STACK_PACKAGENAME:Ljava/lang/String; = "com.tct.cs.rcs"

.field private static final TIME_SPENT:Ljava/lang/String; = "dur"

.field private static final sAccurateLog:Z = false

.field private static volatile sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

.field private mRestartService:Lcom/gsma/services/rcs/RestartService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    const-class v0, Lcom/gsma/services/rcs/RcsServiceControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RCS]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gsma/services/rcs/RcsServiceControl;->LOG_TAG:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mRestartService:Lcom/gsma/services/rcs/RestartService;

    .line 118
    iput-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    .line 553
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceControl$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl$1;-><init>(Lcom/gsma/services/rcs/RcsServiceControl;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mConnection:Landroid/content/ServiceConnection;

    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 127
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceControl;->registerRcsPackageListener(Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/gsma/rcs/utils/logger/Logger;
    .locals 1

    .line 55
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/RcsServiceControl;)Lcom/gsma/services/rcs/RestartService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mRestartService:Lcom/gsma/services/rcs/RestartService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/gsma/services/rcs/RcsServiceControl;Lcom/gsma/services/rcs/RestartService;)Lcom/gsma/services/rcs/RestartService;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mRestartService:Lcom/gsma/services/rcs/RestartService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/RcsServiceControl;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/gsma/services/rcs/RcsServiceControl;->bindRcsService()V

    return-void
.end method

.method private bindRcsService()V
    .locals 4

    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.rcs.service.RestartService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 580
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    sget-object v1, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start bind,mConnection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private generateIsCompatibeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.action.GET_COMPATIBILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "get_compatibility_service"

    .line 229
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "get_compatibility_codename"

    const-string v1, "GSMA"

    .line 230
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "get_compatibility_version"

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "get_compatibility_increment"

    .line 234
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private generateSetActivationModeIntent(Z)Landroid/content/Intent;
    .locals 2

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.action.SET_ACTIVATION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_activation_mode"

    .line 241
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;
    .locals 2

    .line 137
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    if-eqz v0, :cond_0

    .line 138
    sget-object p0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    return-object p0

    .line 141
    :cond_0
    const-class v0, Lcom/gsma/services/rcs/RcsServiceControl;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 147
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/RcsServiceControl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    goto :goto_0

    .line 144
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    sget-object p0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    return-object p0

    :catchall_0
    move-exception p0

    .line 149
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isRcsRunning()Z
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x3e8

    .line 442
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 444
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.gsma.rcs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private queryRcsStackByIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 269
    new-instance v8, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;-><init>(Lcom/gsma/services/rcs/RcsServiceControl;Lcom/gsma/services/rcs/RcsServiceControl$1;)V

    const-string v0, "com.tct.cs.rcs"

    .line 270
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 275
    invoke-direct {p0, v1}, Lcom/gsma/services/rcs/RcsServiceControl;->trySetIntentForActivePackageAndReceiverInForeground(Landroid/content/Intent;)V

    .line 277
    monitor-enter v8

    .line 279
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ht"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 281
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v8

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f40

    add-long/2addr v0, v2

    .line 287
    :catch_0
    :goto_0
    iget-boolean v2, v8, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;->mHaveResult:Z

    if-nez v2, :cond_2

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 290
    iget-boolean v0, v8, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;->mHaveResult:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "No response to broadcast intent "

    .line 292
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_1
    :try_start_1
    invoke-virtual {v8, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 304
    :try_start_2
    invoke-virtual {v8, p1}, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit v8

    return-object p1

    :catchall_0
    move-exception p1

    .line 305
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private queryRcsStackByIntent(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->queryRcsStackByIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private registerRcsPackageListener(Z)V
    .locals 3

    .line 531
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRcsPackageListener(),isNeedRegister="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPacakgeStateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    if-nez v1, :cond_0

    .line 533
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    invoke-direct {p1, p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;-><init>(Lcom/gsma/services/rcs/RcsServiceControl;Lcom/gsma/services/rcs/RcsServiceControl$1;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    .line 534
    sget-object p1, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRcsPackageListener mPacakgeStateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 535
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 536
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 537
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 540
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    invoke-virtual {v1, v2, p1, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 543
    invoke-direct {p0}, Lcom/gsma/services/rcs/RcsServiceControl;->bindRcsService()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 545
    iget-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    if-eqz p1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    iput-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mPacakgeStateListener:Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;

    :cond_1
    :goto_0
    return-void
.end method

.method private trySetIntentForActivePackageAndReceiverInForeground(Landroid/content/Intent;)V
    .locals 0

    .line 314
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceControl$IntentUtils;->tryToSetExcludeStoppedPackagesFlag(Landroid/content/Intent;)V

    .line 315
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceControl$IntentUtils;->tryToSetReceiverForegroundFlag(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isActivated()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "Query activation mode"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    const-string v0, "com.gsma.services.rcs.action.GET_ACTIVATION_MODE"

    .line 383
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->queryRcsStackByIntent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "get_activation_mode"

    .line 388
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 386
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "Failed to read stack activation mode!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActivationModeChangeable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "Query activation mode changeable"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.gsma.services.rcs.action.GET_ACTIVATION_MODE_CHANGEABLE"

    .line 366
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->queryRcsStackByIntent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "get_activation_mode_changeable"

    .line 371
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 369
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "Failed to read stack activation mode changeable!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "RCS Stack was not started yet"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tct.cs.rcs"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 327
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isCompatible(Lcom/gsma/services/rcs/RcsService;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public isFileTransferActived()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "isFileTransferActived()"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.gsma.services.rcs.action.FILE_TRANSFER_ACTIVE_STATE"

    .line 517
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->queryRcsStackByIntent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "get_file_transfer_active_state"

    .line 522
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 520
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "Failed to query File Transfer active state"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "RCS Stack was not started yet"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isServiceAvailable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.gsma.service.rcs.action.QUERY.RCS.SERVICE.SUPPORT"

    .line 346
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->queryRcsStackByIntent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "query_rcs_service_support"

    .line 351
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 349
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "Failed to read stack rcs register state!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "RCS Stack was not started yet"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isServiceStarted()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 495
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "Query service started"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    const-string v0, "com.gsma.services.rcs.action.GET_SERVICE_STARTING_STATE"

    .line 496
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->queryRcsStackByIntent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "get_service_starting_state"

    .line 501
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 499
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "Failed to query service started!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActivationMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "Query activation mode changeable"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    const-string v0, "com.gsma.services.rcs.action.GET_ACTIVATION_MODE_CHANGEABLE"

    .line 405
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->queryRcsStackByIntent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "get_activation_mode_changeable"

    .line 412
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.action.SET_ACTIVATION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "set_activation_mode"

    .line 419
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->trySetIntentForActivePackageAndReceiverInForeground(Landroid/content/Intent;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceControl;->registerRcsPackageListener(Z)V

    .line 427
    sget-object v1, Lcom/gsma/services/rcs/RcsServiceControl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Set activation mode "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 415
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v0, "Stack activation mode not changeable"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v0, "Failed to set stack activation mode!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
