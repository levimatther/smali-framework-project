.class public final Lcom/uber/autodispose/AutoDisposeParallelFlowable;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "AutoDisposeParallelFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final scope:Lio/reactivex/CompletableSource;

.field public final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/CompletableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;",
            "Lio/reactivex/CompletableSource;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/uber/autodispose/AutoDisposeParallelFlowable;->source:Lio/reactivex/parallel/ParallelFlowable;

    .line 3
    iput-object p2, p0, Lcom/uber/autodispose/AutoDisposeParallelFlowable;->scope:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/AutoDisposeParallelFlowable;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/parallel/ParallelFlowable;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 7
    new-instance v2, Lcom/uber/autodispose/AutoDisposingSubscriberImpl;

    iget-object v3, p0, Lcom/uber/autodispose/AutoDisposeParallelFlowable;->scope:Lio/reactivex/CompletableSource;

    aget-object v4, p1, v1

    invoke-direct {v2, v3, v4}, Lcom/uber/autodispose/AutoDisposingSubscriberImpl;-><init>(Lio/reactivex/CompletableSource;Lorg/reactivestreams/Subscriber;)V

    .line 8
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/uber/autodispose/AutoDisposeParallelFlowable;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {p1, v0}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
