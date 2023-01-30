.class public final Lio/reactivex/internal/observers/BlockingMultiObserver;
.super Ljava/util/concurrent/CountDownLatch;
.source "BlockingMultiObserver.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/CompletableObserver;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile cancelled:Z

.field public error:Ljava/lang/Throwable;

.field public upstream:Lio/reactivex/disposables/Disposable;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blockingAwait(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->dispose()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->dispose()V

    .line 10
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 13
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blockingGet()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->dispose()V

    .line 7
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->value:Ljava/lang/Object;

    return-object v0

    .line 15
    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blockingGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->dispose()V

    .line 22
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1

    .line 30
    :cond_2
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blockingGetError()Ljava/lang/Throwable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->dispose()V

    return-object v0

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public blockingGetError(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 4

    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 13
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->dispose()V

    .line 16
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->dispose()V

    .line 20
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 23
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->cancelled:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->upstream:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->cancelled:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->value:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
