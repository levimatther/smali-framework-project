.class public final synthetic Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$rW7kpUk-V_nmgBt99bX4n6sSDTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$rW7kpUk-V_nmgBt99bX4n6sSDTQ;->f$0:Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;

    iput-object p2, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$rW7kpUk-V_nmgBt99bX4n6sSDTQ;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$rW7kpUk-V_nmgBt99bX4n6sSDTQ;->f$0:Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;

    iget-object v1, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$rW7kpUk-V_nmgBt99bX4n6sSDTQ;->f$1:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->lambda$run$4$DefaultDialerExecutorFactory$NonUiDialerExecutor(Ljava/lang/Throwable;)V

    return-void
.end method
