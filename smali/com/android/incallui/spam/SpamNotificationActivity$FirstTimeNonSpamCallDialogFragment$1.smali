.class Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;
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

.field final synthetic val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$spamNotificationActivity:Lcom/android/incallui/spam/SpamNotificationActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

    iput-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->val$spamNotificationActivity:Lcom/android/incallui/spam/SpamNotificationActivity;

    iput-object p3, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 484
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->access$1002(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;Z)Z

    .line 485
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

    invoke-virtual {p1}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->dismiss()V

    .line 486
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->val$spamNotificationActivity:Lcom/android/incallui/spam/SpamNotificationActivity;

    iget-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->val$number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;->val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-static {p1, p2, v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$800(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    return-void
.end method
