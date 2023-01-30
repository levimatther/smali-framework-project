.class final Lcom/android/dialer/blocking/BlockReportSpamDialogs$2;
.super Ljava/lang/Object;
.source "BlockReportSpamDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs;->createGenericOnClickListener(Landroid/app/DialogFragment;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Landroid/app/DialogFragment;

.field final synthetic val$listener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;


# direct methods
.method constructor <init>(Landroid/app/DialogFragment;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$2;->val$fragment:Landroid/app/DialogFragment;

    iput-object p2, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$2;->val$listener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$2;->val$fragment:Landroid/app/DialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 83
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$2;->val$listener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    invoke-interface {p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;->onClick()V

    return-void
.end method
