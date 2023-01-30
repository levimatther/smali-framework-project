.class public Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# static fields
.field private static final ARG_MESSAGE_RES_ID:Ljava/lang/String; = "argMessageResId"

.field private static final ARG_TITLE_RES_ID:Ljava/lang/String; = "argTitleResId"


# instance fields
.field private mMessageResId:I

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3256
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1

    const/4 v0, 0x0

    .line 3264
    invoke-static {v0, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(II)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(II)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 3

    .line 3268
    new-instance v0, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;-><init>()V

    .line 3269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "argTitleResId"

    .line 3270
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "argMessageResId"

    .line 3271
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3272
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 3278
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3279
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "argTitleResId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    .line 3280
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "argMessageResId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 3285
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3286
    iget v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    if-eqz v0, :cond_0

    .line 3287
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3289
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:I

    if-eqz v0, :cond_1

    .line 3290
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    const v0, 0x104000a

    .line 3292
    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment$1;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3300
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
