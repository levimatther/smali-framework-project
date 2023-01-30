.class Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;
.super Ltct/gpdatahub/sdk/dao/DaoHelperBase;
.source "UploadDaoHelperGpImp.java"

# interfaces
.implements Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected sqlParaWrapper:Ltct/gpdatahub/sdk/db/SQLParaWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/DaoHelperBase;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ltct/gpdatahub/sdk/db/SQLParaWrapper;

    invoke-direct {v0, p1}, Ltct/gpdatahub/sdk/db/SQLParaWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->sqlParaWrapper:Ltct/gpdatahub/sdk/db/SQLParaWrapper;

    .line 21
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/db/SQLParaWrapper;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public deleteUpload()V
    .locals 3

    .line 153
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteUploadByDay(Ljava/lang/String;)I
    .locals 3

    .line 157
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "upload"

    const-string v2, "day=?"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteUploadById(JJ)I
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 163
    iget-object v5, v0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v9, v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x1

    aput-object v6, v9, v16

    const-string v6, "upload"

    const/4 v7, 0x0

    const-string v8, "_id>=? and _id<? "

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id DESC"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    .line 173
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 174
    iget-object v6, v0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v7, v13, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v16

    const-string v1, "upload"

    const-string v2, "_id>=? and _id<? "

    invoke-virtual {v6, v1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v6, v1

    .line 181
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    return v6
.end method

.method public getAllUploadCursor()Landroid/database/Cursor;
    .locals 8

    .line 57
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFailedUploadByDateCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 103
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    const-string p2, "%fail%"

    aput-object p2, v4, p1

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "day>=? and day<=? and upload_state like?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "day DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getFailedUploadCursor()Landroid/database/Cursor;
    .locals 8

    .line 97
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "%fail%"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "upload_state like?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getLatestUploadCursor(I)Landroid/database/Cursor;
    .locals 8

    .line 71
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getNeedToUploadByDateAndFailTimesCursor(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8

    .line 116
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x8

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, v4, v1

    const/4 p3, 0x2

    const-string v1, "%fail%"

    aput-object v1, v4, p3

    const/4 p3, 0x3

    aput-object p1, v4, p3

    const/4 p3, 0x4

    aput-object p2, v4, p3

    const/4 p3, 0x5

    const-string v1, "not-upload"

    aput-object v1, v4, p3

    const/4 p3, 0x6

    aput-object p1, v4, p3

    const/4 p1, 0x7

    aput-object p2, v4, p1

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "upload_fail_times>? and upload_fail_times<=? and upload_state like? and day>=? and day<=? or upload_state=? and day>=? and day<=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getSuccessUploadCursor()Landroid/database/Cursor;
    .locals 8

    .line 77
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "success"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "upload_state=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessUploadCursorByDate(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 83
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    const-string p2, "success"

    aput-object p2, v4, p1

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "day>=? and day<=? and upload_state=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "day DESC"

    .line 84
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getUploadCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 64
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "day=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public insertUpload(Landroid/content/ContentValues;)V
    .locals 3

    .line 139
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public insertUploadRecordByStartId(JIIZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public queryTaskFlagByStartId(J)Landroid/database/Cursor;
    .locals 8

    .line 34
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "start_id=? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadByStartId(J)Landroid/database/Cursor;
    .locals 8

    .line 25
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string v1, "upload"

    const/4 v2, 0x0

    const-string v3, "start_id=? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadFlagByDate(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 43
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_flag"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v1, "upload"

    const-string v3, "day=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadProcessByDate(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 51
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "split_process"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v1, "upload"

    const-string v3, "day=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public updateUpload(Landroid/content/ContentValues;)V
    .locals 3

    .line 143
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateUploadByStartId(Landroid/content/ContentValues;J)V
    .locals 3

    .line 147
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    const-string p2, "upload"

    const-string p3, "start_id=? "

    invoke-virtual {v0, p2, p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
