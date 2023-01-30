.class public Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;
.super Ljava/lang/Object;
.source "VideoCallNotAvailablePrompt.java"

# interfaces
.implements Lcom/android/incallui/disconnectdialog/DisconnectDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeVoiceCall(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    const-string v0, "VideoCallNotAvailablePrompt.makeVoiceCall"

    .line 70
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->IMS_VIDEO_BLOCKED_FALLBACK_TO_VOICE:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, p2, v1}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 73
    invoke-virtual {v0, p3}, Lcom/android/dialer/callintent/CallIntentBuilder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p2

    .line 75
    invoke-static {p1, p2}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/incallui/call/DialerCall;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/app/Dialog;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const v0, 0x7f1104e6

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1104e5

    .line 59
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;-><init>(Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V

    const p1, 0x7f110502

    .line 60
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 66
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public synthetic lambda$createDialog$0$VideoCallNotAvailablePrompt(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;->makeVoiceCall(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method public shouldShow(Landroid/telecom/DisconnectCause;)Z
    .locals 4

    .line 40
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "REASON_IMS_ACCESS_BLOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "VideoCallNotAvailablePrompt.shouldShowPrompt"

    const-string v1, "showing prompt for disconnect cause: %s"

    .line 42
    invoke-static {p1, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method
