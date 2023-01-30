.class public final synthetic Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$dJvxdAMde6vI-Myu25T5fDf5U78;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$dJvxdAMde6vI-Myu25T5fDf5U78;->f$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$dJvxdAMde6vI-Myu25T5fDf5U78;->f$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->lambda$null$3$SimulatorActionProvider(Ljava/lang/String;)V

    return-void
.end method
