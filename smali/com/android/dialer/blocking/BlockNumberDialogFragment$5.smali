.class Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockNumberDialogFragment;->unblockNumber()V
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

.field final synthetic val$onUndoListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/CharSequence;ILcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$onUndoListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    iput-object p4, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$message:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$actionTextColor:I

    iput-object p6, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$callback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnblockComplete(ILandroid/content/ContentValues;)V
    .locals 2

    .line 288
    new-instance p1, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;

    invoke-direct {p1, p0, p2}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;-><init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;Landroid/content/ContentValues;)V

    .line 299
    iget-object p2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    invoke-static {p2}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->access$200(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$message:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    const v0, 0x7f110080

    .line 300
    invoke-virtual {p2, v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iget p2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$actionTextColor:I

    .line 301
    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 304
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$callback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    if-eqz p1, :cond_0

    .line 305
    invoke-interface {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;->onUnfilterNumberSuccess()V

    :cond_0
    return-void
.end method
