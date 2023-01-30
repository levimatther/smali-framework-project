.class public final Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableWindow.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowOverlapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x21b3dc811227de88L


# instance fields
.field public final bufferSize:I

.field public volatile cancelled:Z

.field public volatile done:Z

.field public final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public error:Ljava/lang/Throwable;

.field public final firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public index:J

.field public final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public produced:J

.field public final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public final size:J

.field public final skip:J

.field public upstream:Lorg/reactivestreams/Subscription;

.field public final windows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    .line 4
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    .line 5
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {p1, p6}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->bufferSize:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->run()V

    :cond_0
    return-void
.end method

.method public checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "*>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 11
    invoke-interface {p3, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 15
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public drain()V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 6
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v2, 0x1

    move v3, v2

    .line 11
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    .line 15
    iget-boolean v11, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    .line 17
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/reactivex/processors/UnicastProcessor;

    if-nez v12, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 21
    :goto_1
    invoke-virtual {p0, v11, v13, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    .line 29
    :cond_4
    invoke-interface {v0, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    .line 35
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    cmp-long v6, v8, v6

    if-eqz v6, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 41
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 44
    :cond_7
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Processor;

    .line 6
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Processor;

    .line 7
    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 11
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    .line 13
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 8
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 11
    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->bufferSize:I

    invoke-static {v4, p0}, Lio/reactivex/processors/UnicastProcessor;->create(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 15
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v5, v4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 22
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/reactivestreams/Processor;

    .line 23
    invoke-interface {v7, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_2
    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    add-long/2addr v6, v4

    .line 27
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_3

    .line 28
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    sub-long/2addr v6, v4

    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    .line 30
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/Processor;

    if-eqz p1, :cond_4

    .line 32
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    .line 35
    :cond_3
    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    .line 38
    :cond_4
    :goto_1
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_5

    .line 39
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    goto :goto_2

    .line 41
    :cond_5
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    :goto_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide p1

    .line 6
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 9
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide p1

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method
