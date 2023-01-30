.class Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;
.super Ljava/lang/Object;
.source "SpamNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;

.field final synthetic val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$spamNotificationActivity:Lcom/android/incallui/spam/SpamNotificationActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;

    iput-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->val$spamNotificationActivity:Lcom/android/incallui/spam/SpamNotificationActivity;

    iput-object p3, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 388
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->access$702(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;Z)Z

    .line 389
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;

    invoke-virtual {p1}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->dismiss()V

    .line 390
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->val$spamNotificationActivity:Lcom/android/incallui/spam/SpamNotificationActivity;

    iget-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->val$number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;->val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-static {p1, p2, v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$900(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    return-void
.end method
