.class public Ltct/gpdatahub/sdk/dao/UploadDao;
.super Ljava/lang/Object;
.source "UploadDao.java"

# interfaces
.implements Ltct/gpdatahub/sdk/dao/IUploadDao;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Ltct/gpdatahub/sdk/dao/UploadDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;

    invoke-direct {v0, p1}, Ltct/gpdatahub/sdk/dao/UploadDaoHelperGpImp;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;

    invoke-direct {v0, p1}, Ltct/gpdatahub/sdk/dao/UploadDaoHelperRomImp;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    return-void
.end method

.method private deleteUpload()V
    .locals 1

    .line 499
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->deleteUpload()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 501
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private deleteUploadByDay(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 510
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 515
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getUploadCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 516
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 517
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 518
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->deleteUploadByDay(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 520
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUploadByDay success! delete date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUploadByDay failed! delete date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_2
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no UploadConstant record found of date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", can not delete!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_3
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string v0, "deleteUploadByDay:cursor is null!"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 531
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 511
    :cond_4
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string v0, "deleteUploadByDay , date can\'t be empty!"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAllUploadCursor()Landroid/database/Cursor;
    .locals 1

    .line 234
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->getAllUploadCursor()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getFailedUploadByDateCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    .line 304
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v1, p1, p2}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->getFailedUploadByDateCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 305
    :cond_1
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string p2, "getFailedUploadByDateCursor, date can\'t be empty!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFailedUploadCursor()Landroid/database/Cursor;
    .locals 1

    .line 296
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->getFailedUploadCursor()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getLatestUploadCursor()Landroid/database/Cursor;
    .locals 2

    .line 257
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUploadCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 261
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v1, v0}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->getLatestUploadCursor(I)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getNeedToUploadByDateAndFailTimesCursor(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    .line 326
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string p2, "getNeedToUploadByDateAndFailTimesCursor ,failTimes can\'t less or equals zero!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    const-string v1, ""

    .line 329
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 335
    :cond_1
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v1, p1, p2, p3}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->getNeedToUploadByDateAndFailTimesCursor(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 330
    :cond_2
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string p2, "getNeedToUploadByDateAndFailTimesCursor ,date can\'t be empty!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSuccessUploadCursor()Landroid/database/Cursor;
    .locals 1

    .line 272
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->getSuccessUploadCursor()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getSuccessUploadCursorByDate(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    .line 280
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v1, p1, p2}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->getSuccessUploadCursorByDate(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 281
    :cond_1
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string p2, "getSuccessUploadCursorByDate ,date can\'t be empty!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUploadCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v1, p1}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->getUploadCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 243
    :cond_1
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string v1, "getUploadCursorByDay , day can\'t be empty!"

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private insertUpload(Landroid/content/ContentValues;)V
    .locals 1

    .line 365
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->insertUpload(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 367
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 10

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

    move v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    .line 387
    invoke-direct/range {v1 .. v9}, Ltct/gpdatahub/sdk/dao/UploadDao;->makeUploadContentValues(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v0

    .line 389
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

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

    .line 390
    :try_start_1
    iget-object v2, v1, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v2, v0}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->insertUpload(Landroid/content/ContentValues;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 392
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private makeUploadContentValues(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)Landroid/content/ContentValues;
    .locals 2

    .line 397
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "day"

    .line 398
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "start_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "upload_state"

    .line 400
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "upload_fail_times"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "last_upload_time"

    .line 402
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "split_process"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "upload_flag"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private updateUpload(Landroid/content/ContentValues;)V
    .locals 1

    .line 435
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->updateUpload(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 437
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteUploadById(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_1

    .line 545
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->deleteUploadById(JJ)I

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    const-string v2, ",endId:"

    if-eq v0, v1, :cond_1

    .line 547
    :try_start_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUploadById success! delete startId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUploadById failed! delete startId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 552
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 541
    :cond_2
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string p2, "deleteUploadById ,startId or endId can\'t be less than zero or endId can\'t less than startId!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllUpload(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
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

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    new-instance v1, Ltct/gpdatahub/sdk/models/UploadModel;

    invoke-direct {v1}, Ltct/gpdatahub/sdk/models/UploadModel;-><init>()V

    const-string v2, "_id"

    .line 213
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ltct/gpdatahub/sdk/models/UploadModel;->set_id(J)V

    const-string v2, "start_id"

    .line 214
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ltct/gpdatahub/sdk/models/UploadModel;->setStart_id(J)V

    const-string v2, "day"

    .line 215
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/models/UploadModel;->setDay(Ljava/lang/String;)V

    const-string v2, "upload_state"

    .line 216
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/models/UploadModel;->setUpload_state(Ljava/lang/String;)V

    const-string v2, "upload_fail_times"

    .line 217
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/models/UploadModel;->setUpload_fail_times(I)V

    const-string v2, "last_upload_time"

    .line 218
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/models/UploadModel;->setLast_upload_time(Ljava/lang/String;)V

    const-string v2, "split_process"

    .line 219
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/models/UploadModel;->setSplit_process(I)V

    const-string v2, "upload_flag"

    .line 220
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ltct/gpdatahub/sdk/models/UploadModel;->setUpload_flag(I)V

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 415
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string p2, "insertUpload, start_id can\'t be less than zero !"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0, p2, p3}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->queryUploadByStartId(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 421
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " already exists,update this record!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p8}, Ltct/gpdatahub/sdk/dao/UploadDao;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V

    return-void

    .line 426
    :cond_1
    invoke-direct/range {p0 .. p8}, Ltct/gpdatahub/sdk/dao/UploadDao;->insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 479
    iget-object v1, v0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public insertUploadRecordByStartId(JIIZ)V
    .locals 9

    .line 350
    :try_start_0
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentSecond()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentDay()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_0

    const-string p5, "success"

    goto :goto_0

    :cond_0
    const-string p5, "failed"

    :goto_0
    move-object v4, p5

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v7, p4

    move v8, p3

    .line 353
    invoke-virtual/range {v0 .. v8}, Ltct/gpdatahub/sdk/dao/UploadDao;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public insertUploadRecordByStartId(JIIZLjava/lang/String;)V
    .locals 7

    .line 469
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->insertUploadRecordByStartId(JIIZLjava/lang/String;)V

    return-void
.end method

.method public queryFailedUpload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFailedUpload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getFailedUploadCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getFailedUploadCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .line 63
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFailedUploadByDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getFailedUploadByDateCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getFailedUploadByDateCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryLatestUpload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryLatestUpload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getLatestUploadCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getLatestUploadCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 3
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

    .line 74
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNeedToUploadByDateAndFailTimes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/dao/UploadDao;->getNeedToUploadByDateAndFailTimesCursor(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/dao/UploadDao;->getNeedToUploadByDateAndFailTimesCursor(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public querySuccessUpload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySuccessUpload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getSuccessUploadCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getSuccessUploadCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySuccessUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .line 100
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySuccessUploadByDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getSuccessUploadCursorByDate(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getSuccessUploadCursorByDate(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryTaskFlagByStartId(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 122
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string p2, "queryTaskFlagByStartId ,startId can\'t be less than zero !"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0, p1, p2}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->queryTaskFlagByStartId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 130
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "upload_flag"

    .line 132
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 148
    :cond_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryTaskFlagByStartId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public queryUpload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUpload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUploadCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUploadCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryUploadByDay(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .line 46
    sget-object v0, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUploadByDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getUploadCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getUploadCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadByStartId(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 109
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string p2, "queryUploadByStartId ,startId can\'t be less than zero !"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v0, p1, p2}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->queryUploadByStartId(J)Landroid/database/Cursor;

    move-result-object p1

    .line 113
    sget-object p2, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUploadByStartId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/dao/UploadDao;->getAllUpload(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryUploadFlagByDate(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, ""

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v1, p1}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->queryUploadFlagByDate(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "upload_flag"

    .line 167
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 168
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 174
    :cond_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUploadFlagByDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 157
    :cond_2
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string v1, "queryUploadFlagByDate, date can\'t be empty!"

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public queryUploadProcessByDate(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, ""

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    invoke-interface {v1, p1}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->queryUploadProcessByDate(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 191
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "split_process"

    .line 193
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 194
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 200
    :cond_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUploadProcessByDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 183
    :cond_2
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    const-string v1, "queryUploadProcessByDate, date can\'t be empty!"

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 10

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

    move v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    .line 454
    invoke-direct/range {v1 .. v9}, Ltct/gpdatahub/sdk/dao/UploadDao;->makeUploadContentValues(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v0

    .line 456
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/dao/UploadDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUpload,update values:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    .line 457
    :try_start_1
    iget-object v2, v1, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    move-wide v3, p2

    invoke-interface {v2, v0, p2, p3}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->updateUploadByStartId(Landroid/content/ContentValues;J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 459
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 489
    iget-object v1, v0, Ltct/gpdatahub/sdk/dao/UploadDao;->mUploadDaoHelper:Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ltct/gpdatahub/sdk/dao/IUploadDaoHelper;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method
