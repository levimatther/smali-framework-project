.class public abstract Lcom/android/dialer/binary/common/DialerApplication;
.super Landroid/app/Application;
.source "DialerApplication.java"

# interfaces
.implements Lcom/android/dialer/inject/HasRootComponent;


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private volatile rootComponent:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private enableStrictMode()V
    .locals 1

    .line 75
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 76
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 77
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 78
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/dialer/binary/common/DialerApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected abstract buildRootComponent()Ljava/lang/Object;
.end method

.method public final component()Ljava/lang/Object;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->rootComponent:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->rootComponent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/binary/common/DialerApplication;->buildRootComponent()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->rootComponent:Ljava/lang/Object;

    .line 100
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "DialerApplication.onCreate"

    .line 50
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/android/dialer/buildtype/BuildType;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/android/dialer/binary/common/DialerApplication;->enableStrictMode()V

    .line 54
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 55
    sput-object p0, Lcom/android/dialer/binary/common/DialerApplication;->sContext:Landroid/content/Context;

    .line 56
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->init(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;

    .line 58
    invoke-virtual {p0}, Lcom/android/dialer/binary/common/DialerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {v2, p0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;

    invoke-direct {v3}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;-><init>(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/common/concurrent/DialerExecutorFactory;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->asyncAutoMigrate()V

    .line 62
    invoke-static {p0}, Lcom/android/dialer/calllog/CallLogComponent;->get(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogComponent;->callLogFramework()Lcom/android/dialer/calllog/CallLogFramework;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/binary/common/DialerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFramework;->registerContentObservers(Landroid/content/Context;)V

    .line 63
    invoke-static {p0}, Lcom/android/dialer/persistentlog/PersistentLogger;->initialize(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/android/dialer/notification/NotificationChannelManager;->initChannels(Landroid/content/Context;)V

    .line 69
    :cond_1
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/operatorutils/IOperatorManager;->applicationOncreate(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
