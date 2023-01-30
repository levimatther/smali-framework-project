.class Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


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

.field final synthetic val$callback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

.field final synthetic val$undoMessage:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Ljava/lang/CharSequence;Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;->val$undoMessage:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;->val$callback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockComplete(Landroid/net/Uri;)V
    .locals 2

    .line 277
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->access$200(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;->val$undoMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 278
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;->val$callback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    if-eqz p1, :cond_0

    .line 279
    invoke-interface {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;->onChangeFilteredNumberUndo()V

    :cond_0
    return-void
.end method
