.class final Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;
.super Ljava/lang/Object;
.source "CallLogNotificationsQueryHelper.java"

# interfaces
.implements Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCallsQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNewCallsQuery"
.end annotation


# static fields
.field private static final COUNTRY_ISO_COLUMN_INDEX:I = 0x7

.field private static final DATE_COLUMN_INDEX:I = 0x8

.field private static final ID_COLUMN_INDEX:I = 0x0

.field private static final NUMBER_COLUMN_INDEX:I = 0x1

.field private static final NUMBER_PRESENTATION_COLUMN_INDEX:I = 0x3

.field private static final PHONE_ACCOUNT_COMPONENT_NAME_COLUMN_INDEX:I = 0x4

.field private static final PHONE_ACCOUNT_ID_COLUMN_INDEX:I = 0x5

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TRANSCRIPTION_COLUMN_INDEX:I = 0x6

.field private static final VOICEMAIL_URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "_id"

    const-string v1, "number"

    const-string/jumbo v2, "voicemail_uri"

    const-string v3, "presentation"

    const-string v4, "subscription_component_name"

    const-string v5, "subscription_id"

    const-string/jumbo v6, "transcription"

    const-string v7, "countryiso"

    const-string v8, "date"

    .line 274
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;->mContext:Landroid/content/Context;

    .line 300
    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$1;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method private createNewCallsFromCursor(Landroid/database/Cursor;)Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 350
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 353
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 352
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v8, v1

    .line 358
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/operatorutils/OperatorConfig;->isDefSupportStirForCalllog()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "verstat"

    .line 359
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 361
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verstat:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "CallLogNotificationsQueryHelper"

    invoke-static {v4, v2, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v17, v1

    goto :goto_1

    :cond_1
    move/from16 v17, v3

    .line 367
    :goto_1
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    const/4 v2, 0x1

    .line 370
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x3

    .line 371
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x4

    .line 372
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x5

    .line 373
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x6

    .line 374
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x7

    .line 375
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0x8

    .line 376
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-object v6, v1

    invoke-direct/range {v6 .. v17}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v1
.end method


# virtual methods
.method public query(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CallLogNotificationsQueryHelper.DefaultNewCallsQuery.query"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "no READ_CALL_LOG permission, returning null for calls lookup."

    .line 308
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "new"

    aput-object v4, v0, v3

    const-string/jumbo v4, "type"

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const-string v4, "%s = 1 AND %s = ?"

    .line 313
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/String;

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v3

    .line 317
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;->PROJECTION:[Ljava/lang/String;

    .line 318
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/OperatorConfig;->isDefSupportStirForCalllog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo p1, "verstat"

    .line 320
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :cond_1
    move-object v8, p1

    .line 325
    :try_start_0
    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v11, "date DESC"

    .line 326
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p1, :cond_2

    .line 340
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    .line 335
    :cond_3
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 337
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$DefaultNewCallsQuery;->createNewCallsFromCursor(Landroid/database/Cursor;)Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 340
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    .line 325
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    if-eqz p1, :cond_6

    .line 340
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "exception when querying Contacts Provider for calls lookup"

    .line 341
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method
