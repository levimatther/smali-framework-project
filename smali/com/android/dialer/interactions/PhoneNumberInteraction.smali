.class public Lcom/android/dialer/interactions/PhoneNumberInteraction;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$DisambigDialogDismissedListener;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$InteractionErrorListener;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$InteractionErrorCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_NUMBER_SELECTION:Ljava/lang/String; = "mimetype IN (\'vnd.android.cursor.item/phone_v2\', \'vnd.android.cursor.item/sip_address\') AND data1 NOT NULL"

.field public static final REQUEST_CALL_PHONE:I = 0x2

.field public static final REQUEST_READ_CONTACTS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_CONTACT_ID:I = -0x1


# instance fields
.field private final mCallSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

.field private mContactId:J

.field private final mContext:Landroid/content/Context;

.field private final mInteractionType:I

.field private mIsVideoCall:Z

.field private mLoader:Landroid/content/CursorLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 85
    const-class v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "data1"

    const-string v3, "is_super_primary"

    const-string v4, "account_type"

    const-string v5, "data_set"

    const-string v6, "data2"

    const-string v7, "data3"

    const-string v8, "mimetype"

    const-string v9, "contact_id"

    .line 91
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IZLcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 118
    iput-wide v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    .line 163
    iput-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    .line 164
    iput p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    .line 165
    iput-object p4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 166
    iput-boolean p3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mIsVideoCall:Z

    .line 168
    instance-of p2, p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$InteractionErrorListener;

    invoke-static {p2}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 169
    instance-of p2, p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$DisambigDialogDismissedListener;

    invoke-static {p2}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 170
    instance-of p1, p1, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;IZLcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 83
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;IZLcom/android/dialer/callintent/CallSpecificAppData;)V

    return-void
.end method

.method private interactionError(I)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$InteractionErrorListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$InteractionErrorListener;->interactionError(I)V

    return-void
.end method

.method private isSafeToCommitTransactions()Z
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/dialer/util/TransactionSafeActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/dialer/util/TransactionSafeActivity;

    .line 346
    invoke-virtual {v0}, Lcom/android/dialer/util/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static performAction(Landroid/content/Context;Ljava/lang/String;IZLcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 185
    new-instance p2, Lcom/android/dialer/callintent/CallIntentBuilder;

    invoke-direct {p2, p1, p4}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    .line 187
    invoke-virtual {p2, p3}, Lcom/android/dialer/callintent/CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const/4 p3, 0x0

    const-string p4, "sms"

    invoke-static {p4, p1, p3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "android.intent.action.SENDTO"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object p1, p2

    .line 191
    :goto_0
    invoke-static {p0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private performAction(Ljava/lang/String;)V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iget-boolean v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mIsVideoCall:Z

    iget-object v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;IZLcom/android/dialer/callintent/CallSpecificAppData;)V

    return-void
.end method

.method private showDisambiguationDialog(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;)V"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 356
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    const-string v2, "PhoneNumberInteraction.showDisambiguationDialog"

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "activity destroyed"

    .line 358
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 363
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iget-boolean v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mIsVideoCall:Z

    iget-object v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 362
    invoke-static {v0, p1, v1, v3, v4}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;IZLcom/android/dialer/callintent/CallSpecificAppData;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "caught exception"

    .line 371
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static startInteractionForPhoneCall(Lcom/android/dialer/util/TransactionSafeActivity;Landroid/net/Uri;ZLcom/android/dialer/callintent/CallSpecificAppData;)Lcom/android/dialer/interactions/PhoneNumberInteraction;
    .locals 2

    .line 206
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;IZLcom/android/dialer/callintent/CallSpecificAppData;)V

    .line 208
    invoke-virtual {v0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method getLoader()Landroid/content/CursorLoader;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "PhoneNumberInteraction.onLoadComplete"

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "null cursor"

    .line 271
    invoke-static {v0, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 272
    invoke-direct {v1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->interactionError(I)V

    return-void

    .line 276
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->isSafeToCommitTransactions()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "not safe to commit transaction"

    new-array v3, v3, [Ljava/lang/Object;

    .line 279
    invoke-static {v0, v4, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 280
    invoke-direct {v1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->interactionError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 283
    :cond_1
    :try_start_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "contact_id"

    .line 284
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v6, "is_super_primary"

    .line 285
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "data1"

    .line 286
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "_id"

    .line 287
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "account_type"

    .line 288
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "data_set"

    .line 289
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "data2"

    .line 290
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "data3"

    .line 291
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "mimetype"

    .line 292
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 p1, v4

    move-object v15, v14

    .line 294
    :goto_0
    iget-wide v3, v1, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    const-wide/16 v16, -0x1

    cmp-long v3, v3, v16

    if-nez v3, :cond_2

    .line 295
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    .line 298
    :cond_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 300
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 303
    :cond_3
    new-instance v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-direct {v3, v14}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;-><init>(Lcom/android/dialer/interactions/PhoneNumberInteraction$1;)V

    move/from16 v16, v6

    .line 304
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 305
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 306
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    .line 307
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    .line 308
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    .line 309
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    .line 310
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->mimeType:Ljava/lang/String;

    move-object/from16 v5, p1

    .line 312
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v15, :cond_4

    .line 320
    invoke-direct {v1, v15}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 324
    :cond_4
    :try_start_2
    iget-object v0, v1, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;Landroid/content/Context;)V

    .line 325
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    .line 326
    invoke-direct {v1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->interactionError(I)V

    goto :goto_1

    .line 327
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    const/4 v3, 0x0

    .line 328
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    .line 329
    iget-object v0, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :cond_6
    invoke-direct {v1, v5}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->showDisambiguationDialog(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    move-object/from16 p1, v5

    move/from16 v6, v16

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    .line 315
    :try_start_3
    invoke-direct {v1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->interactionError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 336
    throw v0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public startInteraction(Landroid/net/Uri;)V
    .locals 11

    .line 226
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "PhoneNumberInteraction.startInteraction"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "No phone permissions"

    .line 228
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "No contact permissions"

    .line 235
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 247
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "data"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 250
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 254
    :cond_3
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    move-object v6, p1

    .line 261
    new-instance p1, Landroid/content/CursorLoader;

    iget-object v5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/dialer/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, "mimetype IN (\'vnd.android.cursor.item/phone_v2\', \'vnd.android.cursor.item/sip_address\') AND data1 NOT NULL"

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    .line 264
    invoke-virtual {p1, v3, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 265
    iget-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {p1}, Landroid/content/CursorLoader;->startLoading()V

    return-void

    .line 257
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input Uri must be contact Uri or data Uri (input: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
