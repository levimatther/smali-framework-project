.class Lcom/android/incallui/spam/SpamNotificationActivity$3;
.super Ljava/lang/Object;
.source "SpamNotificationActivity.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/spam/SpamNotificationActivity;->maybeShowBlockReportSpamDialog(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

.field final synthetic val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    iput-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3;->val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3;->val$number:Ljava/lang/String;

    .line 215
    invoke-static {v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    .line 216
    invoke-static {v1}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/spam/SpamBindings;->isDialogReportSpamCheckedByDefault()Z

    move-result v1

    new-instance v2, Lcom/android/incallui/spam/SpamNotificationActivity$3$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/spam/SpamNotificationActivity$3$1;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity$3;)V

    iget-object v3, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    .line 224
    invoke-static {v3}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$300(Lcom/android/incallui/spam/SpamNotificationActivity;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v3

    .line 214
    invoke-static {v0, v1, v2, v3}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->newInstance(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    .line 225
    invoke-virtual {v1}, Lcom/android/incallui/spam/SpamNotificationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "BlockReportSpamDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
