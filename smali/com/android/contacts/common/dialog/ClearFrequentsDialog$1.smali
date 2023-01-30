.class Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;
.super Ljava/lang/Object;
.source "ClearFrequentsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    .line 58
    invoke-virtual {p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    const v0, 0x7f110138

    .line 59
    invoke-virtual {p2, v0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-static {p1, p2, v0, v1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;

    invoke-direct {p2, p0, p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;-><init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;Landroid/app/ProgressDialog;)V

    .line 78
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
