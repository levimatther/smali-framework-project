.class Lcom/android/incallui/spam/SpamNotificationActivity$3$1;
.super Ljava/lang/Object;
.source "SpamNotificationActivity.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/spam/SpamNotificationActivity$3;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/spam/SpamNotificationActivity$3;


# direct methods
.method constructor <init>(Lcom/android/incallui/spam/SpamNotificationActivity$3;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3$1;->this$1:Lcom/android/incallui/spam/SpamNotificationActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Z)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3$1;->this$1:Lcom/android/incallui/spam/SpamNotificationActivity$3;

    iget-object v0, v0, Lcom/android/incallui/spam/SpamNotificationActivity$3;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    iget-object v1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3$1;->this$1:Lcom/android/incallui/spam/SpamNotificationActivity$3;

    iget-object v1, v1, Lcom/android/incallui/spam/SpamNotificationActivity$3;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$3$1;->this$1:Lcom/android/incallui/spam/SpamNotificationActivity$3;

    iget-object v2, v2, Lcom/android/incallui/spam/SpamNotificationActivity$3;->val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-static {v0, v1, p1, v2}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$200(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;ZLcom/android/dialer/logging/ContactLookupResult$Type;)V

    return-void
.end method
