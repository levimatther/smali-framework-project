.class public final Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;
.super Landroid/app/Fragment;
.source "DialerUiTaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Fragment;"
    }
.end annotation


# instance fields
.field private failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

.field private parallelExecutor:Ljava/util/concurrent/Executor;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private serialExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener<",
            "TOutputT;>;"
        }
    .end annotation
.end field

.field private worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static create(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputT:",
            "Ljava/lang/Object;",
            "OutputT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener<",
            "TOutputT;>;",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/dialer/common/concurrent/DialerUiTaskFragment<",
            "TInputT;TOutputT;>;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 88
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialerUiTaskFragment.create"

    const-string v2, "creating new DialerUiTaskFragment"

    .line 91
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    invoke-direct {v0}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;-><init>()V

    .line 93
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    .line 95
    :cond_0
    iput-object p2, v0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    .line 96
    iput-object p3, v0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    .line 97
    iput-object p4, v0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    .line 98
    invoke-static {p5}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p0, v0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->serialExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    invoke-static {p6}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    iput-object p0, v0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->parallelExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private runTask(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation

    const-string v0, "DialerUiTaskFragment.runTask"

    const/4 v1, 0x0

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    invoke-interface {v2, p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;->doInBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 146
    iget-object v2, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    if-nez v2, :cond_0

    const-string p1, "task succeeded but UI is dead"

    new-array v2, v1, [Ljava/lang/Object;

    .line 147
    invoke-static {v0, p1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance v2, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$MlIrFM-XwlICop40uvzZj4KrMic;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$MlIrFM-XwlICop40uvzZj4KrMic;-><init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v2, "task failed"

    .line 152
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    iget-object v2, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    if-nez v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "task failed but UI is dead"

    .line 154
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$D9Z_qgws1UZJIl9sGOHGoyilCMk;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$D9Z_qgws1UZJIl9sGOHGoyilCMk;-><init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method executeOnCustomExecutor(Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "TInputT;)V"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$ShL_iCbPtdBYxRhorxvddPI2rRg;

    invoke-direct {v0, p0, p2}, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$ShL_iCbPtdBYxRhorxvddPI2rRg;-><init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method executeParallel(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->parallelExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$pc9J0ye7IrmJtqAezo5PX0VQki0;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$pc9J0ye7IrmJtqAezo5PX0VQki0;-><init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method executeSerial(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->serialExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$38IIBieHVndTVLwczadru04Hmj4;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$38IIBieHVndTVLwczadru04Hmj4;-><init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method executeSerialWithWait(Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;J)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DialerUiTaskFragment.executeSerialWithWait"

    const-string v3, "cancelling waiting task"

    .line 127
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->serialExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$kF6tP-UI1_nJ2wQvitjAnVNiioo;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$kF6tP-UI1_nJ2wQvitjAnVNiioo;-><init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;Ljava/lang/Object;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    invoke-interface {v0, v1, p2, p3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public synthetic lambda$executeOnCustomExecutor$3$DialerUiTaskFragment(Ljava/lang/Object;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->runTask(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$executeParallel$2$DialerUiTaskFragment(Ljava/lang/Object;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->runTask(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$executeSerial$0$DialerUiTaskFragment(Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->runTask(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$executeSerialWithWait$1$DialerUiTaskFragment(Ljava/lang/Object;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->runTask(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$runTask$4$DialerUiTaskFragment(Ljava/lang/Object;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$runTask$5$DialerUiTaskFragment(Ljava/lang/Throwable;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const-string v0, "DialerUiTaskFragment.onDetach"

    .line 112
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    .line 114
    iput-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    .line 115
    iget-object v1, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 116
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 117
    iput-object v0, p0, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method
