.class public final synthetic Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/incallui/call/DialerCall;


# direct methods
.method public synthetic constructor <init>(Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;->f$0:Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;

    iput-object p2, p0, Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;->f$2:Lcom/android/incallui/call/DialerCall;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;->f$0:Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;

    iget-object v1, p0, Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/disconnectdialog/-$$Lambda$VideoCallNotAvailablePrompt$hlgvyZX6xLKBLH77LslJNHFW7rg;->f$2:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/incallui/disconnectdialog/VideoCallNotAvailablePrompt;->lambda$createDialog$0$VideoCallNotAvailablePrompt(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Landroid/content/DialogInterface;I)V

    return-void
.end method
