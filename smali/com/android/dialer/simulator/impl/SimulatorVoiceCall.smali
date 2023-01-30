.class final Lcom/android/dialer/simulator/impl/SimulatorVoiceCall;
.super Ljava/lang/Object;
.source "SimulatorVoiceCall.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNewIncomingCall(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SimulatorVoiceCall.addNewIncomingCall"

    .line 30
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcom/android/dialer/simulator/impl/SimulatorConnectionService;->register(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "incoming_number"

    const-string v2, "+44 (0) 20 7031 3000"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    const-class v1, Landroid/telecom/TelecomManager;

    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 40
    invoke-static {p0}, Lcom/android/dialer/simulator/impl/SimulatorConnectionService;->getConnectionServiceHandle(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    .line 39
    invoke-virtual {v1, p0, v0}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to add call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
