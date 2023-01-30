.class public Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;
.super Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;
.source "BlockReportSpamDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportNotSpamDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 408
    invoke-direct {p0, v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;-><init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;
    .locals 1

    .line 414
    new-instance v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;-><init>()V

    .line 415
    iput-object p0, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 416
    iput-object p1, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    .line 417
    iput-object p2, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 423
    invoke-super {p0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 425
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs;->access$300(Landroid/app/Activity;Landroid/app/DialogFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1103ed

    .line 428
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->mDisplayNumber:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1103ec

    .line 429
    invoke-virtual {p0, v2, v1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    .line 432
    invoke-static {p0, v1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs;->access$500(Landroid/app/DialogFragment;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    const v2, 0x7f1103eb

    .line 430
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 433
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 434
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public bridge synthetic onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 408
    invoke-super {p0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .line 408
    invoke-super {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onPause()V

    return-void
.end method
