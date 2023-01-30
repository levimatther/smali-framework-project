.class Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$3;
.super Ljava/lang/Object;
.source "CreateCustomSmsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$3;->this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$3;->this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    const-class p2, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$CreateCustomSmsHolder;

    invoke-static {p1, p2}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$CreateCustomSmsHolder;

    iget-object p2, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$3;->this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    .line 70
    invoke-static {p2}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->access$000(Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$CreateCustomSmsHolder;->customSmsCreated(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$3;->this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->dismiss()V

    return-void
.end method
