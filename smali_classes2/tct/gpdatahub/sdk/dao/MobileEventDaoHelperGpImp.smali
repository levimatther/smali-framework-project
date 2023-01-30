.class Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;
.super Ltct/gpdatahub/sdk/dao/DaoHelperBase;
.source "MobileEventDaoHelperGpImp.java"

# interfaces
.implements Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileEventDaoHelperGpImp"


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected sqlParaWrapper:Ltct/gpdatahub/sdk/db/SQLParaWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/DaoHelperBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    new-instance p2, Ltct/gpdatahub/sdk/db/SQLParaWrapper;

    invoke-direct {p2, p1}, Ltct/gpdatahub/sdk/db/SQLParaWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->sqlParaWrapper:Ltct/gpdatahub/sdk/db/SQLParaWrapper;

    .line 35
    invoke-virtual {p2}, Ltct/gpdatahub/sdk/db/SQLParaWrapper;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private batchInsertOnGp(Ljava/util/List;)J
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "MobileEventDaoHelperGpImp"

    .line 202
    :try_start_0
    iget-object v4, v1, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batchInsert, the newly event list size is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n\r,the list is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, -0x1

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltct/gpdatahub/sdk/models/MobileEventModel;

    .line 206
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getHappenTime()Ljava/lang/String;

    move-result-object v9

    .line 207
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 208
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getTeyeId()Ljava/lang/String;

    move-result-object v11

    .line 209
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getEventType()Ljava/lang/String;

    move-result-object v12

    .line 210
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getEventSubType()Ljava/lang/String;

    move-result-object v13

    .line 211
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getEventId()Ljava/lang/String;

    move-result-object v14

    .line 212
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getParaMap()Ljava/lang/String;

    move-result-object v15

    .line 213
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getParaType()I

    move-result v16

    .line 214
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getSystemInfo()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v4

    .line 216
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getActivityName()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getActionName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v0

    .line 218
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getErrorType()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v8}, Ltct/gpdatahub/sdk/models/MobileEventModel;->getErrorMessage()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v19, v6

    .line 221
    :try_start_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "happenTime"

    .line 222
    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "packageName"

    .line 223
    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "teyeId"

    .line 224
    invoke-virtual {v6, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "eventType"

    .line 225
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "eventSubType"

    .line 226
    invoke-virtual {v6, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "eventId"

    .line 227
    invoke-virtual {v6, v7, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "paraMap"

    .line 228
    invoke-virtual {v6, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "paraType"

    .line 229
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "appVersion"

    .line 230
    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "systemInfo"

    .line 231
    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "activityName"

    .line 232
    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "actionName"

    .line 233
    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorType"

    .line 234
    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    .line 235
    invoke-virtual {v6, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, v1, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "mobile_event"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    move-object/from16 v5, p1

    move-object/from16 v4, v17

    move-object/from16 v0, v18

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-wide/from16 v19, v6

    :goto_1
    move-wide/from16 v2, v19

    goto :goto_3

    :cond_0
    move-object/from16 v18, v0

    move-wide/from16 v19, v6

    const-wide/16 v2, -0x1

    cmp-long v0, v19, v2

    if-eqz v0, :cond_1

    .line 239
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batchInsert success!,insertId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v2, v19

    :try_start_4
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v18

    invoke-static {v4, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, v18

    move-wide/from16 v2, v19

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batchInsert failed! ,insertId:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_2
    iget-object v0, v1, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-wide v2, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    const-wide/16 v2, -0x1

    .line 246
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 248
    :goto_4
    iget-object v0, v1, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v6, v2

    return-wide v6

    :goto_5
    iget-object v2, v1, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private queryDurationByActivityName(Ljava/lang/String;)I
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 152
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "activity_session"

    const/4 v4, 0x0

    const-string v5, "activityName=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 155
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "duration"

    .line 156
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 159
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryDurationByActivityName failed !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return v0

    .line 161
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method public batchInsert(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;)J"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MobileEventDaoHelperGpImp"

    const-string v0, "batchInsert, the newly event list has been cleared, quit batchInsert transaction."

    .line 94
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->batchInsertOnGp(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteMobileEventByDay(JJ)I
    .locals 2

    .line 116
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 121
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "mobile_event"

    const-string p2, "happenTime>=? and happenTime<=? "

    .line 116
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteMobileEventById(JJ)I
    .locals 3

    .line 106
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "mobile_event"

    const-string p2, "_id>=? and _id<? "

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTeyeId()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->getTeyeIdFromService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertActivitySession(Landroid/content/ContentValues;)J
    .locals 3

    const-string v0, "activityName"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    .line 169
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 170
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->queryDurationByActivityName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr v2, v0

    .line 174
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "activity_session"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertEvent(Landroid/content/ContentValues;)J
    .locals 3

    .line 72
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mobile_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDisableInsertEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryMobileEventCursor()Landroid/database/Cursor;
    .locals 8

    .line 43
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mobile_event"

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

.method public queryMobileEventCursorByDay(JJ)Landroid/database/Cursor;
    .locals 8

    .line 59
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    .line 64
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const-string v1, "mobile_event"

    const/4 v2, 0x0

    const-string v3, "happenTime>=? and happenTime<=? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    .line 59
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryMobileEventCursorById(JJ)Landroid/database/Cursor;
    .locals 8

    .line 47
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v4, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const-string v1, "mobile_event"

    const/4 v2, 0x0

    const-string v3, "_id>=? and _id<? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryNewestMobileEventId()Landroid/database/Cursor;
    .locals 3

    .line 39
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select _id from mobile_event order by _id desc limit 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryRecordDateMobileEventCursor()Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryRecordDateMobileEventCursorByIdSet(Ljava/util/Set;)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public trackActivityLifecycle()V
    .locals 10

    const-string v0, "track activity lifecycle to daily data!"

    .line 180
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "activity_session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "activityName"

    .line 185
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "happenTime"

    .line 186
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "packageName"

    .line 187
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appVersion"

    .line 188
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "duration"

    .line 189
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->getTeyeId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "teyeId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v1}, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->insertEvent(Landroid/content/ContentValues;)J

    goto :goto_0

    .line 193
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "reset life cycle data!"

    .line 194
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "activity_session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public updateEventByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public updateEventByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J
    .locals 0
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
            ")J"
        }
    .end annotation

    const-wide/16 p1, -0x1

    return-wide p1
.end method
