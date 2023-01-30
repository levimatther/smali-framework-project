.class public interface abstract Lcom/android/dialer/common/concurrent/DialerExecutorFactory;
.super Ljava/lang/Object;
.source "DialerExecutorFactory.java"


# virtual methods
.method public abstract createNonUiTaskBuilder(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputT:",
            "Ljava/lang/Object;",
            "OutputT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
            "TInputT;TOutputT;>;)",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Builder<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end method

.method public abstract createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
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
            "TInputT;TOutputT;>;)",
            "Lcom/android/dialer/common/concurrent/DialerExecutor$Builder<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end method
