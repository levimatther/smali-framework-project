.class public interface abstract Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
.super Ljava/lang/Object;
.source "DialerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/concurrent/DialerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/android/dialer/common/concurrent/DialerExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/dialer/common/concurrent/DialerExecutor<",
            "TInputT;>;"
        }
    .end annotation
.end method

.method public abstract onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;",
            ")",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Builder<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener<",
            "TOutputT;>;)",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Builder<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end method
