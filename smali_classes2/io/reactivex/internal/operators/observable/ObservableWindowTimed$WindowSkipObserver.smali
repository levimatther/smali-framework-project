.class public final Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;
.super Lio/reactivex/internal/observers/QueueDrainObserver;
.source "ObservableWindowTimed.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowSkipObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;,
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainObserver<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observable<",
        "TT;>;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final bufferSize:I

.field public volatile terminated:Z

.field public final timeskip:J

.field public final timespan:J

.field public final unit:Ljava/util/concurrent/TimeUnit;

.field public upstream:Lio/reactivex/disposables/Disposable;

.field public final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timeskip:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 6
    iput p8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public complete(Lio/reactivex/subjects/UnicastSubject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;-><init>(Lio/reactivex/subjects/UnicastSubject;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    return-void
.end method

.method public disposeWorker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public drainLoop()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    check-cast v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    .line 10
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->terminated:Z

    if-eqz v5, :cond_1

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 12
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 13
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 14
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    .line 18
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    .line 20
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 23
    :goto_1
    instance-of v8, v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    .line 26
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 27
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/UnicastSubject;

    .line 30
    invoke-virtual {v3, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 33
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    .line 34
    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_3

    .line 37
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 38
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v4, v4

    .line 73
    invoke-virtual {p0, v4}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    if-eqz v8, :cond_a

    .line 74
    check-cast v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    .line 76
    iget-boolean v5, v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->open:Z

    if-eqz v5, :cond_9

    .line 77
    iget-boolean v5, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    if-eqz v5, :cond_8

    goto :goto_0

    .line 81
    :cond_8
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {v5}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v5

    .line 82
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v1, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 85
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;

    invoke-direct {v7, p0, v5}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;Lio/reactivex/subjects/UnicastSubject;)V

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9, v5}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_0

    .line 87
    :cond_9
    iget-object v5, v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->w:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v5, v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->w:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v5}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 89
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    if-eqz v5, :cond_0

    .line 90
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->terminated:Z

    goto/16 :goto_0

    .line 94
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/subjects/UnicastSubject;

    .line 95
    invoke-virtual {v7, v6}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 6
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 7
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    .line 3
    invoke-virtual {v1, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 6
    iget-boolean p1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    if-eqz p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {p1}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;Lio/reactivex/subjects/UnicastSubject;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 16
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timeskip:J

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v5, p0

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;-><init>(Lio/reactivex/subjects/UnicastSubject;Z)V

    .line 4
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    :cond_1
    return-void
.end method
