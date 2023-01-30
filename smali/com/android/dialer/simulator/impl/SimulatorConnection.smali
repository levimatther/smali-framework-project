.class final Lcom/android/dialer/simulator/impl/SimulatorConnection;
.super Landroid/telecom/Connection;
.source "SimulatorConnection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswer()V
    .locals 1

    const-string v0, "SimulatorConnection.onAnswer"

    .line 28
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->setActive()V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const-string v0, "SimulatorConnection.onDisconnect"

    .line 52
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->destroy()V

    return-void
.end method

.method public onHold()V
    .locals 1

    const-string v0, "SimulatorConnection.onHold"

    .line 40
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->setOnHold()V

    return-void
.end method

.method public onReject()V
    .locals 2

    const-string v0, "SimulatorConnection.onReject"

    .line 34
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method public onUnhold()V
    .locals 1

    const-string v0, "SimulatorConnection.onUnhold"

    .line 46
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->setActive()V

    return-void
.end method
