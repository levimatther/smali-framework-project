.class Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;
.super Ltct/gpdatahub/sdk/dao/DaoHelperBase;
.source "UploadDaoHelperRomImp.java"

# interfaces
.implements Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadDaoHelperRomImp"


# instance fields
.field protected resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/DaoHelperBase;-><init>(Landroid/content/Context;)V

    .line 24
    iget-object p1, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private generateContentValues(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 246
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "day"

    .line 247
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "start_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "upload_state"

    .line 249
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "upload_fail_times"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "last_upload_time"

    .line 251
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "split_process"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "upload_flag"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "data"

    .line 254
    invoke-virtual {v0, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 11

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-nez p4, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    if-nez p6, :cond_2

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object/from16 v7, p6

    :goto_2
    move-object v1, p0

    move-wide v3, p2

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 275
    invoke-direct/range {v1 .. v10}, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->generateContentValues(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    :try_start_0
    const-string v1, "UploadDaoHelperRomImp"

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUpload,insert values:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    .line 278
    :try_start_1
    iget-object v2, v1, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 280
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public deleteUpload()V
    .locals 3

    .line 152
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteUploadByDay(Ljava/lang/String;)I
    .locals 4

    .line 156
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "day=?"

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteUploadById(JJ)I
    .locals 10

    .line 162
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v4, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v4, v9

    const/4 v2, 0x0

    const-string v3, "_id>=? and _id<? "

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v9

    const-string p1, "_id>=? and _id<? "

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getAllUploadCursor()Landroid/database/Cursor;
    .locals 6

    .line 57
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFailedUploadByDateCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 100
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    const-string p2, "%fail%"

    aput-object p2, v4, p1

    const/4 v2, 0x0

    const-string v3, "day>=? and day<=? and upload_state like?"

    const-string v5, "day DESC"

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getFailedUploadCursor()Landroid/database/Cursor;
    .locals 6

    .line 94
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const-string v2, "%fail%"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v3, "upload_state like?"

    const-string v5, "day DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getLatestUploadCursor(I)Landroid/database/Cursor;
    .locals 6

    .line 69
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x0

    const-string v3, "_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getNeedToUploadByDateAndFailTimesCursor(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6

    .line 115
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v4, v2

    const/4 p3, 0x2

    const-string v2, "%fail%"

    aput-object v2, v4, p3

    const/4 p3, 0x3

    aput-object p1, v4, p3

    const/4 p3, 0x4

    aput-object p2, v4, p3

    const/4 p3, 0x5

    const-string v2, "not-upload"

    aput-object v2, v4, p3

    const/4 p3, 0x6

    aput-object p1, v4, p3

    const/4 p1, 0x7

    aput-object p2, v4, p1

    const/4 v2, 0x0

    const-string v3, "upload_fail_times>? and upload_fail_times<=? and upload_state like? and day>=? and day<=? or upload_state=? and day>=? and day<=?"

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getSuccessUploadCursor()Landroid/database/Cursor;
    .locals 6

    .line 74
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const-string v2, "success"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v3, "upload_state=?"

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessUploadCursorByDate(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 80
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    const-string p2, "success"

    aput-object p2, v4, p1

    const/4 v2, 0x0

    const-string v3, "day>=? and day<=? and upload_state=?"

    const-string v5, "day DESC"

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getUploadCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 63
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x0

    const-string v3, "day=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 11

    move-wide v0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, "UploadDaoHelperRomImp"

    if-gez v2, :cond_0

    const-string v0, "insertUpload, start_id can\'t be less than zero !"

    .line 204
    invoke-static {v3, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v2, p0

    .line 207
    iget-object v4, v2, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v5, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v9, 0x0

    const-string v7, "start_id=?"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 212
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " already exists,update this record!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p0 .. p9}, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct/range {p0 .. p9}, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUpload(Landroid/content/ContentValues;)V
    .locals 2

    .line 138
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public insertUploadRecordByStartId(JIIZLjava/lang/String;)V
    .locals 11

    .line 188
    :try_start_0
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentSecond()Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentDay()Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_0

    const-string v0, "success"

    goto :goto_0

    :cond_0
    const-string v0, "failed"

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v3, p1

    move v8, p4

    move v9, p3

    move-object/from16 v10, p6

    .line 191
    invoke-virtual/range {v1 .. v10}, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public queryTaskFlagByStartId(J)Landroid/database/Cursor;
    .locals 6

    .line 37
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const/4 v2, 0x0

    const-string v3, "start_id=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadByStartId(J)Landroid/database/Cursor;
    .locals 6

    .line 29
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const/4 v2, 0x0

    const-string v3, "start_id=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadFlagByDate(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 45
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const-string v2, "upload_flag"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "day=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadProcessByDate(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 52
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const-string v2, "split_process"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "day=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public updateUpload(Landroid/content/ContentValues;)V
    .locals 3

    .line 142
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 11

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-nez p4, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    if-nez p6, :cond_2

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object/from16 v7, p6

    :goto_2
    move-object v1, p0

    move-wide v3, p2

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 234
    invoke-direct/range {v1 .. v10}, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->generateContentValues(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    :try_start_0
    const-string v2, "UploadDaoHelperRomImp"

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUpload,update values:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    .line 237
    :try_start_1
    iget-object v3, v2, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v4, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const-string v5, "start_id=? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v9, p2

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, p0

    .line 241
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public updateUploadByStartId(Landroid/content/ContentValues;J)V
    .locals 4

    .line 146
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->UPLOAD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v2, p3

    const-string p2, "start_id=? "

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
