.class public final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "ObservableTimeout.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeoutObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x343e2a2afd6bc01eL


# instance fields
.field public final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final itemTimeoutIndicator:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final task:Lio/reactivex/internal/disposables/SequentialDisposable;

.field public final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->downstream:Lio/reactivex/Observer;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 4
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    .line 2
    invoke-virtual {p0, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 11
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 16
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 17
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The itemTimeoutIndicator returned a null ObservableSource."

    .line 18
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;

    invoke-direct {v0, v4, v5, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V

    .line 30
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 32
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 33
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 34
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onTimeout(J)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->downstream:Lio/reactivex/Observer;

    new-instance p2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {p1, p2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onTimeoutError(JLjava/lang/Throwable;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public startFirstTimeout(Lio/reactivex/ObservableSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
