.class public final Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableZip.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZipCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x21ca630c444d714fL


# instance fields
.field public volatile cancelled:Z

.field public final current:[Ljava/lang/Object;

.field public final delayErrors:Z

.field public final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public final subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->downstream:Lorg/reactivestreams/Subscriber;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    .line 4
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    .line 6
    new-array p1, p3, [Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 8
    new-instance p5, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    invoke-direct {p5, p0, p4}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;I)V

    aput-object p5, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-array p2, p3, [Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->current:[Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->downstream:Lorg/reactivestreams/Subscriber;

    .line 6
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    .line 7
    array-length v4, v3

    .line 8
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->current:[Ljava/lang/Object;

    const/4 v7, 0x1

    .line 14
    :cond_1
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    :goto_0
    cmp-long v14, v8, v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v14, :cond_c

    .line 19
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-eqz v0, :cond_2

    return-void

    .line 23
    :cond_2
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 25
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    move/from16 v0, v16

    move v6, v0

    :goto_1
    if-ge v6, v4, :cond_a

    .line 32
    aget-object v10, v3, v6

    .line 33
    aget-object v11, v5, v6

    if-nez v11, :cond_9

    .line 35
    :try_start_0
    iget-boolean v11, v10, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    .line 36
    iget-object v10, v10, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    if-eqz v10, :cond_4

    .line 38
    invoke-interface {v10}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    :cond_4
    move-object v10, v15

    :goto_2
    if-nez v10, :cond_5

    const/16 v17, 0x1

    goto :goto_3

    :cond_5
    move/from16 v17, v16

    :goto_3
    if-eqz v11, :cond_7

    if-eqz v17, :cond_7

    .line 42
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 43
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 45
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 47
    :cond_6
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_4
    return-void

    :cond_7
    if-nez v17, :cond_8

    .line 52
    aput-object v10, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 59
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v10, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 60
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_8

    .line 61
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 62
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_b

    goto :goto_6

    .line 77
    :cond_b
    :try_start_1
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "The zipper returned a null value"

    invoke-static {v0, v6}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v12, v10

    .line 90
    invoke-static {v5, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 91
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 93
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 94
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_6
    if-nez v14, :cond_14

    .line 106
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-eqz v0, :cond_d

    return-void

    .line 110
    :cond_d
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 111
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 112
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_e
    move/from16 v6, v16

    :goto_7
    if-ge v6, v4, :cond_14

    .line 117
    aget-object v0, v3, v6

    .line 118
    aget-object v10, v5, v6

    if-nez v10, :cond_13

    .line 120
    :try_start_2
    iget-boolean v10, v0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    .line 121
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    if-eqz v0, :cond_f

    .line 122
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_f
    move-object v0, v15

    :goto_8
    if-nez v0, :cond_10

    const/4 v11, 0x1

    goto :goto_9

    :cond_10
    move/from16 v11, v16

    :goto_9
    if-eqz v10, :cond_12

    if-eqz v11, :cond_12

    .line 126
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 127
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 129
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 131
    :cond_11
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_a
    return-void

    :cond_12
    if-nez v11, :cond_13

    .line 136
    aput-object v0, v5, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    .line 139
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 140
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v10, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 141
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_13

    .line 142
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 143
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_13
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_14
    const-wide/16 v10, 0x0

    cmp-long v0, v12, v10

    if-eqz v0, :cond_16

    .line 154
    array-length v0, v3

    move/from16 v6, v16

    :goto_c
    if-ge v6, v0, :cond_15

    aget-object v10, v3, v6

    .line 155
    invoke-virtual {v10, v12, v13}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->request(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_15
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v8, v10

    if-eqz v0, :cond_16

    .line 159
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v12

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_16
    neg-int v0, v7

    .line 163
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public error(Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->drain()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->drain()V

    :cond_0
    return-void
.end method

.method public subscribe([Lorg/reactivestreams/Publisher;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 3
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
