.class public Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;
.super Landroid/content/ContentProvider;
.source "AnnotatedCallLogContentProvider.java"


# static fields
.field private static final ANNOTATED_CALL_LOG_TABLE_CODE:I = 0x1

.field private static final ANNOTATED_CALL_LOG_TABLE_ID_CODE:I = 0x2

.field private static final COALESCED_ANNOTATED_CALL_LOG_TABLE_CODE:I = 0x3

.field private static final MAX_ROWS:I = 0x3e7

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final applyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private coalescer:Lcom/android/dialer/calllog/database/Coalescer;

.field private databaseHelper:Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 58
    sget-object v1, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->AUTHORITY:Ljava/lang/String;

    const-string v2, "AnnotatedCallLog"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->AUTHORITY:Ljava/lang/String;

    const-string v2, "AnnotatedCallLog/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->AUTHORITY:Ljava/lang/String;

    const-string v2, "CoalescedAnnotatedCallLog"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->applyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private getSelectionWithId(J)Ljava/lang/String;
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isApplyingBatch()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->applyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->applyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2

    .line 325
    invoke-virtual {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentProviderResult;

    .line 265
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->databaseHelper:Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 271
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->applyingBatch:Ljava/lang/ThreadLocal;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v3, v2

    .line 273
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 274
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 275
    sget-object v6, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    if-eq v6, v4, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 p1, 0x3

    if-eq v6, p1, :cond_1

    .line 285
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "coalesced call log does not support applyBatch"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_2
    invoke-virtual {v5, p0, v0, v3}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 288
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->isInsert()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 289
    iget-object v6, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_3

    goto :goto_1

    .line 290
    :cond_3
    new-instance p1, Landroid/content/OperationApplicationException;

    const-string v0, "error inserting row"

    invoke-direct {p1, v0}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_4
    iget-object v6, v5, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "AnnotatedCallLogContentProvider.applyBatch"

    const-string/jumbo v7, "update or delete failed, possibly because row got cleaned up"

    new-array v8, v2, [Ljava/lang/Object;

    .line 305
    invoke-static {v6, v7, v8}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_5
    :goto_1
    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object p1, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->applyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    sget-object p1, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$AnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->notifyChange(Landroid/net/Uri;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 313
    iget-object v0, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->applyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 315
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->databaseHelper:Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    .line 203
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown uri: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "coalesced call log does not support deleting"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p2, :cond_2

    move p2, v2

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Do not specify selection when deleting by ID"

    .line 193
    invoke-static {p2, v4, v1}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p3, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Do not specify selection args when deleting by ID"

    .line 194
    invoke-static {p2, v4, v1}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v2, "error parsing id from uri %s"

    .line 197
    invoke-static {p2, v2, v1}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0, v4, v5}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->getSelectionWithId(J)Ljava/lang/String;

    move-result-object p2

    :cond_5
    const-string v1, "AnnotatedCallLog"

    .line 205
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_6

    .line 207
    invoke-direct {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->isApplyingBatch()Z

    move-result p3

    if-nez p3, :cond_7

    .line 208
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_3

    :cond_6
    new-array p1, v3, [Ljava/lang/Object;

    const-string p3, "AnnotatedCallLogContentProvider.delete"

    const-string v0, "no rows deleted"

    .line 211
    invoke-static {p3, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "vnd.android.cursor.item/annotated_call_log"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 143
    :goto_0
    invoke-static {v2}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->databaseHelper:Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 146
    sget-object v3, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const-string v4, "_id"

    if-eq v3, v0, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 p2, 0x3

    if-eq v3, p2, :cond_1

    .line 167
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "coalesced call log does not support inserting"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 154
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 156
    invoke-virtual {v6, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v0

    :goto_2
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v1

    aput-object p1, v5, v0

    const-string p1, "_ID from values %d does not match ID from URI: %s"

    .line 155
    invoke-static {v7, p1, v5}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez v6, :cond_7

    .line 161
    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 150
    :cond_5
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "You must specify an _ID when inserting"

    .line 149
    invoke-static {p1, v5, v3}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    const-string p1, "AnnotatedCallLog"

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gez p1, :cond_8

    new-array p1, v0, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "AnnotatedCallLogContentProvider.insert"

    const-string v0, "error inserting row with id: %d"

    .line 171
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 177
    :cond_8
    sget-object p1, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$AnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 178
    invoke-direct {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->isApplyingBatch()Z

    move-result p2

    if-nez p2, :cond_9

    .line 179
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_9
    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    .line 82
    new-instance v0, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->databaseHelper:Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;

    .line 83
    invoke-virtual {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;->get(Landroid/content/Context;)Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;->coalescer()Lcom/android/dialer/calllog/database/Coalescer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->coalescer:Lcom/android/dialer/calllog/database/Coalescer;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 96
    iget-object v0, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->databaseHelper:Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 97
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v0, "AnnotatedCallLog"

    .line 98
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eq v0, v3, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    if-nez p2, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v9

    :goto_0
    new-array p2, v9, [Ljava/lang/Object;

    const-string v0, "projection not supported for coalesced call log"

    .line 115
    invoke-static {p1, v0, p2}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p3, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v9

    :goto_1
    new-array p2, v9, [Ljava/lang/Object;

    const-string p3, "selection not supported for coalesced call log"

    .line 116
    invoke-static {p1, p3, p2}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v9

    :goto_2
    new-array p2, v9, [Ljava/lang/Object;

    const-string p3, "selection args not supported for coalesced call log"

    .line 117
    invoke-static {p1, p3, p2}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p5, :cond_3

    goto :goto_3

    :cond_3
    move v3, v9

    :goto_3
    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "sort order not supported for coalesced call log"

    .line 119
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    .line 121
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 123
    :try_start_0
    iget-object p2, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->coalescer:Lcom/android/dialer/calllog/database/Coalescer;

    invoke-virtual {p2, p1}, Lcom/android/dialer/calllog/database/Coalescer;->coalesce(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p2

    .line 125
    invoke-virtual {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object p4, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 124
    invoke-interface {p2, p3, p4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p2

    :catchall_0
    move-exception p2

    .line 120
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p1, :cond_5

    .line 127
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p3

    .line 129
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 106
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 109
    invoke-virtual {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$AnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 108
    invoke-interface {p1, p2, p3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_5

    :cond_9
    new-array p2, v9, [Ljava/lang/Object;

    const-string p3, "AnnotatedCallLogContentProvider.query"

    const-string p4, "cursor was null"

    .line 111
    invoke-static {p3, p4, p2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 223
    :goto_0
    invoke-static {v2}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 225
    iget-object v2, p0, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->databaseHelper:Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/database/AnnotatedCallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 226
    sget-object v3, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-eq v3, v0, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 p2, 0x3

    if-eq v3, p2, :cond_1

    .line 241
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 239
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "coalesced call log does not support updating"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v3, "_id"

    .line 232
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v0

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Do not specify _ID when updating by ID"

    .line 231
    invoke-static {v3, v5, v4}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p3, :cond_3

    move p3, v0

    goto :goto_1

    :cond_3
    move p3, v1

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Do not specify selection when updating by ID"

    .line 233
    invoke-static {p3, v4, v3}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    new-array p3, v1, [Ljava/lang/Object;

    const-string v3, "Do not specify selection args when updating by ID"

    .line 234
    invoke-static {v0, v3, p3}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->getSelectionWithId(J)Ljava/lang/String;

    move-result-object p3

    :cond_5
    const-string v0, "AnnotatedCallLog"

    .line 243
    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_6

    .line 245
    invoke-direct {p0}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->isApplyingBatch()Z

    move-result p3

    if-nez p3, :cond_7

    .line 246
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/database/AnnotatedCallLogContentProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_3

    :cond_6
    new-array p1, v1, [Ljava/lang/Object;

    const-string p3, "AnnotatedCallLogContentProvider.update"

    const-string p4, "no rows updated"

    .line 249
    invoke-static {p3, p4, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return p2
.end method
