.class Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment$2;
.super Ljava/lang/Object;
.source "BlockReportSpamDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment$2;->this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 298
    iget-object p2, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment$2;->this$0:Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;

    iget-object p2, p2, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    invoke-interface {p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;->onClick()V

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
