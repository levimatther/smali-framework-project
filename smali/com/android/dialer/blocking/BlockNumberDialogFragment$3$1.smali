.class Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->onBlockComplete(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;Landroid/net/Uri;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;->this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;

    iput-object p2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;->this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;

    iget-object p1, p1, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNDO_BLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 243
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 244
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;->this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;

    iget-object p1, p1, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->access$300(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;->this$1:Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;

    iget-object v0, v0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;->val$onUndoListener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    iget-object v1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V

    return-void
.end method
