.class public Lcom/android/dialer/database/CallLogQueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/database/CallLogQueryHandler$CatchingWorkerHandler;,
        Lcom/android/dialer/database/CallLogQueryHandler$Listener;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_ALL:I = -0x1

.field private static final NUM_LOGS_TO_DISPLAY:I = 0x3e8

.field private static final QUERY_CALLLOG_TOKEN:I = 0x36

.field private static final QUERY_MISSED_CALLS_UNREAD_COUNT_TOKEN:I = 0x3b

.field private static final QUERY_VOICEMAIL_STATUS_TOKEN:I = 0x39

.field private static final QUERY_VOICEMAIL_UNREAD_COUNT_TOKEN:I = 0x3a

.field private static final TAG:Ljava/lang/String; = "CallLogQueryHandler"

.field private static final UPDATE_MARK_AS_OLD_TOKEN:I = 0x37

.field private static final UPDATE_MARK_MISSED_CALL_AS_READ_TOKEN:I = 0x38


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/dialer/database/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;)V
    .locals 1

    const/4 v0, -0x1

    .line 87
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dialer/database/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p2}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    .line 94
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 95
    iput p4, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mLogLimit:I

    return-void
.end method

.method private cancelFetch()V
    .locals 1

    const/16 v0, 0x36

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/dialer/database/CallLogQueryHandler;->cancelOperation(I)V

    return-void
.end method

.method private fetchCalls(IIZJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchCalls(IIZJLjava/lang/String;)V

    return-void
.end method

.method private fetchCalls(IIZJLjava/lang/String;)V
    .locals 15

    move-object v8, p0

    move/from16 v0, p2

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x17

    .line 210
    invoke-static {v3}, Lcom/android/dialer/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v4

    if-lt v4, v3, :cond_0

    const-string v3, "("

    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "deleted"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = 0)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, " AND ("

    if-eqz p3, :cond_1

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "new"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = 1)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v4, 0x3e8

    const-string v5, "(%s = ?)"

    const-string v6, " AND "

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v0, v7, :cond_8

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 221
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v11, 0x3

    const/4 v12, 0x2

    const-string/jumbo v13, "type"

    if-eq v0, v12, :cond_5

    if-ne v0, v11, :cond_3

    goto :goto_0

    :cond_3
    if-ne v0, v10, :cond_4

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v13, v14, v9

    aput-object v13, v14, v10

    aput-object v13, v14, v12

    const-string v13, "(%s = ? OR %s = ? OR %s = ?)"

    .line 230
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    new-array v14, v10, [Ljava/lang/Object;

    aput-object v13, v14, v9

    .line 233
    invoke-static {v5, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    :goto_0
    new-array v14, v12, [Ljava/lang/Object;

    aput-object v13, v14, v9

    aput-object v13, v14, v10

    const-string v13, "(%s = ? OR %s = ?)"

    .line 227
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :goto_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v0, v10, :cond_6

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x5

    .line 238
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-ne v0, v12, :cond_7

    const/16 v11, 0x3e9

    .line 241
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-ne v0, v11, :cond_9

    const/16 v11, 0x3ea

    .line 243
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v11, " AND NOT "

    .line 246
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(type = 4)"

    .line 247
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_9
    :goto_2
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "subscription_id"

    if-nez v11, :cond_a

    .line 251
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v12, v6, v9

    .line 252
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    .line 253
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-lez v5, :cond_b

    .line 257
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "date"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " > ?)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const/4 v5, 0x4

    if-ne v0, v5, :cond_e

    .line 263
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 264
    iget-object v0, v8, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telecom/TelecomManager;

    .line 265
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    .line 267
    iget-object v6, v8, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_3

    .line 270
    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = ?)"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 275
    :cond_d
    iget-object v0, v8, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    iget-object v3, v8, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    .line 277
    invoke-interface {v0, v3, v1, v2}, Lcom/android/voicemail/VoicemailClient;->appendOmtpVoicemailSelectionClause(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_4

    .line 281
    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "subscription_component_name"

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IS NULL OR "

    .line 283
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " NOT LIKE \'com.google.android.apps.tachyon%\' OR "

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "features"

    .line 286
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " == "

    .line 289
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :goto_4
    iget v0, v8, Lcom/android/dialer/database/CallLogQueryHandler;->mLogLimit:I

    if-ne v0, v7, :cond_f

    goto :goto_5

    :cond_f
    move v4, v0

    .line 295
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    move-object v5, v0

    .line 296
    iget-object v0, v8, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    .line 297
    invoke-static {v0}, Lcom/android/dialer/telecom/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 299
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "limit"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 307
    invoke-static {}, Lcom/android/dialer/phonenumbercache/CallLogQuery;->getProjection()[Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/operatorutils/OperatorConfig;->isDefSupportStirForCalllog()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v0, "verstat"

    .line 310
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_11
    move-object v4, v0

    const/4 v6, 0x0

    .line 320
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    const-string v9, "date DESC"

    move-object v0, p0

    move/from16 v1, p1

    move-object v2, v6

    move-object v6, v7

    move-object v7, v9

    .line 314
    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/database/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getUnreadMissedCallsQuery()Ljava/lang/String;
    .locals 4

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_read"

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 0 OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND ("

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " OR "

    .line 431
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAdapterData(Landroid/database/Cursor;)Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/database/CallLogQueryHandler$Listener;

    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0, p1}, Lcom/android/dialer/database/CallLogQueryHandler$Listener;->onCallsFetched(Landroid/database/Cursor;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateMissedCallsUnreadCount(Landroid/database/Cursor;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/database/CallLogQueryHandler$Listener;

    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0, p1}, Lcom/android/dialer/database/CallLogQueryHandler$Listener;->onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method private updateVoicemailStatus(Landroid/database/Cursor;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/database/CallLogQueryHandler$Listener;

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v0, p1}, Lcom/android/dialer/database/CallLogQueryHandler$Listener;->onVoicemailStatusFetched(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method private updateVoicemailUnreadCount(Landroid/database/Cursor;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/database/CallLogQueryHandler$Listener;

    if-eqz v0, :cond_0

    .line 446
    invoke-interface {v0, p1}, Lcom/android/dialer/database/CallLogQueryHandler$Listener;->onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 101
    new-instance v0, Lcom/android/dialer/database/CallLogQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/database/CallLogQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/dialer/database/CallLogQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public fetchCalls(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchCalls(IJ)V

    return-void
.end method

.method public fetchCalls(IJ)V
    .locals 7

    .line 111
    invoke-direct {p0}, Lcom/android/dialer/database/CallLogQueryHandler;->cancelFetch()V

    .line 112
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x36

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v5, p2

    .line 113
    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchCalls(IIZJ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/dialer/database/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)Z

    :goto_0
    return-void
.end method

.method public fetchCalls(IJLjava/lang/String;)V
    .locals 8

    .line 126
    invoke-direct {p0}, Lcom/android/dialer/database/CallLogQueryHandler;->cancelFetch()V

    .line 127
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x36

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v5, p2

    move-object v7, p4

    .line 128
    invoke-direct/range {v1 .. v7}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchCalls(IIZJLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/android/dialer/database/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)Z

    :goto_0
    return-void
.end method

.method public fetchMissedCallsUnreadCount()V
    .locals 9

    .line 371
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x3b

    const/4 v3, 0x0

    .line 375
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-direct {p0}, Lcom/android/dialer/database/CallLogQueryHandler;->getUnreadMissedCallsQuery()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 375
    invoke-virtual/range {v1 .. v8}, Lcom/android/dialer/database/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fetchVoicemailStatus()V
    .locals 11

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v2, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    .line 144
    invoke-interface {v2, v3, v0, v1}, Lcom/android/voicemail/VoicemailClient;->appendOmtpVoicemailStatusSelectionClause(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 146
    iget-object v2, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v4, 0x39

    const/4 v5, 0x0

    .line 147
    sget-object v6, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    invoke-static {}, Lcom/android/dialer/database/VoicemailStatusQuery;->getProjection()[Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object v3, p0

    .line 147
    invoke-virtual/range {v3 .. v10}, Lcom/android/dialer/database/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fetchVoicemailUnreadCount()V
    .locals 12

    .line 159
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v0

    const-string v1, "is_read=0 AND deleted=0 "

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 167
    iget-object v3, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, " AND ("

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "subscription_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    .line 181
    invoke-interface {v2, v3, v0, v1}, Lcom/android/voicemail/VoicemailClient;->appendOmtpVoicemailSelectionClause(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/16 v5, 0x3a

    const/4 v6, 0x0

    .line 183
    sget-object v7, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object v4, p0

    .line 183
    invoke-virtual/range {v4 .. v11}, Lcom/android/dialer/database/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 8

    .line 353
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "is_read"

    const-string v1, "1"

    .line 358
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x38

    const/4 v3, 0x0

    .line 360
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 365
    invoke-direct {p0}, Lcom/android/dialer/database/CallLogQueryHandler;->getUnreadMissedCallsQuery()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    .line 360
    invoke-virtual/range {v1 .. v7}, Lcom/android/dialer/database/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 10

    .line 331
    iget-object v0, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 1"

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    new-instance v7, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "0"

    .line 340
    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x37

    const/4 v5, 0x0

    .line 342
    iget-object v1, p0, Lcom/android/dialer/database/CallLogQueryHandler;->mContext:Landroid/content/Context;

    .line 345
    invoke-static {v1}, Lcom/android/dialer/telecom/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    .line 342
    invoke-virtual/range {v3 .. v9}, Lcom/android/dialer/database/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    .line 388
    monitor-exit p0

    return-void

    :cond_0
    const/16 p2, 0x36

    if-ne p1, p2, :cond_1

    .line 392
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dialer/database/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p3, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/16 p2, 0x39

    if-ne p1, p2, :cond_2

    .line 396
    invoke-direct {p0, p3}, Lcom/android/dialer/database/CallLogQueryHandler;->updateVoicemailStatus(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x3a

    if-ne p1, p2, :cond_3

    .line 398
    invoke-direct {p0, p3}, Lcom/android/dialer/database/CallLogQueryHandler;->updateVoicemailUnreadCount(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x3b

    if-ne p1, p2, :cond_4

    .line 400
    invoke-direct {p0, p3}, Lcom/android/dialer/database/CallLogQueryHandler;->updateMissedCallsUnreadCount(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    const-string p2, "CallLogQueryHandler.onNotNullableQueryComplete"

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown query completed: ignoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    .line 408
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 411
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    if-eqz p3, :cond_7

    .line 408
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_7
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    monitor-exit p0

    throw p1
.end method
