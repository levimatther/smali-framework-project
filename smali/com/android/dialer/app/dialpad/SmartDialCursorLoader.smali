.class public Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SmartDialCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final DEBUG:Z = false

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final TAG:Ljava/lang/String; = "SmartDialCursorLoader"

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

.field private mQuery:Ljava/lang/String;

.field private mShowEmptyListForNullQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->CPU_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    .line 65
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->CORE_POOL_SIZE:I

    .line 66
    sget v0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->CPU_COUNT:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    sput v0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->MAXIMUM_POOL_SIZE:I

    .line 68
    new-instance v0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader$1;

    invoke-direct {v0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader$1;-><init>()V

    sput-object v0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 76
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 80
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->CORE_POOL_SIZE:I

    sget v5, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->MAXIMUM_POOL_SIZE:I

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v10, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 84
    sput-object v0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mShowEmptyListForNullQuery:Z

    .line 93
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private releaseResources(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public configureQuery(Ljava/lang/String;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/android/dialer/smartdial/SmartDialPrefix;->getMap()Lcom/android/dialer/smartdial/SmartDialMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/smartdial/SmartDialMap;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    .line 108
    new-instance p1, Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    iget-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    invoke-static {}, Lcom/android/dialer/smartdial/SmartDialPrefix;->getMap()Lcom/android/dialer/smartdial/SmartDialMap;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/smartdial/SmartDialMap;)V

    iput-object p1, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    .line 109
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mShowEmptyListForNullQuery:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->setShouldMatchEmptyQuery(Z)V

    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 167
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 169
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 176
    invoke-direct {p0, v0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .line 123
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {v0}, Lcom/android/dialer/database/Database;->get(Landroid/content/Context;)Lcom/android/dialer/database/DatabaseBindings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/dialer/database/DatabaseBindings;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->getLooseMatches(Ljava/lang/String;Lcom/android/dialer/smartdial/SmartDialNameMatcher;)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 139
    sget-object v2, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    const/4 v4, 0x0

    .line 141
    iget-wide v5, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 143
    iget v5, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 144
    iget-object v5, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->label:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 146
    iget-object v5, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 147
    iget-wide v5, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    .line 148
    iget-object v5, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    .line 149
    iget-wide v5, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x7

    .line 150
    iget-object v5, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    aput-object v5, v2, v4

    const/16 v4, 0x9

    .line 151
    iget v3, v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->carrierPresence:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 152
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 0

    .line 212
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->onStopLoading()V

    .line 204
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, v0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->forceLoad()V

    :cond_1
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 195
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->cancelLoad()Z

    return-void
.end method

.method public setShowEmptyListForNullQuery(Z)V
    .locals 1

    .line 225
    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mShowEmptyListForNullQuery:Z

    .line 226
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 227
    invoke-virtual {v0, p1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->setShouldMatchEmptyQuery(Z)V

    :cond_0
    return-void
.end method
