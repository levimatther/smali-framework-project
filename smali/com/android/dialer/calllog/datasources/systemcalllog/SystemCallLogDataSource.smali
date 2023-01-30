.class public Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;
.super Ljava/lang/Object;
.source "SystemCallLogDataSource.java"

# interfaces
.implements Lcom/android/dialer/calllog/datasources/CallLogDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource$CallLogObserver;
    }
.end annotation


# static fields
.field static final PREF_LAST_TIMESTAMP_PROCESSED:Ljava/lang/String; = "systemCallLogLastTimestampProcessed"


# instance fields
.field private lastTimestampProcessed:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAnnotatedCallLogIds(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$AnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 270
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_0
    const-string p0, "SystemCallLogDataSource.getAnnotatedCallLogIds"

    const-string v2, "null cursor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 278
    invoke-static {p0, v2, v3}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 282
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 285
    :cond_2
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    :cond_3
    if-eqz v1, :cond_4

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p0

    .line 267
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 288
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v0
.end method

.method private static getIdsFromSystemCallLogThatMatch(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 297
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "?"

    .line 298
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    .line 302
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v2, 0x1

    .line 303
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    move v2, v5

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 309
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    :try_start_0
    const-string p0, "SystemCallLogDataSource.getIdsFromSystemCallLog"

    const-string v2, "null cursor"

    new-array v1, v1, [Ljava/lang/Object;

    .line 312
    invoke-static {p0, v2, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 323
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    .line 316
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 319
    :cond_3
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    :cond_4
    if-eqz p1, :cond_5

    .line 323
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 306
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_6

    .line 323
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v0
.end method

.method private static getMostRecentPhoneNumber(Ljava/util/List;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/dialer/DialerPhoneNumber;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    const-string v0, "number"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 168
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/DialerPhoneNumber;->parseFrom([B)Lcom/android/dialer/DialerPhoneNumber;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "couldn\'t parse DialerPhoneNumber"

    .line 170
    invoke-static {v0, p0}, Lcom/android/dialer/common/Assert;->createAssertionFailException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method private static handleDeletes(Landroid/content/Context;Ljava/util/Set;Lcom/android/dialer/calllog/datasources/CallLogMutations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/dialer/calllog/datasources/CallLogMutations;",
            ")V"
        }
    .end annotation

    .line 244
    invoke-static {p0, p1}, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->getIdsFromSystemCallLogThatMatch(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 248
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SystemCallLogDataSource.handleDeletes"

    const-string v4, "found %d matching entries in system call log"

    .line 245
    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 250
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-interface {v1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-array p0, v0, [Ljava/lang/Object;

    .line 256
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "found %d call log entries to remove"

    .line 253
    invoke-static {v2, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 259
    invoke-virtual {p2, v0, v1}, Lcom/android/dialer/calllog/datasources/CallLogMutations;->delete(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleInsertsAndUpdates(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogMutations;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/dialer/calllog/datasources/CallLogMutations;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 179
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "systemCallLogLastTimestampProcessed"

    const-wide/16 v3, 0x0

    .line 180
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 182
    new-instance v3, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;

    .line 183
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string v11, "date"

    const-string v12, "last_modified"

    const-string v13, "number"

    const-string v14, "countryiso"

    filled-new-array {v4, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/String;

    .line 195
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    const-string v8, "last_modified > ?"

    const-string v10, "last_modified DESC LIMIT 1000"

    .line 189
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v5, "SystemCallLogDataSource.handleInsertsAndUpdates"

    if-nez v1, :cond_1

    :try_start_0
    const-string v0, "null cursor"

    new-array v2, v2, [Ljava/lang/Object;

    .line 199
    invoke-static {v5, v0, v2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string v6, "found %d entries to insert/update"

    new-array v7, v15, [Ljava/lang/Object;

    .line 206
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 203
    invoke-static {v5, v6, v7}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 210
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 211
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 212
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 213
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 217
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v8, p0

    :try_start_2
    iput-object v5, v8, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->lastTimestampProcessed:Ljava/lang/Long;

    .line 219
    :cond_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 220
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 221
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 225
    invoke-virtual {v3, v5, v14}, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/DialerPhoneNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/DialerPhoneNumber;->toByteArray()[B

    move-result-object v5

    .line 227
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "timestamp"

    .line 228
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    invoke-virtual {v14, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 231
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v11, p3

    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 232
    invoke-virtual {v0, v9, v10, v14}, Lcom/android/dialer/calllog/datasources/CallLogMutations;->update(JLandroid/content/ContentValues;)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {v0, v9, v10, v14}, Lcom/android/dialer/calllog/datasources/CallLogMutations;->insert(JLandroid/content/ContentValues;)V

    .line 236
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    move-object/from16 v8, p0

    :goto_1
    if-eqz v1, :cond_5

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v8, p0

    :goto_2
    move-object v2, v0

    .line 186
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_6

    .line 238
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v3
.end method


# virtual methods
.method public coalesce(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;

    invoke-direct {v0, p1}, Lcom/android/dialer/calllog/datasources/util/RowCombiner;-><init>(Ljava/util/List;)V

    const-string v1, "timestamp"

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->useMostRecentLong(Ljava/lang/String;)Lcom/android/dialer/calllog/datasources/util/RowCombiner;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->combine()Landroid/content/ContentValues;

    move-result-object v0

    .line 155
    invoke-static {p1}, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->getMostRecentPhoneNumber(Ljava/util/List;)Lcom/android/dialer/DialerPhoneNumber;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber;->getRawInput()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getNumber()Ljava/lang/String;

    move-result-object p1

    const-string v1, "formatted_number"

    .line 156
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public fill(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogMutations;)V
    .locals 5

    .line 109
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->lastTimestampProcessed:Ljava/lang/Long;

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 113
    invoke-static {p1, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SystemCallLogDataSource.fill"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no call log permissions"

    .line 114
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 119
    :cond_0
    invoke-virtual {p2}, Lcom/android/dialer/calllog/datasources/CallLogMutations;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 121
    invoke-static {p1}, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->getAnnotatedCallLogIds(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "found %d existing annotated call log ids"

    .line 123
    invoke-static {v2, v1, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->handleInsertsAndUpdates(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogMutations;Ljava/util/Set;)V

    .line 129
    invoke-static {p1, v0, p2}, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->handleDeletes(Landroid/content/Context;Ljava/util/Set;Lcom/android/dialer/calllog/datasources/CallLogMutations;)V

    return-void
.end method

.method public isDirty(Landroid/content/Context;)Z
    .locals 0

    .line 95
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const/4 p1, 0x0

    return p1
.end method

.method public onSuccessfulFill(Landroid/content/Context;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->lastTimestampProcessed:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 138
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;->lastTimestampProcessed:Ljava/lang/Long;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "systemCallLogLastTimestampProcessed"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 140
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public registerContentObservers(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;)V
    .locals 5

    .line 74
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "SystemCallLogDataSource.registerContentObservers"

    .line 76
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasCallLogReadPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "no call log permissions"

    .line 79
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource$CallLogObserver;

    .line 89
    invoke-static {}, Lcom/android/dialer/common/concurrent/ThreadUtil;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4, p1, p2}, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource$CallLogObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;)V

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
