.class Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment$2;
.super Ljava/lang/Object;
.source "BlockReportSpamDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment$2;->this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 396
    iget-object p2, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment$2;->this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;

    iget-object p2, p2, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    invoke-interface {p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;->onClick()V

    .line 397
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
