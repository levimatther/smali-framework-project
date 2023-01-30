.class public Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;
.super Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;
.source "BlockReportSpamDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnblockDialogFragment"
.end annotation


# static fields
.field private static mCallBack:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;


# instance fields
.field private alertDialog:Landroid/app/TctDialog;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogView:Landroid/view/View;

.field private mIsSpam:Z

.field private mMenuBar:Landroid/widget/MenuBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;-><init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;
    .locals 1

    .line 331
    new-instance v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;-><init>()V

    .line 332
    iput-object p0, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 333
    iput-boolean p1, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mIsSpam:Z

    .line 334
    iput-object p2, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    .line 335
    iput-object p3, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public static newInstanceMenubar(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)Landroid/app/DialogFragment;
    .locals 1

    .line 345
    new-instance v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;-><init>()V

    .line 346
    iput-object p0, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 347
    iput-boolean p1, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mIsSpam:Z

    .line 348
    iput-object p2, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    .line 349
    iput-object p3, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 350
    sput-object p4, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mCallBack:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 384
    new-instance p1, Landroid/app/TctDialog;

    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->alertDialog:Landroid/app/TctDialog;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->mDisplayNumber:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1104bc

    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/TctDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 387
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->alertDialog:Landroid/app/TctDialog;

    new-instance v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment$1;-><init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;)V

    const v1, 0x7f110006

    invoke-virtual {p1, v1, v0}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 393
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->alertDialog:Landroid/app/TctDialog;

    new-instance v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment$2;-><init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;)V

    const v1, 0x7f11000e

    invoke-virtual {p1, v1, v0}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 400
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->alertDialog:Landroid/app/TctDialog;

    return-object p1
.end method

.method public bridge synthetic onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 310
    invoke-super {p0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .line 310
    invoke-super {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 358
    invoke-super {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onStart()V

    .line 359
    iget-object v0, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->alertDialog:Landroid/app/TctDialog;

    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    return-void
.end method
