.class public Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;,
        Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;,
        Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;,
        Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;,
        Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;
    }
.end annotation


# static fields
.field static final BLOCKED_NUMBER_CACHE_NULL_ID:I = -0x1

.field public static final INVALID_ID:I = -0x1

.field private static final NO_TOKEN:I

.field static final blockedNumberCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 54
    iput-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method private getIsBlockedNumberSelection(Z)Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getOriginalNumberColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getE164NumberColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V
    .locals 3

    .line 314
    sget-object v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 316
    invoke-interface {p1, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;->onBlockComplete(Landroid/net/Uri;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 319
    new-instance v2, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$3;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$3;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;)V

    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 329
    invoke-static {p1, v1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getContentUri(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object p1

    .line 319
    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method public blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 305
    invoke-static {v0, p3, p2, p4}, Lcom/android/dialer/blocking/FilteredNumberCompat;->newBlockNumberContentValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V

    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 277
    sget-object v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getBlockedIdSynchronous(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10

    .line 217
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 224
    :cond_1
    sget-object v1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0

    .line 232
    :cond_3
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 233
    iget-object v1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v1, p2, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->getBlockableNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v0

    .line 239
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 240
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v3, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 242
    invoke-static {v3, v0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getContentUri(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 245
    invoke-static {v6}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getIdColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    iget-object v6, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 246
    invoke-static {v6}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getTypeColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v3, v8

    .line 243
    invoke-static {v3}, Lcom/android/dialer/blocking/FilteredNumberCompat;->filter([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_5

    move p2, v8

    goto :goto_1

    :cond_5
    move p2, v7

    .line 248
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->getIsBlockedNumberSelection(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = ?"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v7

    const/4 v9, 0x0

    move-object v7, p2

    .line 241
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_8

    .line 257
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 261
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    .line 262
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 263
    sget-object v2, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_7

    .line 270
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object p1

    .line 258
    :cond_8
    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_9

    .line 270
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_3
    :try_start_3
    const-string v1, "FilteredNumberAsyncQueryHandler.getBlockedIdSynchronous"

    .line 266
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_a

    .line 270
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_4
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_b
    throw p1
.end method

.method hasBlockedNumbers(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V
    .locals 10

    .line 92
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    invoke-interface {p1, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;->onHasBlockedNumbers(Z)V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 96
    new-instance v4, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;

    invoke-direct {v4, p0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V

    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 110
    invoke-static {p1, v0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getContentUri(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v5

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 111
    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getIdColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v7, v0

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "type=1"

    move-object v7, p1

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 96
    invoke-virtual/range {v2 .. v9}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isBlockedNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, -0x1

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p2, :cond_0

    invoke-interface {p1, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V

    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 131
    invoke-interface {p1, v3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V

    return-void

    .line 134
    :cond_1
    sget-object v2, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    if-nez p1, :cond_2

    return-void

    .line 139
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 142
    :goto_0
    invoke-interface {p1, v3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V

    return-void

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "FilteredNumberAsyncQueryHandler.isBlockedNumber"

    const-string v0, "Device locked in FBE mode, cannot access blocked number database"

    .line 147
    invoke-static {p3, v0, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-interface {p1, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V

    return-void

    .line 154
    :cond_5
    invoke-static {p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 155
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->getBlockableNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 157
    invoke-interface {p1, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V

    .line 158
    sget-object p1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    const/4 v1, 0x0

    .line 162
    new-instance v4, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Ljava/lang/String;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;)V

    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 198
    invoke-static {p1, v3}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getContentUri(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v5

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 201
    invoke-static {p2}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getIdColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    iget-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    .line 202
    invoke-static {p2}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getTypeColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, p1, v3

    .line 199
    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->filter([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_7

    move p2, v3

    goto :goto_1

    :cond_7
    move p2, v2

    .line 204
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->getIsBlockedNumberSelection(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/String;

    aput-object v0, v8, v2

    const/4 v9, 0x0

    move-object v2, p0

    move v3, v1

    .line 162
    invoke-virtual/range {v2 .. v9}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;->onDeleteComplete(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 73
    move-object v0, p2

    check-cast v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 61
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 65
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_0
    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 65
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 80
    move-object v0, p2

    check-cast v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;->onUpdateComplete(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public unblock(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V
    .locals 9

    .line 355
    sget-object v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 356
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 358
    invoke-interface {p1, p2, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;->onUnblockComplete(ILandroid/content/ContentValues;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .line 362
    new-instance v3, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Landroid/net/Uri;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unblock(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Ljava/lang/Integer;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getContentUri(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V

    return-void

    .line 342
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null id passed into unblock"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
