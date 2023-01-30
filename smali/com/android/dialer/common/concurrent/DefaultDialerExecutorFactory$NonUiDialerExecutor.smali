.class Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;
.super Ljava/lang/Object;
.source "DefaultDialerExecutorFactory.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonUiDialerExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor<",
        "TInputT;>;"
    }
.end annotation


# instance fields
.field private final failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

.field private final parallelExecutor:Ljava/util/concurrent/Executor;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final serialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener<",
            "TOutputT;>;"
        }
    .end annotation
.end field

.field private final worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener<",
            "TOutputT;>;",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    .line 252
    iput-object p2, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    .line 253
    iput-object p3, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    .line 254
    iput-object p4, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->serialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 255
    iput-object p5, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->parallelExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private run(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    invoke-interface {v0, p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;->doInBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    new-instance v0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$4t4zo-dgjmLhH8yi_urZa6URxWg;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$4t4zo-dgjmLhH8yi_urZa6URxWg;-><init>(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 289
    new-instance v0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$rW7kpUk-V_nmgBt99bX4n6sSDTQ;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$rW7kpUk-V_nmgBt99bX4n6sSDTQ;-><init>(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public executeOnCustomExecutorService(Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "TInputT;)V"
        }
    .end annotation

    .line 281
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$WVvEGqUgJOhDBYhM3Yhw5bOhiy4;

    invoke-direct {v0, p0, p2}, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$WVvEGqUgJOhDBYhM3Yhw5bOhiy4;-><init>(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeParallel(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->parallelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$WFa56QemhaBeobFI7T-t7MvSOGA;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$WFa56QemhaBeobFI7T-t7MvSOGA;-><init>(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeSerial(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->serialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$0R1VmAk-D0rDJ1E0uyaHiS4x3w8;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$0R1VmAk-D0rDJ1E0uyaHiS4x3w8;-><init>(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeSerialWithWait(Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;J)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NonUiDialerExecutor.executeSerialWithWait"

    const-string v3, "cancelling waiting task"

    .line 266
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->serialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$3_7-A2UxkBdDjkldSBFyi9gAOGs;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$3_7-A2UxkBdDjkldSBFyi9gAOGs;-><init>(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;Ljava/lang/Object;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 270
    invoke-interface {v0, v1, p2, p3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public synthetic lambda$executeOnCustomExecutorService$3$DefaultDialerExecutorFactory$NonUiDialerExecutor(Ljava/lang/Object;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$executeParallel$2$DefaultDialerExecutorFactory$NonUiDialerExecutor(Ljava/lang/Object;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$executeSerial$0$DefaultDialerExecutorFactory$NonUiDialerExecutor(Ljava/lang/Object;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$executeSerialWithWait$1$DefaultDialerExecutorFactory$NonUiDialerExecutor(Ljava/lang/Object;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$run$4$DefaultDialerExecutorFactory$NonUiDialerExecutor(Ljava/lang/Throwable;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$run$5$DefaultDialerExecutorFactory$NonUiDialerExecutor(Ljava/lang/Object;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
