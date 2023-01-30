.class Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;
.super Ljava/lang/Object;
.source "MigrateBlockedNumbersDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->newPositiveButtonOnClickListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;->this$0:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object p1, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;->this$0:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;

    invoke-static {p1}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->access$200(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;)Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2$1;-><init>(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;)V

    invoke-virtual {p1, v0}, Lcom/android/dialer/blocking/BlockedNumbersMigrator;->migrate(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)Z

    return-void
.end method
