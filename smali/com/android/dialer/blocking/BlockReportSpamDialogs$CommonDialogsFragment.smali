.class Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;
.super Landroid/app/DialogFragment;
.source "BlockReportSpamDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/blocking/BlockReportSpamDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommonDialogsFragment"
.end annotation


# instance fields
.field protected mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mDisplayNumber:Ljava/lang/String;

.field protected mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->dismiss()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 144
    iput-object v0, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->mPositiveListener:Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;

    .line 145
    iput-object v0, p0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;->mDisplayNumber:Ljava/lang/String;

    .line 146
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method
