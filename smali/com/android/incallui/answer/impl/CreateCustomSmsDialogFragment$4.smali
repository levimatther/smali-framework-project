.class Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$4;
.super Ljava/lang/Object;
.source "CreateCustomSmsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 92
    iput-object p1, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$4;->this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 95
    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x1

    .line 96
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
