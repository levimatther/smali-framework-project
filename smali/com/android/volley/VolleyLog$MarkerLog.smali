.class Lcom/android/volley/VolleyLog$MarkerLog;
.super Ljava/lang/Object;
.source "VolleyLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/VolleyLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkerLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/VolleyLog$MarkerLog$Marker;
    }
.end annotation


# static fields
.field public static final ENABLED:Z

.field private static final MIN_DURATION_FOR_LOGGING_MS:J


# instance fields
.field private mFinished:Z

.field private final mMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/VolleyLog$MarkerLog$Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

<<<<<<< HEAD
    .line 111
=======
    .line 109
>>>>>>> 4d1b24c5... Update volley
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

<<<<<<< HEAD
    .line 110
=======
    .line 108
>>>>>>> 4d1b24c5... Update volley
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    return-void
.end method

.method private getTotalDuration()J
<<<<<<< HEAD
    .locals 4

    .line 181
=======
    .locals 6

    .line 173
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0
<<<<<<< HEAD

    const-wide/16 v0, 0x0

    return-wide v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
=======
>>>>>>> 4d1b24c5... Update volley

    .line 174
    const-wide/16 v0, 0x0

<<<<<<< HEAD
    iget-wide v0, v0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 186
    iget-object v2, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
=======
    return-wide v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v1, 0x0
>>>>>>> 4d1b24c5... Update volley

    move-result-object v2

<<<<<<< HEAD
    check-cast v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    iget-wide v2, v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    sub-long/2addr v2, v0

    return-wide v2
=======
    .line 178
    .local v0, "first":J
    iget-object v2, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    iget-wide v2, v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 179
    .local v2, "last":J
    sub-long v4, v2, v0

    return-wide v4
>>>>>>> 4d1b24c5... Update volley
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;J)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadId"    # J

    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    if-nez v0, :cond_0

<<<<<<< HEAD
    .line 141
=======
    .line 135
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    new-instance v7, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/VolleyLog$MarkerLog$Marker;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

<<<<<<< HEAD
    .line 142
=======
    .line 136
>>>>>>> 4d1b24c5... Update volley
    monitor-exit p0

    return-void

<<<<<<< HEAD
    .line 138
=======
    .line 132
    .end local p0    # "this":Lcom/android/volley/VolleyLog$MarkerLog;
>>>>>>> 4d1b24c5... Update volley
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

<<<<<<< HEAD
    const-string p2, "Marker added to finished log"
=======
    const-string v1, "Marker added to finished log"
>>>>>>> 4d1b24c5... Update volley

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "threadId":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

<<<<<<< HEAD
    .line 171
=======
    .line 165
>>>>>>> 4d1b24c5... Update volley
    iget-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    if-nez v0, :cond_0

<<<<<<< HEAD
=======
    .line 166
>>>>>>> 4d1b24c5... Update volley
    const-string v0, "Request on the loose"

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

<<<<<<< HEAD
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;
=======
    .line 167
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"
>>>>>>> 4d1b24c5... Update volley

    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    .line 173
    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

<<<<<<< HEAD
=======
    .line 169
>>>>>>> 4d1b24c5... Update volley
    :cond_0
    return-void
.end method

.method public declared-synchronized finish(Ljava/lang/String;)V
<<<<<<< HEAD
    .locals 10

    monitor-enter p0

=======
    .locals 16
    .param p1, "header"    # Ljava/lang/String;

    move-object/from16 v1, p0

    monitor-enter p0

    .line 145
>>>>>>> 4d1b24c5... Update volley
    const/4 v0, 0x1

    .line 151
    :try_start_0
<<<<<<< HEAD
    iput-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 153
    invoke-direct {p0}, Lcom/android/volley/VolleyLog$MarkerLog;->getTotalDuration()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0
=======
    iput-boolean v0, v1, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/android/volley/VolleyLog$MarkerLog;->getTotalDuration()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .local v2, "duration":J
    const-wide/16 v4, 0x0
>>>>>>> 4d1b24c5... Update volley

    cmp-long v3, v1, v3

<<<<<<< HEAD
    if-gtz v3, :cond_0

    .line 155
=======
    if-gtz v4, :cond_0

    .line 149
>>>>>>> 4d1b24c5... Update volley
    monitor-exit p0

    return-void

<<<<<<< HEAD
    .line 158
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    iget-wide v5, v3, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    const-string v3, "(%-4d ms) %s"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 159
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v4

    aput-object p1, v8, v0

    invoke-static {v3, v8}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 161
    iget-wide v2, v1, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    const-string v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    sub-long v5, v2, v5

    .line 162
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v4

    iget-wide v5, v1, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->thread:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v0

    iget-object v1, v1, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    aput-object v1, v9, v7

    invoke-static {v8, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v5, v2

    goto :goto_0

    .line 165
=======
    .line 152
    :cond_0
    :try_start_1
    iget-object v4, v1, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    iget-wide v6, v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 153
    .local v6, "prevTime":J
    const-string v4, "(%-4d ms) %s"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object p1, v9, v0

    invoke-static {v4, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v4, v1, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 155
    .local v9, "marker":Lcom/android/volley/VolleyLog$MarkerLog$Marker;
    iget-wide v10, v9, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 156
    .local v10, "thisTime":J
    const-string v12, "(+%-4d) [%2d] %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    sub-long v14, v10, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v5

    iget-wide v14, v9, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->thread:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v0

    iget-object v14, v9, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    aput-object v14, v13, v8

    invoke-static {v12, v13}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    move-wide v6, v10

    .line 158
    .end local v9    # "marker":Lcom/android/volley/VolleyLog$MarkerLog$Marker;
    .end local v10    # "thisTime":J
    goto :goto_0

    .line 159
    .end local p0    # "this":Lcom/android/volley/VolleyLog$MarkerLog;
>>>>>>> 4d1b24c5... Update volley
    :cond_1
    monitor-exit p0

    return-void

    .line 144
    .end local v2    # "duration":J
    .end local v6    # "prevTime":J
    .end local p1    # "header":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
