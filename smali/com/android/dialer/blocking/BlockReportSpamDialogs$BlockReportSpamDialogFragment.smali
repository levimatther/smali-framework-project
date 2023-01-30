.class public Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;
.super Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;
.source "BlockReportSpamDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockReportSpamDialogFragment"
.end annotation


# instance fields
.field private mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;

.field private mSpamChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;-><init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;Z)Z
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->mSpamChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;)Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;
    .locals 1

    .line 164
    new-instance v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;-><init>()V

    .line 165
    iput-boolean p1, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->mSpamChecked:Z

    .line 166
    iput-object p0, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 167
    iput-object p2, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;

    .line 168
    iput-object p3, v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 174
    invoke-super {p0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 175
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0c0036

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090268

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 179
    iget-boolean v1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->mSpamChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    new-instance v1, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$1;-><init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f09006b

    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs;->access$300(Landroid/app/Activity;Landroid/app/DialogFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->mDisplayNumber:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f110082

    .line 195
    invoke-virtual {p0, v3, v2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment$2;-><init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;Landroid/widget/CheckBox;)V

    const v0, 0x7f11007c

    .line 196
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public bridge synthetic onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .line 151
    invoke-super {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->onPause()V

    return-void
.end method
