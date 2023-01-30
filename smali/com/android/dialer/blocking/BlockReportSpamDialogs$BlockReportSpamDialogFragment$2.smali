.class Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$2;
.super Ljava/lang/Object;
.source "BlockReportSpamDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;

.field final synthetic val$isSpamCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;Landroid/widget/CheckBox;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$2;->this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$2;->val$isSpamCheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$2;->this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;

    invoke-virtual {p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->dismiss()V

    .line 202
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$2;->this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->access$400(Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;)Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$2;->val$isSpamCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;->onClick(Z)V

    return-void
.end method
