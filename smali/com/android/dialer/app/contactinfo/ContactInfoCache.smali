.class public Lcom/android/dialer/app/contactinfo/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;,
        Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;,
        Lcom/android/dialer/app/contactinfo/ContactInfoCache$InnerHandler;
    }
.end annotation


# static fields
.field private static final CONTACT_INFO_CACHE_SIZE:I = 0x64

.field private static final REDRAW:I = 0x1

.field private static final START_PROCESSING_REQUESTS_DELAY_MS:I = 0x3e8

.field private static final START_THREAD:I = 0x2


# instance fields
.field private final mCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache<",
            "Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;",
            "Lcom/android/dialer/phonenumbercache/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheFor4gConfCall:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache<",
            "Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;",
            "Lcom/android/dialer/phonenumbercache/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCequintCallerIdManager:Lcom/android/dialer/oem/CequintCallerIdManager;

.field private final mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

.field private mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;

.field private final mHandler:Landroid/os/Handler;

.field private final mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

.field private volatile mRequestProcessingDisabled:Z

.field private final mUpdateRequests:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/dialer/app/contactinfo/ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dialer/util/ExpirableCache;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/util/ExpirableCache<",
            "Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;",
            "Lcom/android/dialer/phonenumbercache/ContactInfo;",
            ">;",
            "Lcom/android/dialer/phonenumbercache/ContactInfoHelper;",
            "Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mRequestProcessingDisabled:Z

    .line 94
    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    const/16 p1, 0x64

    .line 95
    invoke-static {p1}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCacheFor4gConfCall:Lcom/android/dialer/util/ExpirableCache;

    .line 96
    iput-object p2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    .line 97
    iput-object p3, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    .line 98
    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mUpdateRequests:Ljava/util/concurrent/BlockingQueue;

    .line 99
    new-instance p1, Lcom/android/dialer/app/contactinfo/ContactInfoCache$InnerHandler;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/android/dialer/app/contactinfo/ContactInfoCache$InnerHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->startRequestProcessing()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mUpdateRequests:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/contactinfo/ContactInfoCache;Lcom/android/dialer/app/contactinfo/ContactInfoRequest;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->queryContactInfo(Lcom/android/dialer/app/contactinfo/ContactInfoRequest;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private callLogInfoMatches(Lcom/android/dialer/phonenumbercache/ContactInfo;Lcom/android/dialer/phonenumbercache/ContactInfo;)Z
    .locals 2

    .line 387
    iget-object v0, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    iget v1, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    .line 389
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZI)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 349
    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZIZ)V

    return-void
.end method

.method private queryContactInfo(Lcom/android/dialer/app/contactinfo/ContactInfoRequest;)Z
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 184
    iget-object v1, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    .line 187
    invoke-static {v1}, Lcom/android/dialer/common/LogUtil;->sanitizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->type:I

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ContactInfoCache.queryContactInfo"

    const-string v4, "request number: %s, type: %d"

    .line 184
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isLocalRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v4, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    iget-object v5, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->postDialString:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    const-wide/16 v8, -0x1

    iget-boolean v10, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isConf:Z

    invoke-virtual/range {v4 .. v10}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-boolean v4, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->contactExists:Z

    if-nez v4, :cond_0

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 200
    iget-object v6, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    iget-object v7, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCequintCallerIdManager:Lcom/android/dialer/oem/CequintCallerIdManager;

    iget-object v8, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v8}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->updateFromCequintCallerId(Lcom/android/dialer/oem/CequintCallerIdManager;Lcom/android/dialer/phonenumbercache/ContactInfo;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    new-array v4, v3, [Ljava/lang/Object;

    .line 203
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "Cequint Caller Id look up takes %d ms"

    .line 202
    invoke-static {v1, v5, v4}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_0
    iget v1, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->type:I

    if-ne v1, v3, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    invoke-virtual {v1, v0}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->hasName(Lcom/android/dialer/phonenumbercache/ContactInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    iget-object v5, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZI)V

    return v2

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    iget-object v1, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupNumberInRemoteDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return v2

    .line 227
    :cond_3
    iget-object v1, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    .line 228
    iget-boolean v4, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isConf:Z

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->postDialString:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->postDialString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_4
    new-instance v4, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;

    iget-object v5, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-boolean v5, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isConf:Z

    if-eqz v5, :cond_5

    .line 235
    iget-object v5, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCacheFor4gConfCall:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v5, v4}, Lcom/android/dialer/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/phonenumbercache/ContactInfo;

    goto :goto_0

    .line 237
    :cond_5
    iget-object v5, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v5, v4}, Lcom/android/dialer/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/phonenumbercache/ContactInfo;

    .line 239
    :goto_0
    iget-object v6, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    sget-object v7, Lcom/android/dialer/logging/ContactSource$Type;->UNKNOWN_SOURCE_TYPE:Lcom/android/dialer/logging/ContactSource$Type;

    if-eq v6, v7, :cond_6

    move v6, v3

    goto :goto_1

    :cond_6
    move v6, v2

    .line 246
    :goto_1
    sget-object v7, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    .line 247
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v6, :cond_8

    .line 248
    :cond_7
    invoke-virtual {v0, v5}, Lcom/android/dialer/phonenumbercache/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v2, v3

    .line 252
    :cond_8
    iget-boolean v3, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isConf:Z

    if-eqz v3, :cond_9

    .line 253
    iget-object v3, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCacheFor4gConfCall:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v3, v4, v0}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_9
    iget-object v3, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v3, v4, v0}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    :goto_2
    iget-boolean v3, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isConf:Z

    if-eqz v3, :cond_a

    .line 260
    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    iget-object v3, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->updateCallLogContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;Lcom/android/dialer/phonenumbercache/ContactInfo;)V

    goto :goto_3

    .line 263
    :cond_a
    iget-object v3, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    iget-object v4, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-virtual {v3, v1, v4, v0, v5}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->updateCallLogContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;Lcom/android/dialer/phonenumbercache/ContactInfo;)V

    .line 266
    :goto_3
    invoke-virtual {p1}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isLocalRequest()Z

    move-result p1

    if-nez p1, :cond_b

    .line 267
    iget-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    invoke-virtual {p1, v0}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->updateCachedNumberLookupService(Lcom/android/dialer/phonenumbercache/ContactInfo;)V

    :cond_b
    return v2
.end method

.method private declared-synchronized startRequestProcessing()V
    .locals 2

    monitor-enter p0

    .line 299
    :try_start_0
    iget-boolean v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 300
    monitor-exit p0

    return-void

    .line 304
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 305
    monitor-exit p0

    return-void

    .line 308
    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;-><init>(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)V

    iput-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->setPriority(I)V

    .line 310
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopRequestProcessing()V
    .locals 2

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->stopProcessing()V

    .line 329
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->interrupt()V

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public disableRequestProcessing()V
    .locals 1

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mRequestProcessingDisabled:Z

    return-void
.end method

.method protected enqueueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZIZ)V
    .locals 8

    .line 372
    new-instance v7, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;IZ)V

    .line 375
    iget-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mUpdateRequests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v7}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 376
    iget-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mUpdateRequests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v7}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->startRequestProcessing()V

    :cond_1
    return-void
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;Z)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZZ)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZZ)Lcom/android/dialer/phonenumbercache/ContactInfo;
    .locals 11

    move-object v8, p0

    if-nez p6, :cond_0

    .line 122
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 125
    :cond_0
    new-instance v0, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;

    move-object v1, p1

    move-object v3, p3

    invoke-direct {v0, p1, p3}, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    .line 128
    iget-object v2, v8, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCacheFor4gConfCall:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v2, v0}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v2

    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, v8, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v2, v0}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 132
    :cond_2
    invoke-interface {v2}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/phonenumbercache/ContactInfo;

    :goto_1
    move-object v9, v4

    if-nez v2, :cond_4

    if-eqz p6, :cond_3

    .line 139
    iget-object v2, v8, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCacheFor4gConfCall:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v2, v0}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    goto :goto_2

    .line 141
    :cond_3
    iget-object v2, v8, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    sget-object v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-virtual {v2, v0, v4}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 147
    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZIZ)V

    move-object v10, p4

    goto :goto_4

    .line 150
    :cond_4
    invoke-interface {v2}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 153
    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZIZ)V

    move-object v10, p4

    goto :goto_3

    :cond_5
    move-object v10, p4

    .line 154
    invoke-direct {p0, p4, v9}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->callLogInfoMatches(Lcom/android/dialer/phonenumbercache/ContactInfo;Lcom/android/dialer/phonenumbercache/ContactInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 159
    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZIZ)V

    .line 162
    :cond_6
    :goto_3
    sget-object v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-static {v9, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_4
    move-object v9, v10

    :cond_7
    return-object v9
.end method

.method public injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;)V
    .locals 1

    .line 399
    new-instance v0, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {p1, v0, p3}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/dialer/util/ExpirableCache;->expireAll()V

    .line 315
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCacheFor4gConfCall:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/dialer/util/ExpirableCache;->expireAll()V

    .line 316
    invoke-direct {p0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->stopRequestProcessing()V

    return-void
.end method

.method public setCequintCallerIdManager(Lcom/android/dialer/oem/CequintCallerIdManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mCequintCallerIdManager:Lcom/android/dialer/oem/CequintCallerIdManager;

    return-void
.end method

.method public start()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->stopRequestProcessing()V

    return-void
.end method
