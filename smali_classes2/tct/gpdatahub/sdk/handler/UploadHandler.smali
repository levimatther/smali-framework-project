.class public Ltct/gpdatahub/sdk/handler/UploadHandler;
.super Ljava/lang/Object;
.source "UploadHandler.java"


# static fields
.field private static IS_SDK_GP_VERSION:Z


# instance fields
.field private mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

.field private mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    .line 24
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    sput-boolean v0, Ltct/gpdatahub/sdk/handler/UploadHandler;->IS_SDK_GP_VERSION:Z

    .line 25
    invoke-static {}, Ltct/gpdatahub/sdk/factory/DaoFactory;->getInstance()Ltct/gpdatahub/sdk/factory/DaoFactory;

    move-result-object v0

    sget-boolean v1, Ltct/gpdatahub/sdk/handler/UploadHandler;->IS_SDK_GP_VERSION:Z

    invoke-virtual {v0, v1, p1}, Ltct/gpdatahub/sdk/factory/DaoFactory;->getUploadDao(ZLandroid/content/Context;)Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    return-void
.end method


# virtual methods
.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 11

    move-object v1, p0

    .line 94
    :try_start_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Ltct/gpdatahub/sdk/dao/IUploadDao;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 12

    move-object v1, p0

    .line 127
    :try_start_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Ltct/gpdatahub/sdk/dao/IUploadDao;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 11

    move-object v1, p0

    .line 86
    :try_start_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Ltct/gpdatahub/sdk/dao/IUploadDao;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 12

    move-object v1, p0

    .line 119
    :try_start_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Ltct/gpdatahub/sdk/dao/IUploadDao;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUploadRecordByStartId(JIIZ)V
    .locals 6

    .line 78
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ltct/gpdatahub/sdk/dao/IUploadDao;->insertUploadRecordByStartId(JIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUploadRecordByStartId(JIIZLjava/lang/String;)V
    .locals 7

    .line 111
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ltct/gpdatahub/sdk/dao/IUploadDao;->insertUploadRecordByStartId(JIIZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
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

    .line 61
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryFailedUpload()Ljava/util/List;

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

    .line 65
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0, p1, p2}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

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

    .line 45
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryLatestUpload()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 49
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

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

    .line 53
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IUploadDao;->querySuccessUpload()Ljava/util/List;

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

    .line 57
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0, p1, p2}, Ltct/gpdatahub/sdk/dao/IUploadDao;->querySuccessUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryTaskFlagByStartId(J)I
    .locals 1

    .line 33
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0, p1, p2}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryTaskFlagByStartId(J)I

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

    .line 29
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryUpload()Ljava/util/List;

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

    .line 41
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryUploadByDay(Ljava/lang/String;)Ljava/util/List;

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

    .line 37
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0, p1, p2}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryUploadByStartId(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadFlagByDate(Ljava/lang/String;)I
    .locals 1

    .line 69
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryUploadFlagByDate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public queryUploadProcessByDate(Ljava/lang/String;)I
    .locals 1

    .line 73
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IUploadDao;->queryUploadProcessByDate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 11

    move-object v1, p0

    .line 102
    :try_start_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Ltct/gpdatahub/sdk/dao/IUploadDao;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 12

    move-object v1, p0

    .line 135
    :try_start_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/handler/UploadHandler;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Ltct/gpdatahub/sdk/dao/IUploadDao;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
