.class public Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CameraPermissionDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/video/impl/CameraPermissionDialogFragment$CameraPermissionDialogCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 40
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110106

    .line 41
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110103

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/incallui/video/impl/CameraPermissionDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/video/impl/CameraPermissionDialogFragment$2;-><init>(Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;)V

    const v1, 0x7f110105

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/incallui/video/impl/CameraPermissionDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/video/impl/CameraPermissionDialogFragment$1;-><init>(Lcom/android/incallui/video/impl/CameraPermissionDialogFragment;)V

    const v1, 0x7f110104

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
