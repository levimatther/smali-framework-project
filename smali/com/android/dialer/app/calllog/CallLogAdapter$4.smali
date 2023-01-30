.class Lcom/android/dialer/app/calllog/CallLogAdapter$4;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogAdapter;->showDeleteSelectedItemsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

.field final synthetic val$voicemailsToDeleteOnConfirmation:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/util/SparseArray;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$4;->val$voicemailsToDeleteOnConfirmation:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick, these items to delete "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$4;->val$voicemailsToDeleteOnConfirmation:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallLogAdapter.showDeleteSelectedItemsDialog"

    invoke-static {v1, p2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$4;->val$voicemailsToDeleteOnConfirmation:Landroid/util/SparseArray;

    invoke-static {p2, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$500(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/util/SparseArray;)V

    .line 272
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object p2, p2, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p2}, Landroid/view/ActionMode;->finish()V

    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 274
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_DELETE_ENTRY_VIA_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 275
    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method
