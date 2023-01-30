.class public final Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;
.super Ljava/lang/Object;
.source "AsyncTaskExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$SimpleAsyncTaskExecutor;,
        Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;
    }
.end annotation


# static fields
.field private static mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAsyncTaskExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;
    .locals 3

    .line 44
    const-class v0, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    invoke-interface {v1}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;->createAsyncTaskExeuctor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 48
    :cond_0
    new-instance v1, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$SimpleAsyncTaskExecutor;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$SimpleAsyncTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createThreadPoolExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;
    .locals 3

    .line 57
    const-class v0, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    invoke-interface {v1}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;->createAsyncTaskExeuctor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 61
    :cond_0
    new-instance v1, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$SimpleAsyncTaskExecutor;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$SimpleAsyncTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setFactoryForTest(Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;)V
    .locals 1

    .line 66
    const-class v0, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;

    monitor-enter v0

    .line 67
    :try_start_0
    sput-object p0, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
