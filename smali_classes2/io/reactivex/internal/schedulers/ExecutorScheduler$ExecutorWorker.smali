.class public final Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ExecutorScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExecutorWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$SequentialDispose;,
        Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;
    }
.end annotation


# instance fields
.field public volatile disposed:Z

.field public final executor:Ljava/util/concurrent/Executor;

.field public final queue:Lio/reactivex/internal/queue/MpscLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/MpscLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final tasks:Lio/reactivex/disposables/CompositeDisposable;

.field public final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    .line 7
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->executor:Ljava/util/concurrent/Executor;

    .line 8
    new-instance p1, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {p1}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    const/4 v1, 0x1

    .line 4
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_3

    .line 22
    iget-boolean v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    return-void

    .line 27
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 28
    :cond_3
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 30
    iget-boolean v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 6
    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 12
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    .line 15
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->queue:Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 16
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 17
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    if-eqz v0, :cond_1

    .line 21
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 24
    :cond_1
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 26
    new-instance v1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>(Lio/reactivex/disposables/Disposable;)V

    .line 28
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 30
    new-instance v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;

    new-instance v3, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$SequentialDispose;

    invoke-direct {v3, p0, v1, p1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$SequentialDispose;-><init>(Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;Lio/reactivex/internal/disposables/SequentialDisposable;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V

    .line 31
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->tasks:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 33
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->executor:Ljava/util/concurrent/Executor;

    instance-of v3, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    .line 35
    :try_start_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 36
    invoke-virtual {v2, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;->disposed:Z

    .line 39
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 40
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 43
    :cond_2
    sget-object p1, Lio/reactivex/internal/schedulers/ExecutorScheduler;->HELPER:Lio/reactivex/Scheduler;

    invoke-virtual {p1, v2, p2, p3, p4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 44
    new-instance p2, Lio/reactivex/internal/schedulers/DisposeOnCancel;

    invoke-direct {p2, p1}, Lio/reactivex/internal/schedulers/DisposeOnCancel;-><init>(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {v2, p2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V

    .line 47
    :goto_0
    invoke-virtual {v0, v2}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-object v1
.end method
