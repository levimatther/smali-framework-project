.class public Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;
.super Ljava/lang/Object;
.source "CallLogCache.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mHasCheckedForVideoAvailability:Z

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

.field private mVideoAvailability:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountLabelCache:Ljava/util/Map;

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountColorCache:Ljava/util/Map;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public canRelyOnVideoPresence()Z
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mHasCheckedForVideoAvailability:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/CallUtil;->getVideoCallingAvailability(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mVideoAvailability:I

    .line 84
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mHasCheckedForVideoAvailability:Z

    .line 86
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mVideoAvailability:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized doesAccountSupportCallSubject(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 122
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {v0, p1}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccountSupportsCallSubject(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAccountColor(Landroid/telecom/PhoneAccountHandle;)I
    .locals 2

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccountColor(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccountLabel(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 72
    monitor-exit p0

    return p1

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/dialer/telecom/TelecomUtil;->isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    iget-object v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mHasCheckedForVideoAvailability:Z

    .line 62
    iput v0, p0, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->mVideoAvailability:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
