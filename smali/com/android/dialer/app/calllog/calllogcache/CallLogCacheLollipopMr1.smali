.class Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;
.super Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;
.source "CallLogCacheLollipopMr1.java"


# instance fields
.field private final mPhoneAccountCallWithNoteCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneAccountColorCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneAccountLabelCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    .line 40
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    .line 41
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public doesAccountSupportCallSubject(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {v0, p1}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccountSupportsCallSubject(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getAccountColor(Landroid/telecom/PhoneAccountHandle;)I
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccountColor(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccountLabel(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z
    .locals 1

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/dialer/telecom/TelecomUtil;->isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 53
    invoke-super {p0}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->reset()V

    return-void
.end method
