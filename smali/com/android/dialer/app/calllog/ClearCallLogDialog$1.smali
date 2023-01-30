.class Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;
.super Ljava/lang/Object;
.source "ClearCallLogDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/ClearCallLogDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/ClearCallLogDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/ClearCallLogDialog;Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/dialer/app/calllog/ClearCallLogDialog;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 58
    iget-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/dialer/app/calllog/ClearCallLogDialog;

    .line 60
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/dialer/app/calllog/ClearCallLogDialog;

    const v0, 0x7f110135

    invoke-virtual {p2, v0}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-static {p1, p2, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/dialer/app/calllog/ClearCallLogDialog;

    invoke-virtual {p2}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 62
    iget-object p2, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/dialer/app/calllog/ClearCallLogDialog;

    invoke-virtual {p2}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->cancelAllMissedCalls(Landroid/content/Context;)V

    .line 63
    new-instance p2, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;

    invoke-direct {p2, p0, p1}, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;-><init>(Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;Landroid/app/ProgressDialog;)V

    .line 92
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    new-array p1, v2, [Ljava/lang/Void;

    .line 93
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
