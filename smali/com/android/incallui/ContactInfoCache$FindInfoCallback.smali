.class Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInfoCallback"
.end annotation


# instance fields
.field private final mIsIncoming:Z

.field private final mQueryToken:Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;ZLcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput-boolean p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    .line 788
    iput-object p3, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mQueryToken:Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    return-void
.end method


# virtual methods
.method public onDataLoaded(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 7

    .line 793
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 794
    check-cast p2, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;

    .line 795
    iget-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;->callId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mQueryToken:Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    iget v1, v1, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 798
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 799
    iget-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;->cnapName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    invoke-static {p1, p3, v2, v3}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/CallerInfo;Ljava/lang/String;Z)V

    .line 800
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 801
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cequint Caller Id look up takes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;->callId:Ljava/lang/String;

    iget v3, p2, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;->numberPresentation:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mQueryToken:Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;ILcom/android/incallui/CallerInfo;ZLcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 4

    .line 807
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 808
    check-cast p2, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;

    .line 809
    iget-object p1, p2, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;->callId:Ljava/lang/String;

    .line 810
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object p2, p2, Lcom/android/incallui/ContactInfoCache$DialerCallCookieWrapper;->callId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mQueryToken:Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    iget v1, v1, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    invoke-static {v0, p2, v1}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 813
    :cond_0
    iget-object p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {p2}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez p2, :cond_1

    .line 816
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Contact lookup done, but cache entry is not found."

    invoke-static {p2, p3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    iget-object p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {p2, p1}, Lcom/android/incallui/ContactInfoCache;->access$600(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    return-void

    .line 823
    :cond_1
    iget-boolean v0, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->access$700(Lcom/android/incallui/ContactInfoCache;)Lcom/android/incallui/bindings/PhoneNumberService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 824
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Contact lookup. Local contacts miss, checking remote"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    new-instance v0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mQueryToken:Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    iget v2, v2, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;-><init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 827
    iput-boolean v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hasPendingQuery:Z

    .line 828
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$700(Lcom/android/incallui/ContactInfoCache;)Lcom/android/incallui/bindings/PhoneNumberService;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    invoke-interface {v1, v2, v0, v0, v3}, Lcom/android/incallui/bindings/PhoneNumberService;->getPhoneNumberInfo(Ljava/lang/String;Lcom/android/incallui/bindings/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/bindings/PhoneNumberService$ImageLookupListener;Z)V

    .line 830
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache;->access$800(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 831
    iget-boolean p2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hasPendingQuery:Z

    if-nez p2, :cond_4

    .line 832
    iget-boolean p2, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz p2, :cond_3

    .line 833
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Contact lookup done. Local contact found, no image."

    invoke-static {p2, p3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 836
    :cond_3
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Contact lookup done. Local contact not found and no remote lookup service available."

    .line 835
    invoke-static {p2, p3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :goto_0
    iget-object p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {p2, p1}, Lcom/android/incallui/ContactInfoCache;->access$600(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
