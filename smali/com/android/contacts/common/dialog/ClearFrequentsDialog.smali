.class public Lcom/android/contacts/common/dialog/ClearFrequentsDialog;
.super Landroid/app/DialogFragment;
.source "ClearFrequentsDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    invoke-direct {v0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;-><init>()V

    const-string v1, "clearFrequents"

    .line 41
    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;-><init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog;Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 81
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110137

    .line 82
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110136

    .line 83
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
