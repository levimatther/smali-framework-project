.class Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->onUnblockComplete(ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;Landroid/content/ContentValues;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;->this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;

    iput-object p2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 293
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;->this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;

    iget-object p1, p1, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNDO_UNBLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 294
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 295
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;->this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;

    iget-object p1, p1, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->access$300(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;->this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;

    iget-object v0, v0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;->val$onUndoListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    iget-object v1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5$1;->val$values:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V

    return-void
.end method
