.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$Priority;,
<<<<<<< HEAD
=======
        Lcom/android/volley/Request$NetworkRequestCompleteListener;,
>>>>>>> 4d1b24c5... Update volley
        Lcom/android/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

<<<<<<< HEAD
.field private static sCounter:J

=======
>>>>>>> 4d1b24c5... Update volley

# instance fields
.field private mCacheEntry:Lcom/android/volley/Cache$Entry;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private final mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

<<<<<<< HEAD
.field private mIdentifier:Ljava/lang/String;

.field private final mMethod:I

.field private mRedirectUrl:Ljava/lang/String;
=======
.field private final mLock:Ljava/lang/Object;

.field private final mMethod:I

.field private mRequestCompleteListener:Lcom/android/volley/Request$NetworkRequestCompleteListener;
>>>>>>> 4d1b24c5... Update volley

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lcom/android/volley/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

<<<<<<< HEAD
.field private mTag:Ljava/lang/Object;
=======
.field private mShouldRetryConnectionErrors:Z

.field private mShouldRetryServerErrors:Z
>>>>>>> 4d1b24c5... Update volley

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
<<<<<<< HEAD

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
=======
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .line 152
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
>>>>>>> 4d1b24c5... Update volley
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/android/volley/VolleyLog$MarkerLog;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

<<<<<<< HEAD
=======
    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    .line 97
>>>>>>> 4d1b24c5... Update volley
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z

<<<<<<< HEAD
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 130
    iput-object v1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    .line 163
    iput p1, p0, Lcom/android/volley/Request;->mMethod:I

    .line 164
    iput-object p2, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    .line 165
    invoke-static {p1, p2}, Lcom/android/volley/Request;->createIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/Request;->mIdentifier:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 167
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;
=======
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/volley/Request;->mShouldRetryServerErrors:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/volley/Request;->mShouldRetryConnectionErrors:Z

    .line 121
    iput-object v1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    .line 153
    iput p1, p0, Lcom/android/volley/Request;->mMethod:I

    .line 154
    iput-object p2, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 156
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;
>>>>>>> 4d1b24c5... Update volley

    invoke-direct {p1}, Lcom/android/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

<<<<<<< HEAD
    .line 169
=======
    .line 158
>>>>>>> 4d1b24c5... Update volley
    invoke-static {p2}, Lcom/android/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/volley/Request;->mDefaultTrafficStatsTag:I

<<<<<<< HEAD
=======
    .line 159
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
<<<<<<< HEAD
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 149
    invoke-direct {p0, v0, p1, p2}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

=======
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 140
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;
<<<<<<< HEAD
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
=======
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/Request;

    .line 38
    iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
>>>>>>> 4d1b24c5... Update volley

    return-object p0
.end method

.method private static createIdentifier(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p0, Lcom/android/volley/Request;->sCounter:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    sput-wide v1, Lcom/android/volley/Request;->sCounter:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 728
    invoke-static {p0}, Lcom/android/volley/InternalUtils;->sha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
<<<<<<< HEAD
    .locals 3
=======
    .locals 7
    .param p2, "paramsEncoding"    # Ljava/lang/String;
>>>>>>> 4d1b24c5... Update volley
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

<<<<<<< HEAD
    .line 557
=======
    .line 489
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

<<<<<<< HEAD
    .line 559
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 560
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 561
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
=======
    .line 491
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 492
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 500
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 493
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 498
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6
>>>>>>> 4d1b24c5... Update volley

    aput-object v6, v4, v5

<<<<<<< HEAD
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 567
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 1

    .line 221
=======
    const/4 v5, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 494
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "encodedParams":Ljava/lang/StringBuilder;
    .end local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p2    # "paramsEncoding":Ljava/lang/String;
    throw v1

    .line 505
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "encodedParams":Ljava/lang/StringBuilder;
    .restart local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2    # "paramsEncoding":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 201
>>>>>>> 4d1b24c5... Update volley
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

<<<<<<< HEAD
    .line 222
=======
    .line 202
>>>>>>> 4d1b24c5... Update volley
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

<<<<<<< HEAD
    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
=======
    .line 203
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    return v2

    .line 210
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "host":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0
>>>>>>> 4d1b24c5... Update volley

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 3
<<<<<<< HEAD

    .line 250
=======
    .param p1, "tag"    # Ljava/lang/String;

    .line 225
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

<<<<<<< HEAD
    .line 251
=======
    .line 226
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

<<<<<<< HEAD
=======
    .line 228
>>>>>>> 4d1b24c5... Update volley
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

<<<<<<< HEAD
    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z

=======
    .line 351
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 353
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 354
    monitor-exit v0

    .line 355
>>>>>>> 4d1b24c5... Update volley
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compareTo(Lcom/android/volley/Request;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

<<<<<<< HEAD
    .line 701
=======
    .line 703
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    .local p1, "other":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

<<<<<<< HEAD
    .line 702
=======
    .line 704
    .local v0, "left":Lcom/android/volley/Request$Priority;
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v1

<<<<<<< HEAD
    if-ne v0, v1, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    .line 707
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
=======
    .line 708
    .local v1, "right":Lcom/android/volley/Request$Priority;
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
>>>>>>> 4d1b24c5... Update volley

    move-result v2

<<<<<<< HEAD
    iget-object p1, p1, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
=======
    iget-object v3, p1, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v3

    :goto_0
    sub-int/2addr v2, v3

    return v2
>>>>>>> 4d1b24c5... Update volley
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

<<<<<<< HEAD
    .line 37
=======
    .line 38
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->compareTo(Lcom/android/volley/Request;)I

    move-result p1

    return p1
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

<<<<<<< HEAD
    .line 690
    iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    .line 691
    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
=======
    .line 648
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 650
    .local v1, "listener":Lcom/android/volley/Response$ErrorListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    if-eqz v1, :cond_0

    .line 652
    invoke-interface {v1, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 654
    :cond_0
    return-void

    .line 650
    .end local v1    # "listener":Lcom/android/volley/Response$ErrorListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
>>>>>>> 4d1b24c5... Update volley
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

<<<<<<< HEAD
    .line 261
=======
    .line 236
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

<<<<<<< HEAD
    .line 262
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->finish(Lcom/android/volley/Request;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/volley/Request;->onFinish()V

    .line 265
    :cond_0
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_2

    .line 266
=======
    .line 237
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->finish(Lcom/android/volley/Request;)V

    .line 239
    :cond_0
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_2

    .line 240
>>>>>>> 4d1b24c5... Update volley
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

<<<<<<< HEAD
    .line 267
=======
    .line 241
    .local v0, "threadId":J
>>>>>>> 4d1b24c5... Update volley
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

<<<<<<< HEAD
    .line 270
=======
    .line 244
>>>>>>> 4d1b24c5... Update volley
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

<<<<<<< HEAD
    .line 271
=======
    .line 245
    .local v2, "mainThread":Landroid/os/Handler;
>>>>>>> 4d1b24c5... Update volley
    new-instance v3, Lcom/android/volley/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/volley/Request$1;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

<<<<<<< HEAD
    return-void

    .line 281
=======
    .line 253
    return-void

    .line 256
    .end local v2    # "mainThread":Landroid/os/Handler;
>>>>>>> 4d1b24c5... Update volley
    :cond_1
    iget-object v2, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

<<<<<<< HEAD
    .line 282
    iget-object p1, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

=======
    .line 257
    iget-object v2, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 259
    .end local v0    # "threadId":J
>>>>>>> 4d1b24c5... Update volley
    :cond_2
    return-void
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

<<<<<<< HEAD
    .line 542
=======
    .line 480
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

<<<<<<< HEAD
    if-eqz v0, :cond_0

    .line 543
=======
    .line 481
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

>>>>>>> 4d1b24c5... Update volley
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

<<<<<<< HEAD
    .line 544
=======
    .line 482
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

<<<<<<< HEAD
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
=======
    return-object v1

    .line 484
    :cond_0
    const/4 v1, 0x0

    return-object v1
>>>>>>> 4d1b24c5... Update volley
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

<<<<<<< HEAD
    .line 528
=======
    .line 467
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/android/volley/Cache$Entry;
    .locals 1

<<<<<<< HEAD
    .line 391
=======
    .line 331
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
<<<<<<< HEAD
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/volley/Request;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
=======
    .locals 4

    .line 303
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
>>>>>>> 4d1b24c5... Update volley

    move-result-object v0

    .line 310
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I

    move-result v1

    .line 311
    .local v1, "method":I
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 312
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getErrorListener()Lcom/android/volley/Response$ErrorListener;
<<<<<<< HEAD
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-object v0
=======
    .locals 2

    .line 189
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    monitor-exit v0

    return-object v1

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
>>>>>>> 4d1b24c5... Update volley
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

<<<<<<< HEAD
    .line 420
=======
    .line 371
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/volley/Request;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

<<<<<<< HEAD
    .line 178
=======
    .line 163
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget v0, p0, Lcom/android/volley/Request;->mMethod:I

    return v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

<<<<<<< HEAD
=======
    .line 445
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

<<<<<<< HEAD
=======
    .line 462
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

<<<<<<< HEAD
    .line 484
=======
    .line 428
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

<<<<<<< HEAD
    if-eqz v0, :cond_0

    .line 485
=======
    .line 429
    .local v0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

>>>>>>> 4d1b24c5... Update volley
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

<<<<<<< HEAD
    .line 486
=======
    .line 430
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

<<<<<<< HEAD
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
=======
    return-object v1

    .line 432
    :cond_0
    const/4 v1, 0x0

    return-object v1
>>>>>>> 4d1b24c5... Update volley
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

<<<<<<< HEAD
    .line 468
=======
    .line 413
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

<<<<<<< HEAD
    .line 437
=======
    .line 387
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

<<<<<<< HEAD
    .line 457
=======
    .line 407
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

<<<<<<< HEAD
    .line 609
=======
    .line 575
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/android/volley/RetryPolicy;
    .locals 1

<<<<<<< HEAD
    .line 629
=======
    .line 589
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

<<<<<<< HEAD
    .line 322
=======
    .line 290
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    if-eqz v0, :cond_0

<<<<<<< HEAD
    .line 325
=======
    .line 293
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

<<<<<<< HEAD
    .line 323
=======
    .line 291
>>>>>>> 4d1b24c5... Update volley
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

<<<<<<< HEAD
    .line 200
=======
    .line 183
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

<<<<<<< HEAD
    .line 620
    iget-object v0, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;
=======
    .line 584
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0
>>>>>>> 4d1b24c5... Update volley

    invoke-interface {v0}, Lcom/android/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

<<<<<<< HEAD
    .line 214
=======
    .line 196
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget v0, p0, Lcom/android/volley/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

<<<<<<< HEAD
    .line 334
    iget-object v0, p0, Lcom/android/volley/Request;->mRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
=======
    .line 298
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 2

<<<<<<< HEAD
    .line 647
    iget-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z
=======
    .line 604
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;
>>>>>>> 4d1b24c5... Update volley

    monitor-enter v0

    .line 605
    :try_start_0
    iget-boolean v1, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    monitor-exit v0

    return v1

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

<<<<<<< HEAD
    .line 408
    iget-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z
=======
    .line 359
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;
>>>>>>> 4d1b24c5... Update volley

    monitor-enter v0

    .line 360
    :try_start_0
    iget-boolean v1, p0, Lcom/android/volley/Request;->mCanceled:Z

    monitor-exit v0

    return v1

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markDelivered()V
    .locals 2

<<<<<<< HEAD
    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    return-void
.end method

.method protected onFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

=======
    .line 597
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 599
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyListenerResponseNotUsable()V
    .locals 2

    .line 689
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->mRequestCompleteListener:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 691
    .local v1, "listener":Lcom/android/volley/Request$NetworkRequestCompleteListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    if-eqz v1, :cond_0

    .line 693
    invoke-interface {v1, p0}, Lcom/android/volley/Request$NetworkRequestCompleteListener;->onNoUsableResponseReceived(Lcom/android/volley/Request;)V

    .line 695
    :cond_0
>>>>>>> 4d1b24c5... Update volley
    return-void

    .line 691
    .end local v1    # "listener":Lcom/android/volley/Request$NetworkRequestCompleteListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyListenerResponseReceived(Lcom/android/volley/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 675
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    .local p1, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->mRequestCompleteListener:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 677
    .local v1, "listener":Lcom/android/volley/Request$NetworkRequestCompleteListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-eqz v1, :cond_0

    .line 679
    invoke-interface {v1, p0, p1}, Lcom/android/volley/Request$NetworkRequestCompleteListener;->onResponseReceived(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 681
    :cond_0
    return-void

    .line 677
    .end local v1    # "listener":Lcom/android/volley/Request$NetworkRequestCompleteListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

<<<<<<< HEAD
=======
    .line 628
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method sendEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .line 262
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p0, p1}, Lcom/android/volley/RequestQueue;->sendRequestEvent(Lcom/android/volley/Request;I)V

    .line 265
    :cond_0
    return-void
.end method

.method public setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "entry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

<<<<<<< HEAD
    .line 381
    iput-object p1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/volley/Request;->mRedirectUrl:Ljava/lang/String;

    return-void
=======
    .line 324
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    .line 325
    return-object p0
.end method

.method setNetworkRequestCompleteListener(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V
    .locals 2
    .param p1, "requestCompleteListener"    # Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 662
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_0
    iput-object p1, p0, Lcom/android/volley/Request;->mRequestCompleteListener:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 664
    monitor-exit v0

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
>>>>>>> 4d1b24c5... Update volley
.end method

.method public setRequestQueue(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

<<<<<<< HEAD
    .line 301
    iput-object p1, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;

=======
    .line 274
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 275
>>>>>>> 4d1b24c5... Update volley
    return-object p0
.end method

.method public setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "retryPolicy"    # Lcom/android/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RetryPolicy;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

<<<<<<< HEAD
    .line 240
    iput-object p1, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;

=======
    .line 219
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mRetryPolicy:Lcom/android/volley/RetryPolicy;

    .line 220
>>>>>>> 4d1b24c5... Update volley
    return-object p0
.end method

.method public final setSequence(I)Lcom/android/volley/Request;
<<<<<<< HEAD
    .locals 0
=======
    .locals 1
    .param p1, "sequence"    # I
>>>>>>> 4d1b24c5... Update volley
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

<<<<<<< HEAD
    .line 312
=======
    .line 284
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

<<<<<<< HEAD
=======
    .line 285
    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/android/volley/Request;
    .locals 0
    .param p1, "shouldCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldCache:Z

    .line 518
    return-object p0
.end method

.method public final setShouldRetryConnectionErrors(Z)Lcom/android/volley/Request;
    .locals 0
    .param p1, "shouldRetryConnectionErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldRetryConnectionErrors:Z

    .line 551
    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)Lcom/android/volley/Request;
    .locals 0
    .param p1, "shouldRetryServerErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 532
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldRetryServerErrors:Z

    .line 533
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/android/volley/Request;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;

    .line 174
>>>>>>> 4d1b24c5... Update volley
    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

<<<<<<< HEAD
    .line 578
    iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldCache:Z
=======
    .line 523
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z
>>>>>>> 4d1b24c5... Update volley

    return-object p0
.end method

<<<<<<< HEAD
.method public setTag(Ljava/lang/Object;)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/android/volley/Request;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z
=======
.method public final shouldRetryConnectionErrors()Z
    .locals 1

    .line 559
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldRetryConnectionErrors:Z

    return v0
.end method

.method public final shouldRetryServerErrors()Z
    .locals 1

    .line 540
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldRetryServerErrors:Z
>>>>>>> 4d1b24c5... Update volley

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 713
<<<<<<< HEAD
=======
    .local p0, "this":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

<<<<<<< HEAD
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/volley/Request;->mCanceled:Z

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
=======
    move-result-object v0

    .line 714
    .local v0, "trafficStatsTag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0
>>>>>>> 4d1b24c5... Update volley

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

<<<<<<< HEAD
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
=======
    move-result-object v1

    .line 715
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 719
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
>>>>>>> 4d1b24c5... Update volley

    move-result-object v1

<<<<<<< HEAD
    return-object v0
=======
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    return-object v1
>>>>>>> 4d1b24c5... Update volley
.end method
