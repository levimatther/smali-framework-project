.class public final Lio/reactivex/processors/ReplayProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "ReplayProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;,
        Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;,
        Lio/reactivex/processors/ReplayProcessor$TimedNode;,
        Lio/reactivex/processors/ReplayProcessor$Node;,
        Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;,
        Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;,
        Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

.field public static final EMPTY_ARRAY:[Ljava/lang/Object;

.field public static final TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;


# instance fields
.field public final buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public done:Z

.field public final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sput-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    new-array v1, v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 10
    sput-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    new-array v0, v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 13
    sput-object v0, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/processors/ReplayProcessor;->EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/processors/ReplayProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v1, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/processors/ReplayProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 2
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v1, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;

    invoke-direct {v1, p0}, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static createUnbounded()Lio/reactivex/processors/ReplayProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v1, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithSize(I)Lio/reactivex/processors/ReplayProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v1, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;

    invoke-direct {v1, p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/processors/ReplayProcessor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v7, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v7}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)Lio/reactivex/processors/ReplayProcessor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "I)",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v7, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v7}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method


# virtual methods
.method public add(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 2
    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 5
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 7
    new-array v3, v3, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 8
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    aput-object p1, v3, v1

    .line 10
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public cleanupBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->trimHead()V

    return-void
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 2
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getError()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lio/reactivex/processors/ReplayProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 2
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 2
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    .line 6
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 8
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->complete()V

    .line 10
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 11
    invoke-interface {v0, v4}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    .line 9
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 10
    invoke-interface {v0, p1}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 13
    invoke-interface {v0, v3}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 8
    invoke-interface {v0, p1}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 11
    invoke-interface {v0, v3}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 5
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method public remove(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 2
    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    .line 8
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 19
    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 21
    new-array v5, v5, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 22
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 23
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 25
    :goto_2
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->size()I

    move-result v0

    return v0
.end method

.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/ReplayProcessor;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor;->add(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-boolean p1, v0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor;->remove(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {p1, v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    return-void
.end method

.method public subscriberCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v0, v0

    return v0
.end method
