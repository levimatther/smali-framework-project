.class public Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;
.super Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;
.source "DefaultDialerExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder<",
        "TInputT;TOutputT;>;"
    }
.end annotation


# static fields
.field private static final defaultParallelExecutorService:Ljava/util/concurrent/Executor;

.field private static final defaultSerialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerUiTaskFragment<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end field

.field private final fragmentManager:Landroid/app/FragmentManager;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder$1;

    invoke-direct {v0}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder$1;-><init>()V

    .line 100
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->defaultSerialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 111
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->defaultParallelExecutorService:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;)V"
        }
    .end annotation

    .line 119
    sget-object v4, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->defaultSerialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->defaultParallelExecutorService:Ljava/util/concurrent/Executor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;-><init>(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p3, p4, p5}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;-><init>(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    .line 134
    iput-object p1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->fragmentManager:Landroid/app/FragmentManager;

    .line 135
    iput-object p2, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/dialer/common/concurrent/DialerExecutor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/dialer/common/concurrent/DialerExecutor<",
            "TInputT;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->fragmentManager:Landroid/app/FragmentManager;

    iget-object v1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->id:Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->access$000(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;)Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    move-result-object v2

    .line 146
    invoke-static {p0}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->access$100(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;)Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    move-result-object v3

    .line 147
    invoke-static {p0}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->access$200(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;)Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->serialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->parallelExecutor:Ljava/util/concurrent/Executor;

    .line 142
    invoke-static/range {v0 .. v6}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->create(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    .line 150
    new-instance v0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;

    iget-object v1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;->dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    invoke-direct {v0, v1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;-><init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;)V

    return-object v0
.end method

.method public bridge synthetic onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    return-object p1
.end method
