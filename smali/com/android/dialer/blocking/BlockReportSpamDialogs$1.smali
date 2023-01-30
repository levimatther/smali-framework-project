.class final Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;
.super Ljava/lang/Object;
.source "BlockReportSpamDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs;->createDialogBuilder(Landroid/app/Activity;Landroid/app/DialogFragment;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Landroid/app/DialogFragment;


# direct methods
.method constructor <init>(Landroid/app/DialogFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;->val$fragment:Landroid/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;->val$fragment:Landroid/app/DialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
