.class abstract Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;
.super Ljava/lang/Object;
.source "DefaultDialerExecutorFactory.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor$Builder<",
        "TInputT;TOutputT;>;"
    }
.end annotation


# instance fields
.field private failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

.field final parallelExecutor:Ljava/util/concurrent/Executor;

.field final serialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener<",
            "TOutputT;>;"
        }
    .end annotation
.end field

.field private final worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$BaseTaskBuilder$ljZdVIZH3VgHNBH_V7Hj0L9MleA;->INSTANCE:Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$BaseTaskBuilder$ljZdVIZH3VgHNBH_V7Hj0L9MleA;

    iput-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    .line 66
    sget-object v0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$BaseTaskBuilder$D6vDBb1osF1Sb57-3h9xIG737pg;->INSTANCE:Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$BaseTaskBuilder$D6vDBb1osF1Sb57-3h9xIG737pg;

    iput-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    .line 77
    iput-object p1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    .line 78
    iput-object p2, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->serialExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    iput-object p3, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->parallelExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;)Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->worker:Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;)Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;)Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    return-object p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;",
            ")",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Builder<",
            "TInputT;TOutputT;>;"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    iput-object p1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->failureListener:Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;

    return-object p0
.end method

.method public onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener<",
            "TOutputT;>;)",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Builder<",
            "TInputT;TOutputT;>;"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    iput-object p1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;->successListener:Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;

    return-object p0
.end method
