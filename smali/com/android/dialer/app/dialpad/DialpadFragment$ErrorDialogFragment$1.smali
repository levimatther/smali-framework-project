.class Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;)V
    .locals 0

    .line 3294
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3297
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->dismiss()V

    return-void
.end method
