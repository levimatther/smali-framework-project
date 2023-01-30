.class Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$5;
.super Ljava/lang/Object;
.source "CreateCustomSmsDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

.field final synthetic val$customMessagePopup:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$5;->this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$5;->val$customMessagePopup:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$5;->val$customMessagePopup:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
