.class public interface abstract Lcom/android/dialer/common/concurrent/DialerExecutor;
.super Ljava/lang/Object;
.source "DialerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;,
        Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;,
        Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;,
        Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract executeOnCustomExecutorService(Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "TInputT;)V"
        }
    .end annotation
.end method

.method public abstract executeParallel(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation
.end method

.method public abstract executeSerial(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation
.end method

.method public abstract executeSerialWithWait(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;J)V"
        }
    .end annotation
.end method
