.class Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$1;
.super Ljava/lang/Object;
.source "CreateCustomSmsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 83
    iput-object p1, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$1;->this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$1;->this$0:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->dismiss()V

    return-void
.end method
