.class Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2$1;
.super Ljava/lang/Object;
.source "MigrateBlockedNumbersDialogFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2$1;->this$1:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2$1;->this$1:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;

    iget-object v0, v0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2$1;->this$1:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;

    iget-object v0, v0, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment$2;->this$0:Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;

    invoke-static {v0}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->access$100(Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;)Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;->onComplete()V

    return-void
.end method
