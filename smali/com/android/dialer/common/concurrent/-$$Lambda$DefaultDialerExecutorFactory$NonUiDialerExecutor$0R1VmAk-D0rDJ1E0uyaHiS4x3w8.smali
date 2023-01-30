.class public final synthetic Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$0R1VmAk-D0rDJ1E0uyaHiS4x3w8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$0R1VmAk-D0rDJ1E0uyaHiS4x3w8;->f$0:Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;

    iput-object p2, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$0R1VmAk-D0rDJ1E0uyaHiS4x3w8;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$0R1VmAk-D0rDJ1E0uyaHiS4x3w8;->f$0:Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;

    iget-object v1, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DefaultDialerExecutorFactory$NonUiDialerExecutor$0R1VmAk-D0rDJ1E0uyaHiS4x3w8;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory$NonUiDialerExecutor;->lambda$executeSerial$0$DefaultDialerExecutorFactory$NonUiDialerExecutor(Ljava/lang/Object;)V

    return-void
.end method
