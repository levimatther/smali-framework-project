.class public final Lcom/uber/autodispose/AutoDisposeFlowable;
.super Lio/reactivex/Flowable;
.source "AutoDisposeFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final scope:Lio/reactivex/CompletableSource;

.field public final source:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lio/reactivex/CompletableSource;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/uber/autodispose/AutoDisposeFlowable;->source:Lorg/reactivestreams/Publisher;

    .line 3
    iput-object p2, p0, Lcom/uber/autodispose/AutoDisposeFlowable;->scope:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/AutoDisposeFlowable;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lcom/uber/autodispose/AutoDisposingSubscriberImpl;

    iget-object v2, p0, Lcom/uber/autodispose/AutoDisposeFlowable;->scope:Lio/reactivex/CompletableSource;

    invoke-direct {v1, v2, p1}, Lcom/uber/autodispose/AutoDisposingSubscriberImpl;-><init>(Lio/reactivex/CompletableSource;Lorg/reactivestreams/Subscriber;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
