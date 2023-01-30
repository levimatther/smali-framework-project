.class Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$1;
.super Ljava/lang/Object;
.source "MigrateBlockedNumbersDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$1;->this$0:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 75
    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x1

    .line 77
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$1;->this$0:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;

    .line 78
    invoke-static {v1, p1}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->access$000(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
