.class public final Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;
.super Ljava/lang/Object;
.source "ParallelMapTry.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelMapTry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParallelMapTrySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field public done:Z

.field public final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final errorHandler:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;"
        }
    .end annotation
.end field

.field public final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field public upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->done:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->done:Z

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

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
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->done:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    :cond_1
    const/4 v0, 0x1

    .line 10
    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null value"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v4

    .line 42
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v5, 0x2

    .line 47
    :try_start_1
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The errorHandler returned a null item"

    invoke-static {v6, v7}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    .line 65
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->cancel()V

    .line 66
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return v1

    .line 67
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->cancel()V

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->onComplete()V

    return v1

    :catchall_1
    move-exception p1

    .line 69
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->cancel()V

    .line 71
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    new-array v3, v5, [Ljava/lang/Throwable;

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
