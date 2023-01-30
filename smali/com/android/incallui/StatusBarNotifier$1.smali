.class Lcom/android/incallui/StatusBarNotifier$1;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;

.field final synthetic val$callList:Lcom/android/incallui/call/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/call/CallList;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$1;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier$1;->val$callList:Lcom/android/incallui/call/CallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->val$callList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    iput-object v1, v0, Lcom/android/incallui/call/DialerCall$LogState;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 284
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$1;->val$callList:Lcom/android/incallui/call/CallList;

    invoke-static {v0, v1, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->access$000(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->val$callList:Lcom/android/incallui/call/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$1;->val$callList:Lcom/android/incallui/call/CallList;

    invoke-static {v0, v1, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->access$000(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method
