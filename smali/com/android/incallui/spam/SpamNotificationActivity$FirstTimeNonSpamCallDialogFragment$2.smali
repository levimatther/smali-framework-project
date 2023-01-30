.class Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;
.super Ljava/lang/Object;
.source "SpamNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

    iput-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 474
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->access$1002(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;Z)Z

    .line 475
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

    invoke-virtual {p1}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->dismiss()V

    .line 476
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

    iget-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;->val$number:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$1100(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
