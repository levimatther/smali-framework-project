.class public Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "CreateCustomSmsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$CreateCustomSmsHolder;
    }
.end annotation


# static fields
.field private static final ARG_ENTERED_TEXT:Ljava/lang/String; = "enteredText"


# instance fields
.field private editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static newInstance()Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;
    .locals 1

    .line 47
    new-instance v0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c009b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090110

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const-string v3, "enteredText"

    .line 58
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    .line 61
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1100b0

    new-instance v2, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$3;-><init>(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;)V

    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1100af

    new-instance v2, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$2;-><init>(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;)V

    .line 74
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$1;-><init>(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;)V

    .line 82
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1100b6

    .line 89
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 91
    new-instance v0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$4;-><init>(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$5;-><init>(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 129
    const-class p1, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$CreateCustomSmsHolder;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$CreateCustomSmsHolder;

    invoke-interface {p1}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$CreateCustomSmsHolder;->customSmsDismissed()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "enteredText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
