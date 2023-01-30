.class public final Lcom/android/dialer/simulator/impl/SimulatorConnectionService;
.super Landroid/telecom/ConnectionService;
.source "SimulatorConnectionService.java"


# static fields
.field private static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "SIMULATOR_ACCOUNT_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    return-void
.end method

.method private static buildPhoneAccount(Landroid/content/Context;)Landroid/telecom/PhoneAccount;
    .locals 2

    .line 44
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    .line 46
    invoke-static {p0}, Lcom/android/dialer/simulator/impl/SimulatorConnectionService;->getConnectionServiceHandle(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    const-string v1, "Simulator connection service"

    invoke-direct {v0, p0, v1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    .line 47
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "tel"

    .line 48
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 51
    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v0

    const-string v1, "Simulator Connection Service"

    .line 52
    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionServiceHandle(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .line 58
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/dialer/simulator/impl/SimulatorConnectionService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "SIMULATOR_ACCOUNT_ID"

    invoke-direct {v0, v1, p0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getPhoneNumber(Landroid/telecom/ConnectionRequest;)Landroid/net/Uri;
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "incoming_number"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tel"

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 1

    const-string v0, "SimulatorConnectionService.register"

    .line 39
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 40
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-static {p0}, Lcom/android/dialer/simulator/impl/SimulatorConnectionService;->buildPhoneAccount(Landroid/content/Context;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    return-void
.end method


# virtual methods
.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1

    const-string p1, "SimulatorConnectionService.onCreateIncomingConnection"

    .line 79
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 80
    new-instance p1, Lcom/android/dialer/simulator/impl/SimulatorConnection;

    invoke-direct {p1}, Lcom/android/dialer/simulator/impl/SimulatorConnection;-><init>()V

    .line 81
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->setRinging()V

    .line 82
    invoke-static {p2}, Lcom/android/dialer/simulator/impl/SimulatorConnectionService;->getPhoneNumber(Landroid/telecom/ConnectionRequest;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->setAddress(Landroid/net/Uri;I)V

    const/16 p2, 0x42

    .line 83
    invoke-virtual {p1, p2}, Lcom/android/dialer/simulator/impl/SimulatorConnection;->setConnectionCapabilities(I)V

    return-object p1
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "SimulatorConnectionService.onCreateOutgoingConnection"

    const-string v0, "outgoing calls not supported yet"

    .line 70
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
