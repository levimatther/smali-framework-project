.class final Lcom/android/voicemail/impl/scheduling/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;,
        Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;,
        Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;,
        Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;,
        Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;
    }
.end annotation


# static fields
.field private static final READY_TOLERANCE_MILLISECONDS:I = 0x64

.field private static final SHORT_SLEEP_THRESHOLD_MILLISECONDS:I = 0x2710

.field private static final STOP_DELAY_MILLISECONDS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "VvmTaskExecutor"

.field private static final TERMINATE_POLLING_INTERVAL_MILLISECONDS:I = 0x3e8

.field private static instance:Lcom/android/voicemail/impl/scheduling/TaskExecutor;


# instance fields
.field private final context:Landroid/content/Context;

.field private isTerminating:Z

.field private isWorkerThreadBusy:Z

.field private job:Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;

.field private final mainThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

.field private messageSender:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;

.field private final stopServiceWithDelay:Ljava/lang/Runnable;

.field private taskAutoRunDisabledForTesting:Z

.field private final tasks:Lcom/android/voicemail/impl/scheduling/TaskQueue;

.field private final workerThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;

    invoke-direct {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->messageSender:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;

    .line 135
    new-instance v0, Lcom/android/voicemail/impl/scheduling/TaskQueue;

    invoke-direct {v0}, Lcom/android/voicemail/impl/scheduling/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->tasks:Lcom/android/voicemail/impl/scheduling/TaskQueue;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isWorkerThreadBusy:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isTerminating:Z

    .line 143
    new-instance v1, Lcom/android/voicemail/impl/scheduling/TaskExecutor$1;

    invoke-direct {v1, p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$1;-><init>(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)V

    iput-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->stopServiceWithDelay:Ljava/lang/Runnable;

    .line 194
    iput-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->taskAutoRunDisabledForTesting:Z

    .line 262
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->context:Landroid/content/Context;

    .line 263
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VvmTaskExecutor"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 266
    new-instance v0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;-><init>(Lcom/android/voicemail/impl/scheduling/TaskExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->workerThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;

    .line 267
    new-instance p1, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;-><init>(Lcom/android/voicemail/impl/scheduling/TaskExecutor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->mainThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isJobRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->job:Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Ljava/util/List;
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->serializePendingTasks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Lcom/android/voicemail/impl/scheduling/TaskQueue;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->tasks:Lcom/android/voicemail/impl/scheduling/TaskQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->mainThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->messageSender:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/voicemail/impl/scheduling/TaskExecutor;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isWorkerThreadBusy:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->maybeRunNextTask()V

    return-void
.end method

.method static createRunningInstance(Landroid/content/Context;)V
    .locals 1

    .line 249
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 250
    sget-object v0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->instance:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    .line 251
    new-instance v0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->instance:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    return-void
.end method

.method private finishJobAsync()V
    .locals 3

    .line 451
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isTerminating()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    .line 452
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    const-string v0, "VvmTaskExecutor"

    const-string v2, "finishing Job"

    .line 453
    invoke-static {v0, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->job:Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;

    invoke-interface {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;->finishAsync()V

    .line 455
    iput-boolean v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isTerminating:Z

    .line 456
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->mainThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->stopServiceWithDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static getRunningInstance()Lcom/android/voicemail/impl/scheduling/TaskExecutor;
    .locals 1

    .line 258
    sget-object v0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->instance:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    return-object v0
.end method

.method private isJobRunning()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->job:Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeRunNextTask()V
    .locals 1

    .line 298
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 300
    iget-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isWorkerThreadBusy:Z

    if-eqz v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->taskAutoRunDisabledForTesting:Z

    if-eqz v0, :cond_1

    return-void

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->runNextTask()V

    return-void
.end method

.method private prepareStop()V
    .locals 4

    const-string v0, "VvmTaskExecutor"

    const-string v1, "no more tasks, stopping service if no task are added in 5000 millis"

    .line 360
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->mainThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->stopServiceWithDelay:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private serializePendingTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getTasks()Lcom/android/voicemail/impl/scheduling/TaskQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->toBundles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private sleep(J)V
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sleep for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VvmTaskExecutor"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->mainThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    new-instance v1, Lcom/android/voicemail/impl/scheduling/TaskExecutor$2;

    invoke-direct {v1, p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$2;-><init>(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->scheduleJobAndTerminate(JZ)V

    return-void
.end method


# virtual methods
.method addTask(Lcom/android/voicemail/impl/scheduling/Task;)V
    .locals 1

    .line 282
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 283
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getTasks()Lcom/android/voicemail/impl/scheduling/TaskQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->add(Lcom/android/voicemail/impl/scheduling/Task;)Z

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " added"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VvmTaskExecutor"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->mainThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->stopServiceWithDelay:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    invoke-direct {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->maybeRunNextTask()V

    return-void
.end method

.method getTasks()Lcom/android/voicemail/impl/scheduling/TaskQueue;
    .locals 1

    .line 292
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 293
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->tasks:Lcom/android/voicemail/impl/scheduling/TaskQueue;

    return-object v0
.end method

.method public isTerminating()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isTerminating:Z

    return v0
.end method

.method public onStartJob(Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "VvmTaskExecutor"

    const-string v1, "onStartJob"

    .line 392
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->job:Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;

    .line 394
    iget-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->tasks:Lcom/android/voicemail/impl/scheduling/TaskQueue;

    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->context:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->fromBundles(Landroid/content/Context;Ljava/util/List;)V

    .line 395
    invoke-direct {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->maybeRunNextTask()V

    return-void
.end method

.method public onStopJob()V
    .locals 3

    const-string v0, "VvmTaskExecutor"

    const-string v1, "onStopJob"

    .line 405
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isJobRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isTerminating()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 407
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->scheduleJobAndTerminate(JZ)V

    :cond_0
    return-void
.end method

.method runNextTask()V
    .locals 3

    .line 315
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 316
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getTasks()Lcom/android/voicemail/impl/scheduling/TaskQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->prepareStop()V

    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getTasks()Lcom/android/voicemail/impl/scheduling/TaskQueue;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->getNextTask(J)Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;

    move-result-object v0

    .line 322
    iget-object v1, v0, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;->task:Lcom/android/voicemail/impl/scheduling/Task;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, v0, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;->task:Lcom/android/voicemail/impl/scheduling/Task;

    invoke-interface {v1}, Lcom/android/voicemail/impl/scheduling/Task;->onBeforeExecute()V

    .line 324
    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->workerThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 325
    iget-object v0, v0, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;->task:Lcom/android/voicemail/impl/scheduling/Task;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isWorkerThreadBusy:Z

    .line 327
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->messageSender:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;->send(Landroid/os/Message;)V

    return-void

    .line 330
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minimal wait time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;->minimalWaitTimeMillis:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VvmTaskExecutor"

    invoke-static {v2, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-boolean v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->taskAutoRunDisabledForTesting:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;->minimalWaitTimeMillis:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 334
    iget-object v0, v0, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;->minimalWaitTimeMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->sleep(J)V

    :cond_2
    return-void
.end method

.method scheduleJobAndTerminate(JZ)V
    .locals 2

    .line 423
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 424
    invoke-direct {p0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->finishJobAsync()V

    .line 425
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->mainThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    new-instance v1, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;-><init>(Lcom/android/voicemail/impl/scheduling/TaskExecutor;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setMessageSenderForTest(Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->messageSender:Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;

    return-void
.end method

.method setTaskAutoRunDisabledForTest(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->taskAutoRunDisabledForTesting:Z

    return-void
.end method

.method terminate()V
    .locals 2

    const-string v0, "VvmTaskExecutor"

    const-string v1, "terminated"

    .line 272
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->job:Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;

    .line 275
    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->workerThreadHandler:Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$WorkerThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 276
    sput-object v0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->instance:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    .line 277
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/voicemail/impl/scheduling/TaskReceiver;->resendDeferredBroadcasts(Landroid/content/Context;)V

    return-void
.end method
