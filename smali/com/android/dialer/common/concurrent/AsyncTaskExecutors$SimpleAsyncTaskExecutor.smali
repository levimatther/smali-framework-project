.class Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$SimpleAsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutors.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleAsyncTaskExecutor"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public varargs submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/os/AsyncTask<",
            "TT;**>;[TT;)",
            "Landroid/os/AsyncTask<",
            "TT;**>;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 89
    iget-object p1, p0, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method
