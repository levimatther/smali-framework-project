.class public Lcom/android/dialer/blocking/BlockReportSpamDialogs;
.super Ljava/lang/Object;
.source "BlockReportSpamDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;,
        Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;,
        Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;,
        Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;,
        Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;,
        Lcom/android/dialer/blocking/BlockReportSpamDialogs$CommonDialogsFragment;,
        Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;,
        Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;
    }
.end annotation


# static fields
.field public static final BLOCK_DIALOG_TAG:Ljava/lang/String; = "BlockDialog"

.field public static final BLOCK_REPORT_SPAM_DIALOG_TAG:Ljava/lang/String; = "BlockReportSpamDialog"

.field public static final NOT_SPAM_DIALOG_TAG:Ljava/lang/String; = "NotSpamDialog"

.field public static final UNBLOCK_DIALOG_TAG:Ljava/lang/String; = "UnblockDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs;->getBlockMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/app/DialogFragment;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs;->createDialogBuilder(Landroid/app/Activity;Landroid/app/DialogFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Landroid/app/DialogFragment;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs;->createGenericOnClickListener(Landroid/app/DialogFragment;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method private static createDialogBuilder(Landroid/app/Activity;Landroid/app/DialogFragment;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120009

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x1

    .line 62
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;

    invoke-direct {v0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$1;-><init>(Landroid/app/DialogFragment;)V

    const/high16 p1, 0x1040000

    .line 63
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static createGenericOnClickListener(Landroid/app/DialogFragment;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 79
    new-instance v0, Lcom/android/dialer/blocking/BlockReportSpamDialogs$2;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$2;-><init>(Landroid/app/DialogFragment;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;)V

    return-object v0
.end method

.method private static getBlockMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110076

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f110081

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
