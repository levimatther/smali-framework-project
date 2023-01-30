.class public Ltct/gpdatahub/sdk/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerFactory:Ltct/gpdatahub/sdk/handler/HandlerFactory;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

.field mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/Processor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dataprocess_main_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    .line 28
    iput-object v1, p0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    .line 31
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/Processor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ltct/gpdatahub/sdk/handler/HandlerFactory;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/handler/HandlerFactory;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandlerFactory:Ltct/gpdatahub/sdk/handler/HandlerFactory;

    .line 34
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/handler/HandlerFactory;->getMobileEventHandler(Landroid/content/Context;)Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    .line 35
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandlerFactory:Ltct/gpdatahub/sdk/handler/HandlerFactory;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/handler/HandlerFactory;->getUploadHandler(Landroid/content/Context;)Ltct/gpdatahub/sdk/handler/UploadHandler;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    return-void
.end method


# virtual methods
.method public deleteMobileEventByDay(Ljava/lang/String;)V
    .locals 2

    .line 262
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltct/gpdatahub/sdk/Processor$19;

    invoke-direct {v1, p0, p1}, Ltct/gpdatahub/sdk/Processor$19;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteMobileEventById(JJ)V
    .locals 8

    .line 254
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v7, Ltct/gpdatahub/sdk/Processor$18;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Ltct/gpdatahub/sdk/Processor$18;-><init>(Ltct/gpdatahub/sdk/Processor;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertActivitySession(Ljava/lang/String;I)V
    .locals 2

    .line 100
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltct/gpdatahub/sdk/Processor$8;

    invoke-direct {v1, p0, p1, p2}, Ltct/gpdatahub/sdk/Processor$8;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 76
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltct/gpdatahub/sdk/Processor$5;

    invoke-direct {v1, p0, p1, p2}, Ltct/gpdatahub/sdk/Processor$5;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 13

    move-object v10, p0

    .line 206
    iget-object v11, v10, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v12, Ltct/gpdatahub/sdk/Processor$12;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ltct/gpdatahub/sdk/Processor$12;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 14

    move-object v11, p0

    .line 238
    iget-object v12, v11, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v13, Ltct/gpdatahub/sdk/Processor$16;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Ltct/gpdatahub/sdk/Processor$16;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 13

    move-object v10, p0

    .line 198
    iget-object v11, v10, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v12, Ltct/gpdatahub/sdk/Processor$11;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ltct/gpdatahub/sdk/Processor$11;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 14

    move-object v11, p0

    .line 230
    iget-object v12, v11, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v13, Ltct/gpdatahub/sdk/Processor$15;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Ltct/gpdatahub/sdk/Processor$15;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertUploadRecordByStartId(JIIZ)V
    .locals 9

    .line 190
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v8, Ltct/gpdatahub/sdk/Processor$10;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/Processor$10;-><init>(Ltct/gpdatahub/sdk/Processor;JIIZ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertUploadRecordByStartId(JIIZLjava/lang/String;)V
    .locals 11

    move-object v8, p0

    .line 222
    iget-object v9, v8, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v10, Ltct/gpdatahub/sdk/Processor$14;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Ltct/gpdatahub/sdk/Processor$14;-><init>(Ltct/gpdatahub/sdk/Processor;JIIZLjava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 58
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v8, Ltct/gpdatahub/sdk/Processor$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/Processor$3;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v7, Ltct/gpdatahub/sdk/Processor$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ltct/gpdatahub/sdk/Processor$1;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v8, Ltct/gpdatahub/sdk/Processor$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/Processor$2;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v8, Ltct/gpdatahub/sdk/Processor$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/Processor$4;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public queryFailedUpload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryFailedUpload()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0, p1, p2}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryLatestUpload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryLatestUpload()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryMobileEvent()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->queryMobileEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryMobileEventByDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->queryMobileEventByDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryMobileEventById(JJ)Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->queryMobileEventById(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryNewestMobileEventId()J
    .locals 2

    .line 136
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->queryNewestMobileEventId()J

    move-result-wide v0

    return-wide v0
.end method

.method public queryRecordDateMobileEvent()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->queryRecordDateMobileEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryRecordDateMobileEventByIdSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->queryRecordDateMobileEventByIdSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public querySuccessUpload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/handler/UploadHandler;->querySuccessUpload()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySuccessUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0, p1, p2}, Ltct/gpdatahub/sdk/handler/UploadHandler;->querySuccessUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryTaskFlagByStartId(J)I
    .locals 1

    .line 145
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0, p1, p2}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryTaskFlagByStartId(J)I

    move-result p1

    return p1
.end method

.method public queryUpload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryUpload()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryUploadByDay(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryUploadByDay(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadByStartId(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0, p1, p2}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryUploadByStartId(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadFlagByDate(Ljava/lang/String;)I
    .locals 1

    .line 181
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryUploadFlagByDate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public queryUploadProcessByDate(Ljava/lang/String;)I
    .locals 1

    .line 185
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/handler/UploadHandler;->queryUploadProcessByDate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public trackActivityLifecycle()V
    .locals 2

    .line 270
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltct/gpdatahub/sdk/Processor$20;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/Processor$20;-><init>(Ltct/gpdatahub/sdk/Processor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public trackSystemInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltct/gpdatahub/sdk/Processor$7;

    invoke-direct {v1, p0, p1, p2}, Ltct/gpdatahub/sdk/Processor$7;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public trackThrowableInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 108
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltct/gpdatahub/sdk/Processor$9;

    invoke-direct {v1, p0, p1, p2}, Ltct/gpdatahub/sdk/Processor$9;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v7, Ltct/gpdatahub/sdk/Processor$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ltct/gpdatahub/sdk/Processor$6;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 13

    move-object v10, p0

    .line 214
    iget-object v11, v10, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v12, Ltct/gpdatahub/sdk/Processor$13;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ltct/gpdatahub/sdk/Processor$13;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 14

    move-object v11, p0

    .line 246
    iget-object v12, v11, Ltct/gpdatahub/sdk/Processor;->mHandler:Landroid/os/Handler;

    new-instance v13, Ltct/gpdatahub/sdk/Processor$17;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Ltct/gpdatahub/sdk/Processor$17;-><init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
