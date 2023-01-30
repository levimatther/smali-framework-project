.class Lcom/android/incallui/spam/SpamNotificationActivity$2;
.super Ljava/lang/Object;
.source "SpamNotificationActivity.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/spam/SpamNotificationActivity;->maybeShowNotSpamDialog(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
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

    .line 193
    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    iput-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/spam/SpamNotificationActivity$2;->val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/incallui/spam/SpamNotificationActivity$2;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    iget-object v1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$2;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/spam/SpamNotificationActivity$2;->val$contactLookupResultType:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$000(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    return-void
.end method
