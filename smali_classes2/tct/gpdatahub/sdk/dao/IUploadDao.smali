.class public interface abstract Ltct/gpdatahub/sdk/dao/IUploadDao;
.super Ljava/lang/Object;
.source "IUploadDao.java"


# virtual methods
.method public abstract deleteUploadById(JJ)V
.end method

.method public abstract getAllUpload(Landroid/database/Cursor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
.end method

.method public abstract insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract insertUploadRecordByStartId(JIIZ)V
.end method

.method public abstract insertUploadRecordByStartId(JIIZLjava/lang/String;)V
.end method

.method public abstract queryFailedUpload()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract queryLatestUpload()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract querySuccessUpload()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySuccessUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract queryTaskFlagByStartId(J)I
.end method

.method public abstract queryUpload()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryUploadByDay(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract queryUploadByStartId(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryUploadFlagByDate(Ljava/lang/String;)I
.end method

.method public abstract queryUploadProcessByDate(Ljava/lang/String;)I
.end method

.method public abstract updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
.end method

.method public abstract updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
.end method
