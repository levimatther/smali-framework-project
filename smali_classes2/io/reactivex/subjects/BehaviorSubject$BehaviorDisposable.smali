.class public final Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
.super Ljava/lang/Object;
.source "BehaviorSubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/BehaviorSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BehaviorDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile cancelled:Z

.field public final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public emitting:Z

.field public fastPath:Z

.field public index:J

.field public next:Z

.field public queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final state:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/subjects/BehaviorSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->downstream:Lio/reactivex/Observer;

    .line 3
    iput-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, p0}, Lio/reactivex/subjects/BehaviorSubject;->remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V

    :cond_0
    return-void
.end method

.method public emitFirst()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 9
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    if-eqz v0, :cond_2

    .line 10
    monitor-exit p0

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    .line 14
    iget-object v1, v0, Lio/reactivex/subjects/BehaviorSubject;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17
    iget-wide v2, v0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    iput-wide v2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->index:J

    .line 18
    iget-object v0, v0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 21
    :goto_0
    iput-boolean v2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    .line 22
    iput-boolean v1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 30
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitLoop()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public emitLoop()V
    .locals 2

    .line 1
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    .line 9
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public emitNext(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->fastPath:Z

    if-nez v0, :cond_5

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 9
    :cond_1
    iget-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->index:J

    cmp-long p2, v0, p2

    if-nez p2, :cond_2

    .line 10
    monitor-exit p0

    return-void

    .line 12
    :cond_2
    iget-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    if-eqz p2, :cond_4

    .line 13
    iget-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez p2, :cond_3

    .line 15
    new-instance p2, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 16
    iput-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 18
    :cond_3
    invoke-virtual {p2, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 19
    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iput-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->fastPath:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 28
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    return v0
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->downstream:Lio/reactivex/Observer;

    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
