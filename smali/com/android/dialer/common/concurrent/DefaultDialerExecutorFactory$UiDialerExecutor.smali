.class Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;
.super Ljava/lang/Object;
.source "DefaultDialerExecutorFactory.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiDialerExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor<",
        "TInputT;>;"
    }
.end annotation


# instance fields
.field private final dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerUiTaskFragment<",
            "TInputT;TOutputT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/common/concurrent/DialerUiTaskFragment<",
            "TInputT;TOutputT;>;)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;->dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    return-void
.end method


# virtual methods
.method public executeOnCustomExecutorService(Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "TInputT;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;->dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->executeOnCustomExecutor(Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)V

    return-void
.end method

.method public executeParallel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;->dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method

.method public executeSerial(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;->dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->executeSerial(Ljava/lang/Object;)V

    return-void
.end method

.method public executeSerialWithWait(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputT;J)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$UiDialerExecutor;->dialerUiTaskFragment:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->executeSerialWithWait(Ljava/lang/Object;J)V

    return-void
.end method
