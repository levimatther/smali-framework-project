.class Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockNumberDialogFragment;->blockNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

.field final synthetic val$actionTextColor:I

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$callback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$onUndoListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Ljava/lang/CharSequence;ILcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$onUndoListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    iput-object p4, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$message:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$actionTextColor:I

    iput-object p6, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$callback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockComplete(Landroid/net/Uri;)V
    .locals 3

    .line 237
    new-instance v0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;-><init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;Landroid/net/Uri;)V

    .line 248
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->access$200(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$message:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const v1, 0x7f110080

    .line 249
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iget v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$actionTextColor:I

    .line 250
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 253
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$callback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    if-eqz p1, :cond_0

    .line 254
    invoke-interface {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;->onFilterNumberSuccess()V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->maybeNotifyCallBlockingDisabled(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
