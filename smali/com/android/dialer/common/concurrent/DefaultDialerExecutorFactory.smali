.class public Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;
.super Ljava/lang/Object;
.source "DefaultDialerExecutorFactory.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutorFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;,
        Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;,
        Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiTaskBuilder;,
        Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;,
        Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$BaseTaskBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNonUiTaskBuilder(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .locals 1
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

    .line 58
    new-instance v0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiTaskBuilder;

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    invoke-direct {v0, p1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiTaskBuilder;-><init>(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)V

    return-object v0
.end method

.method public createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;
    .locals 1
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

    .line 50
    new-instance v0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;

    .line 51
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/FragmentManager;

    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiTaskBuilder;-><init>(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)V

    return-object v0
.end method
