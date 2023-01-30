.class public Lcom/android/incallui/disconnectdialog/DisconnectMessage;
.super Ljava/lang/Object;
.source "DisconnectMessage.java"


# static fields
.field private static final DISCONNECT_DIALOGS:[Lcom/android/incallui/disconnectdialog/DisconnectDialog;


# instance fields
.field private final cause:Landroid/telecom/DisconnectCause;

.field public final dialog:Landroid/app/Dialog;

.field public final toastMessage:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/incallui/disconnectdialog/DisconnectDialog;

    .line 32
    new-instance v1, Lcom/android/incallui/disconnectdialog/EnableWifiCallingPrompt;

    invoke-direct {v1}, Lcom/android/incallui/disconnectdialog/EnableWifiCallingPrompt;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;

    invoke-direct {v1}, Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/incallui/disconnectdialog/DefaultErrorDialog;

    invoke-direct {v1}, Lcom/android/incallui/disconnectdialog/DefaultErrorDialog;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->DISCONNECT_DIALOGS:[Lcom/android/incallui/disconnectdialog/DisconnectDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->cause:Landroid/telecom/DisconnectCause;

    .line 44
    sget-object v0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->DISCONNECT_DIALOGS:[Lcom/android/incallui/disconnectdialog/DisconnectDialog;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    iget-object v4, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->cause:Landroid/telecom/DisconnectCause;

    invoke-interface {v3, v4}, Lcom/android/incallui/disconnectdialog/DisconnectDialog;->shouldShow(Landroid/telecom/DisconnectCause;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v3, p1, p2}, Lcom/android/incallui/disconnectdialog/DisconnectDialog;->createDialog(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Landroid/util/Pair;

    move-result-object p1

    .line 47
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/app/Dialog;

    iput-object p2, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->dialog:Landroid/app/Dialog;

    .line 48
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->toastMessage:Ljava/lang/CharSequence;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->dialog:Landroid/app/Dialog;

    .line 53
    iput-object p1, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->toastMessage:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 58
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->cause:Landroid/telecom/DisconnectCause;

    .line 61
    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->cause:Landroid/telecom/DisconnectCause;

    .line 62
    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->cause:Landroid/telecom/DisconnectCause;

    .line 63
    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->toastMessage:Ljava/lang/CharSequence;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "DisconnectMessage {code: %d, description: %s, reason: %s, message: %s}"

    .line 58
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
