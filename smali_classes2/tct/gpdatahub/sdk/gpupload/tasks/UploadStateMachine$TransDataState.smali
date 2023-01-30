.class Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;
.super Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;
.source "UploadStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransDataState"
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;


# direct methods
.method private constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V
    .locals 1

    .line 271
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V

    return-void
.end method

.method private emulateQueryHubDatas()V
    .locals 4

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDataHubRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    .line 323
    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryHubDatas_for_test]: localPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->setLocalPath(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    return-void
.end method

.method private queryHubData()V
    .locals 4

    .line 330
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryHubDatas]: date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    .line 332
    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->queryEventByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryHubDatas]: datas="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-direct {p0, v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method private queryHubDataByRecordId()V
    .locals 9

    .line 344
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getStartRecordId()J

    move-result-wide v1

    .line 346
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getUnQueryRecordId()J

    move-result-wide v3

    .line 347
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getEndRecordId()J

    move-result-wide v5

    .line 348
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[queryHubDataByRecordId]: startId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[queryHubDataByRecordId]: unQueryId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[queryHubDataByRecordId]: endId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ".json"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 355
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[queryHubDataByRecordId]: no need to query new record"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v0

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDataHubDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->setLocalPath(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4, v5, v6}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->queryMobileEventById(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 365
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[queryHubDataByRecordId]: data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 368
    invoke-direct {p0, v1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->writeDataHubDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method private writeDataHubDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 386
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[writeDataHubDataToFile] fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 392
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDataHubDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 393
    :try_start_1
    invoke-static {v2}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->makeRootDirectory(Ljava/lang/String;)Z

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 396
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 399
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v4}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[writeDataHubDataToFile] Create the file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 404
    :cond_1
    :goto_0
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v4, "rwd"

    invoke-direct {p2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 406
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    :try_start_3
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 421
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto/16 :goto_7

    :catch_1
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, p2

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v0, p2

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    goto :goto_3

    :catch_6
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_7
    move-exception p1

    move-object v2, v0

    .line 415
    :goto_2
    :try_start_4
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_2

    .line 419
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_5

    :catch_8
    move-exception p1

    .line 421
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_9
    move-exception p1

    move-object v2, v0

    .line 412
    :goto_3
    :try_start_6
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_2

    .line 419
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_5

    :catch_a
    move-exception p1

    move-object v2, v0

    .line 409
    :goto_4
    :try_start_8
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_2

    .line 419
    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    .line 426
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_6

    .line 428
    :cond_3
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object p1

    invoke-virtual {p1, v2}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->setLocalPath(Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    :goto_6
    return-void

    :goto_7
    if-eqz v0, :cond_4

    .line 419
    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_8

    :catch_b
    move-exception p2

    .line 421
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_4
    :goto_8
    throw p1
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 375
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransDataState] writeToFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->writeTxtToFileInRomVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDataHubRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->setLocalPath(Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 274
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const-string v1, "[TransDataState] enter"

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->logd(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->isEnableTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$900(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 288
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 312
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1000(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;

    move-result-object p1

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;->onTransDataFailed()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 305
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->setDetailState(I)V

    .line 306
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    invoke-virtual {p1, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->addTaskFlag(I)V

    .line 308
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1000(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;

    move-result-object p1

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;->onTransDataSuccess()V

    .line 309
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$900(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->setDetailState(I)V

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->setDetailState(I)V

    .line 294
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->isDateType()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 295
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->queryHubData()V

    goto :goto_0

    .line 296
    :cond_4
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->isRecordType()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 297
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;->queryHubDataByRecordId()V

    :cond_5
    :goto_0
    return v1
.end method
