.class Lcom/google/common/util/concurrent/MoreExecutors$Application;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 261
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DelayedShutdownHook-for-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;-><init>(Lcom/google/common/util/concurrent/MoreExecutors$Application;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 264
    invoke-static {v0, v7}, Lcom/google/common/util/concurrent/MoreExecutors;->newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method addShutdownHook(Ljava/lang/Thread;)V
    .locals 1

    .line 286
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method final getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 243
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method

.method final getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 236
    invoke-static {p1}, Lcom/google/common/util/concurrent/MoreExecutors;->access$000(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 237
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 238
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method final getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 256
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method

.method final getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 248
    invoke-static {p1}, Lcom/google/common/util/concurrent/MoreExecutors;->access$000(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 249
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method
