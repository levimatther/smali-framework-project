.class public Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;
.super Landroid/app/DialogFragment;
.source "MigrateBlockedNumbersDialogFragment.java"


# instance fields
.field private mBlockedNumbersMigrator:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

.field private mMigrationListener:Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->newPositiveButtonOnClickListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;)Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->mMigrationListener:Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;)Lcom/android/dialer/blocking/BlockedNumbersMigrator;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->mBlockedNumbersMigrator:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    return-object p0
.end method

.method public static newInstance(Lcom/android/dialer/blocking/BlockedNumbersMigrator;Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)Landroid/app/DialogFragment;
    .locals 1

    .line 53
    new-instance v0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;-><init>()V

    .line 54
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    iput-object p0, v0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->mBlockedNumbersMigrator:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;

    iput-object p0, v0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->mMigrationListener:Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;

    return-object v0
.end method

.method private newPositiveButtonOnClickListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 90
    new-instance v0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;-><init>(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;Landroid/app/AlertDialog;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 61
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 62
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {p0}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110319

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110318

    .line 65
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110316

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110317

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$1;-><init>(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->mBlockedNumbersMigrator:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    .line 112
    iput-object v0, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->mMigrationListener:Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;

    .line 113
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method
