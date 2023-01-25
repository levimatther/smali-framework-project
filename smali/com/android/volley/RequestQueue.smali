.class public Lcom/android/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/RequestQueue$RequestFilter;,
<<<<<<< HEAD
=======
        Lcom/android/volley/RequestQueue$RequestEventListener;,
        Lcom/android/volley/RequestQueue$RequestEvent;,
>>>>>>> 4d1b24c5... Update volley
        Lcom/android/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mDispatchers:[Lcom/android/volley/NetworkDispatcher;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
<<<<<<< HEAD
            "Lcom/android/volley/RequestQueue$RequestFinishedListener;",
=======
            "Lcom/android/volley/RequestQueue$RequestEventListener;",
>>>>>>> 4d1b24c5... Update volley
            ">;"
        }
    .end annotation
.end field

.field private final mFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
<<<<<<< HEAD
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
=======
            "Ljava/util/List<",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener;",
            ">;"
>>>>>>> 4d1b24c5... Update volley
        }
    .end annotation
.end field

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
<<<<<<< HEAD
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/android/volley/Request<",
            "*>;>;>;"
=======
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
>>>>>>> 4d1b24c5... Update volley
        }
    .end annotation
.end field

.field private final mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/volley/Cache;
    .param p2, "network"    # Lcom/android/volley/Network;

<<<<<<< HEAD
=======
    .line 167
>>>>>>> 4d1b24c5... Update volley
    const/4 v0, 0x4

    .line 159
    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

<<<<<<< HEAD
=======
    .line 168
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V
    .locals 3
    .param p1, "cache"    # Lcom/android/volley/Cache;
    .param p2, "network"    # Lcom/android/volley/Network;
    .param p3, "threadPoolSize"    # I

<<<<<<< HEAD
    .line 148
=======
    .line 153
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

<<<<<<< HEAD
    .line 149
=======
    .line 157
>>>>>>> 4d1b24c5... Update volley
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

<<<<<<< HEAD
    .line 148
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

=======
    .line 153
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    .line 158
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/volley/Cache;
    .param p2, "network"    # Lcom/android/volley/Network;
    .param p3, "threadPoolSize"    # I
    .param p4, "delivery"    # Lcom/android/volley/ResponseDelivery;

<<<<<<< HEAD
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
=======
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

<<<<<<< HEAD
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    .line 77
=======
    .line 98
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

<<<<<<< HEAD
    .line 82
=======
    .line 101
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

<<<<<<< HEAD
    .line 88
=======
    .line 104
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

<<<<<<< HEAD
    .line 121
=======
    .line 124
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

<<<<<<< HEAD
    .line 134
    iput-object p1, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    .line 135
    iput-object p2, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    .line 136
    new-array p1, p3, [Lcom/android/volley/NetworkDispatcher;
=======
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    .line 140
    iput-object p2, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    .line 141
    new-array v0, p3, [Lcom/android/volley/NetworkDispatcher;
>>>>>>> 4d1b24c5... Update volley

    iput-object p1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

<<<<<<< HEAD
    .line 137
    iput-object p4, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

=======
    .line 142
    iput-object p4, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 143
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method


# virtual methods
.method public add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
<<<<<<< HEAD
    .locals 5
=======
    .locals 2
>>>>>>> 4d1b24c5... Update volley
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation

<<<<<<< HEAD
    .line 262
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setRequestQueue(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;

    .line 263
=======
    .line 256
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setRequestQueue(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;

    .line 257
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

<<<<<<< HEAD
    .line 264
=======
    .line 258
>>>>>>> 4d1b24c5... Update volley
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

<<<<<<< HEAD
    .line 265
=======
    .line 259
>>>>>>> 4d1b24c5... Update volley
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

<<<<<<< HEAD
    .line 268
=======
    .line 262
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setSequence(I)Lcom/android/volley/Request;

<<<<<<< HEAD
=======
    .line 263
>>>>>>> 4d1b24c5... Update volley
    const-string v0, "add-to-queue"

    .line 269
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

<<<<<<< HEAD
    .line 272
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z
=======
    .line 264
    const/4 v0, 0x0
>>>>>>> 4d1b24c5... Update volley

    invoke-virtual {p0, p1, v0}, Lcom/android/volley/RequestQueue;->sendRequestEvent(Lcom/android/volley/Request;I)V

<<<<<<< HEAD
    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;
=======
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->beginRequest(Lcom/android/volley/Request;)V

    .line 267
    return-object p1
>>>>>>> 4d1b24c5... Update volley

    .line 259
    :catchall_0
    move-exception v1

<<<<<<< HEAD
    .line 279
=======
>>>>>>> 4d1b24c5... Update volley
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

<<<<<<< HEAD
    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    if-nez v2, :cond_1

    .line 284
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 286
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-boolean v2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 289
    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;
=======
    throw v1
.end method

.method public addRequestEventListener(Lcom/android/volley/RequestQueue$RequestEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/volley/RequestQueue$RequestEventListener;

    .line 308
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
>>>>>>> 4d1b24c5... Update volley

    .line 310
    monitor-exit v0

<<<<<<< HEAD
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
=======
    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v1
>>>>>>> 4d1b24c5... Update volley

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

<<<<<<< HEAD
    .line 297
    :cond_3
    :goto_0
    monitor-exit v1
=======
    throw v1
.end method
>>>>>>> 4d1b24c5... Update volley

.method public addRequestFinishedListener(Lcom/android/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    .local p1, "listener":Lcom/android/volley/RequestQueue$RequestFinishedListener;, "Lcom/android/volley/RequestQueue$RequestFinishedListener<TT;>;"
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

<<<<<<< HEAD
    :catchall_0
    move-exception p1

    .line 298
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 265
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public addRequestFinishedListener(Lcom/android/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
=======
    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method beginRequest(Lcom/android/volley/Request;)V
    .locals 1
>>>>>>> 4d1b24c5... Update volley
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
<<<<<<< HEAD
            "Lcom/android/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation
=======
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 272
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->sendRequestOverNetwork(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
>>>>>>> 4d1b24c5... Update volley

    .line 347
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

<<<<<<< HEAD
    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;

    .line 228
    invoke-interface {p1, v2}, Lcom/android/volley/RequestQueue$RequestFilter;->apply(Lcom/android/volley/Request;)Z

=======
    .line 277
    :goto_0
    return-void
.end method

.method public cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V
    .locals 4
    .param p1, "filter"    # Lcom/android/volley/RequestQueue$RequestFilter;

    .line 222
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;

    .line 224
    .local v2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-interface {p1, v2}, Lcom/android/volley/RequestQueue$RequestFilter;->apply(Lcom/android/volley/Request;)Z

>>>>>>> 4d1b24c5... Update volley
    move-result v3

    if-eqz v3, :cond_0

<<<<<<< HEAD
    .line 229
=======
    .line 225
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {v2}, Lcom/android/volley/Request;->cancel()V

    .line 227
    .end local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_0
    goto :goto_0

<<<<<<< HEAD
    .line 232
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 245
    new-instance v0, Lcom/android/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/RequestQueue$1;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    return-void

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method finish(Lcom/android/volley/Request;)V
    .locals 6
=======
    .line 228
    :cond_1
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 236
    if-eqz p1, :cond_0

    .line 239
    new-instance v0, Lcom/android/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/RequestQueue$1;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 246
    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method finish(Lcom/android/volley/Request;)V
    .locals 3
>>>>>>> 4d1b24c5... Update volley
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

<<<<<<< HEAD
    .line 314
=======
    .line 286
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

<<<<<<< HEAD
    .line 315
=======
    .line 287
>>>>>>> 4d1b24c5... Update volley
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

<<<<<<< HEAD
    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 317
=======
    .line 288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
>>>>>>> 4d1b24c5... Update volley
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

<<<<<<< HEAD
    .line 318
=======
    .line 290
>>>>>>> 4d1b24c5... Update volley
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0
<<<<<<< HEAD

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/RequestQueue$RequestFinishedListener;

    .line 319
    invoke-interface {v2, p1}, Lcom/android/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 321
=======

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/RequestQueue$RequestFinishedListener;

    .line 291
    .local v2, "listener":Lcom/android/volley/RequestQueue$RequestFinishedListener;, "Lcom/android/volley/RequestQueue$RequestFinishedListener<TT;>;"
    invoke-interface {v2, p1}, Lcom/android/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/android/volley/Request;)V

    .line 292
    .end local v2    # "listener":Lcom/android/volley/RequestQueue$RequestFinishedListener;, "Lcom/android/volley/RequestQueue$RequestFinishedListener<TT;>;"
    goto :goto_0

    .line 293
>>>>>>> 4d1b24c5... Update volley
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

<<<<<<< HEAD
    .line 323
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v0
=======
    .line 294
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/volley/RequestQueue;->sendRequestEvent(Lcom/android/volley/Request;I)V

    .line 295
    return-void

    .line 293
    :catchall_0
    move-exception v0
>>>>>>> 4d1b24c5... Update volley

    .line 325
    :try_start_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object p1

<<<<<<< HEAD
    .line 326
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_2

    .line 328
    sget-boolean v2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 330
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 329
    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 336
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 321
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 316
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public getCache()Lcom/android/volley/Cache;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    return-object v0
=======
    .line 288
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getCache()Lcom/android/volley/Cache;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getResponseDelivery()Lcom/android/volley/ResponseDelivery;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public removeRequestEventListener(Lcom/android/volley/RequestQueue$RequestEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/volley/RequestQueue$RequestEventListener;

    .line 315
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRequestFinishedListener(Lcom/android/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    .local p1, "listener":Lcom/android/volley/RequestQueue$RequestFinishedListener;, "Lcom/android/volley/RequestQueue$RequestFinishedListener<TT;>;"
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 332
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendRequestEvent(Lcom/android/volley/Request;I)V
    .locals 3
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 299
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/RequestQueue$RequestEventListener;

    .line 301
    .local v2, "listener":Lcom/android/volley/RequestQueue$RequestEventListener;
    invoke-interface {v2, p1, p2}, Lcom/android/volley/RequestQueue$RequestEventListener;->onRequestEvent(Lcom/android/volley/Request;I)V

    .line 302
    .end local v2    # "listener":Lcom/android/volley/RequestQueue$RequestEventListener;
    goto :goto_0

    .line 303
    :cond_0
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
>>>>>>> 4d1b24c5... Update volley
.end method

.method sendRequestOverNetwork(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

<<<<<<< HEAD
    .line 200
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
=======
    .line 340
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
>>>>>>> 4d1b24c5... Update volley

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public removeRequestFinishedListener(Lcom/android/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 361
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 6

<<<<<<< HEAD
    .line 166
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 168
=======
    .line 172
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 174
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Lcom/android/volley/CacheDispatcher;

    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

<<<<<<< HEAD
    .line 169
    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    .line 172
=======
    .line 175
    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->start()V

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
>>>>>>> 4d1b24c5... Update volley
    :goto_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_0

<<<<<<< HEAD
    .line 173
=======
    .line 179
>>>>>>> 4d1b24c5... Update volley
    new-instance v1, Lcom/android/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

<<<<<<< HEAD
    .line 175
=======
    .line 181
    .local v1, "networkDispatcher":Lcom/android/volley/NetworkDispatcher;
>>>>>>> 4d1b24c5... Update volley
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aput-object v1, v2, v0

<<<<<<< HEAD
    .line 176
    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->start()V

=======
    .line 182
    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->start()V

    .line 178
    .end local v1    # "networkDispatcher":Lcom/android/volley/NetworkDispatcher;
>>>>>>> 4d1b24c5... Update volley
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

<<<<<<< HEAD
=======
    .line 184
    .end local v0    # "i":I
>>>>>>> 4d1b24c5... Update volley
    :cond_0
    return-void
.end method

.method public stop()V
<<<<<<< HEAD
    .locals 3

    .line 184
=======
    .locals 4

    .line 188
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    if-eqz v0, :cond_0

<<<<<<< HEAD
    .line 185
    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->quit()V

    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 188
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 189
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->quit()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

=======
    .line 189
    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->quit()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 192
    .local v3, "mDispatcher":Lcom/android/volley/NetworkDispatcher;
    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v3}, Lcom/android/volley/NetworkDispatcher;->quit()V

    .line 191
    .end local v3    # "mDispatcher":Lcom/android/volley/NetworkDispatcher;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
>>>>>>> 4d1b24c5... Update volley
    :cond_2
    return-void
.end method
