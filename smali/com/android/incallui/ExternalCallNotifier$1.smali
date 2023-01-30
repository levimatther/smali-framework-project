.class Lcom/android/incallui/ExternalCallNotifier$1;
.super Ljava/lang/Object;
.source "ExternalCallNotifier.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ExternalCallNotifier;->showNotifcation(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ExternalCallNotifier;

.field final synthetic val$info:Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;


# direct methods
.method constructor <init>(Lcom/android/incallui/ExternalCallNotifier;Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$1;->this$0:Lcom/android/incallui/ExternalCallNotifier;

    iput-object p2, p0, Lcom/android/incallui/ExternalCallNotifier$1;->val$info:Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$1;->this$0:Lcom/android/incallui/ExternalCallNotifier;

    invoke-static {p1}, Lcom/android/incallui/ExternalCallNotifier;->access$100(Lcom/android/incallui/ExternalCallNotifier;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier$1;->val$info:Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    invoke-virtual {v0}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$1;->this$0:Lcom/android/incallui/ExternalCallNotifier;

    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier$1;->val$info:Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    invoke-static {p1, v0, p2}, Lcom/android/incallui/ExternalCallNotifier;->access$200(Lcom/android/incallui/ExternalCallNotifier;Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$1;->this$0:Lcom/android/incallui/ExternalCallNotifier;

    invoke-static {p1}, Lcom/android/incallui/ExternalCallNotifier;->access$100(Lcom/android/incallui/ExternalCallNotifier;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier$1;->val$info:Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    invoke-virtual {v0}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$1;->this$0:Lcom/android/incallui/ExternalCallNotifier;

    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier$1;->val$info:Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    invoke-static {p1, v0, p2}, Lcom/android/incallui/ExternalCallNotifier;->access$300(Lcom/android/incallui/ExternalCallNotifier;Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method
