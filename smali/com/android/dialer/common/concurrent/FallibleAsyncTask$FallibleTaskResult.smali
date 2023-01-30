.class public abstract Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;
.super Ljava/lang/Object;
.source "FallibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/concurrent/FallibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FallibleTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->createSuccessResult(Ljava/lang/Object;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Throwable;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->createFailureResult(Ljava/lang/Throwable;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;

    move-result-object p0

    return-object p0
.end method

.method private static createFailureResult(Ljava/lang/Throwable;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult<",
            "TResultT;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static createSuccessResult(Ljava/lang/Object;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(TResultT;)",
            "Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult<",
            "TResultT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public isFailure()Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
