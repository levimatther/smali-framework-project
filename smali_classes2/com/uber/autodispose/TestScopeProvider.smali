.class public final Lcom/uber/autodispose/TestScopeProvider;
.super Ljava/lang/Object;
.source "TestScopeProvider.java"

# interfaces
.implements Lcom/uber/autodispose/ScopeProvider;


# instance fields
.field public final innerScope:Lio/reactivex/subjects/CompletableSubject;


# direct methods
.method public constructor <init>(Lio/reactivex/Completable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/reactivex/subjects/CompletableSubject;->create()Lio/reactivex/subjects/CompletableSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/uber/autodispose/TestScopeProvider;->innerScope:Lio/reactivex/subjects/CompletableSubject;

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method

.method public static create()Lcom/uber/autodispose/TestScopeProvider;
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/subjects/CompletableSubject;->create()Lio/reactivex/subjects/CompletableSubject;

    move-result-object v0

    invoke-static {v0}, Lcom/uber/autodispose/TestScopeProvider;->create(Lio/reactivex/Completable;)Lcom/uber/autodispose/TestScopeProvider;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/reactivex/Completable;)Lcom/uber/autodispose/TestScopeProvider;
    .locals 1

    .line 2
    new-instance v0, Lcom/uber/autodispose/TestScopeProvider;

    invoke-direct {v0, p0}, Lcom/uber/autodispose/TestScopeProvider;-><init>(Lio/reactivex/Completable;)V

    return-object v0
.end method


# virtual methods
.method public emit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/TestScopeProvider;->innerScope:Lio/reactivex/subjects/CompletableSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/CompletableSubject;->onComplete()V

    return-void
.end method

.method public requestScope()Lio/reactivex/CompletableSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/TestScopeProvider;->innerScope:Lio/reactivex/subjects/CompletableSubject;

    return-object v0
.end method
