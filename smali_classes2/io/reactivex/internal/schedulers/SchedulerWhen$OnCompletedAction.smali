.class public Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCompletedAction"
.end annotation


# instance fields
.field public final action:Ljava/lang/Runnable;

.field public final actionCompletable:Lio/reactivex/CompletableObserver;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->action:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->actionCompletable:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->actionCompletable:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;->actionCompletable:Lio/reactivex/CompletableObserver;

    invoke-interface {v1}, Lio/reactivex/CompletableObserver;->onComplete()V

    throw v0
.end method
