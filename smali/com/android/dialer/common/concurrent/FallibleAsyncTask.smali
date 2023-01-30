.class public abstract Lcom/android/dialer/common/concurrent/FallibleAsyncTask;
.super Landroid/os/AsyncTask;
.source "FallibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParamsT:",
        "Ljava/lang/Object;",
        "ProgressT:",
        "Ljava/lang/Object;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParamsT;TProgressT;",
        "Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult<",
        "TResultT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParamsT;)",
            "Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult<",
            "TResultT;>;"
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask;->doInBackgroundFallible([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->access$000(Ljava/lang/Object;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->access$100(Ljava/lang/Throwable;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask;->doInBackground([Ljava/lang/Object;)Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;

    move-result-object p1

    return-object p1
.end method

.method protected varargs abstract doInBackgroundFallible([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParamsT;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
