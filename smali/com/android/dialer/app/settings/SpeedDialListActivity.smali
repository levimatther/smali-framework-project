.class public Lcom/android/dialer/app/settings/SpeedDialListActivity;
.super Landroid/app/ListActivity;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;,
        Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;
    }
.end annotation


# static fields
.field private static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field private static final CHANGE_TYPE:I = 0x0

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_NORMALIZED:I = 0x4

.field private static final COLUMN_NUMBER:I = 0x3

.field private static final COLUMN_PHOTO:I = 0x2

.field public static final EXTRA_INITIAL_PICK_NUMBER:Ljava/lang/String; = "initialPickNumber"

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MENU_DELETE:I = 0x3ea

.field private static final MENU_MOVE:I = 0x0

.field private static final MENU_REMOVE:I = 0x1

.field private static final MENU_REMOVEALL:I = 0x2

.field private static final MENU_REPLACE:I = 0x3e9

.field private static final MOVE_TYPE:I = 0x1

.field private static final PICK_CONTACT_RESULT:I = 0x0

.field private static final PICK_PROJECTION:[Ljava/lang/String;

.field private static final REMOVE_ALL_TYPE:I = 0x3

.field private static final REMOVE_TYPE:I = 0x2

.field private static SAVE_CLICKED_POS:Ljava/lang/String; = null

.field private static SPEAD_DIAL_NUMBER:Ljava/lang/String; = null

.field public static final SUB_ID_EXTRA:Ljava/lang/String; = "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

.field private static final SUB_LABEL_EXTRA:Ljava/lang/String; = "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel"

.field private static final TAG:Ljava/lang/String; = "SpeedDial"


# instance fields
.field private isFirstSelect:Z

.field private isSaveDirect:Z

.field private mAdapter:Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

.field private mAddSpeedDialDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCompleteButton:Landroid/widget/Button;

.field private mConfigChanged:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogMenuBar:Landroid/widget/MenuBar;

.field private mEditNumber:Landroid/widget/EditText;

.field private mInitialPickNumber:I

.field private mInputNumber:Ljava/lang/String;

.field private mItemMoveFromPosition:I

.field private mItemPosition:I

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPickNumber:I

.field private mRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "photo_id"

    const-string v3, "number"

    const-string v4, "normalized_number"

    .line 124
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v0, "contact_id"

    const-string v3, "data1"

    const-string v4, "data4"

    .line 132
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->PICK_PROJECTION:[Ljava/lang/String;

    const-string v0, "SpeedDialNumber"

    .line 147
    sput-object v0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->SPEAD_DIAL_NUMBER:Ljava/lang/String;

    const-string v0, "Clicked_pos"

    .line 148
    sput-object v0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->SAVE_CLICKED_POS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isFirstSelect:Z

    .line 179
    iput-boolean v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isSaveDirect:Z

    const-string v0, ""

    .line 182
    iput-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPhoneNumber:Ljava/lang/String;

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemMoveFromPosition:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/dialer/app/settings/SpeedDialListActivity;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isFirstSelect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->pickContact(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/widget/EditText;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->saveSpeedDial()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/content/Context;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemMoveFromPosition:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)I
    .locals 0

    .line 103
    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemMoveFromPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/media/AudioManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;
    .locals 7

    const/4 v0, 0x0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 336
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 337
    new-instance v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 338
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->contactId:J

    const/4 p2, 0x2

    .line 339
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->photoId:J

    const/4 p2, 0x1

    .line 340
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    const/4 p2, 0x4

    .line 341
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    .line 342
    iget-object p2, v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 343
    iget-object p2, v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->number:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 348
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_2
    throw p2
.end method

.method private getRecordValidCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private pickContact(I)V
    .locals 1

    .line 546
    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    .line 547
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "vnd.android.cursor.dir/phone_v2"

    .line 548
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private saveSpeedDial()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 410
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 411
    sget-object v2, Lcom/android/dialer/app/settings/SpeedDialListActivity;->LOOKUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    move-result-object v1

    if-nez v1, :cond_1

    .line 413
    new-instance v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    invoke-direct {v1, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V

    .line 414
    iput-object v0, v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 418
    iget v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    iget-object v2, v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3}, Lcom/android/dialer/app/settings/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private saveSpeedDialDirectly()V
    .locals 6

    .line 427
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 430
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 432
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 433
    sget-object v2, Lcom/android/dialer/app/settings/SpeedDialListActivity;->LOOKUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    move-result-object v1

    if-nez v1, :cond_1

    .line 435
    new-instance v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    invoke-direct {v1, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V

    .line 436
    iput-object v0, v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 440
    iget v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    iget-object v2, v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3}, Lcom/android/dialer/app/settings/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isSaveDirect:Z

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f11047b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f11047e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f11047f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v4, 0x7f110478

    const v5, 0x7f11000c

    invoke-virtual {v2, v0, v4, v5, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 450
    iget-object v1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p0, v1, v3, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_2
    const v0, 0x7f1101ed

    .line 454
    invoke-direct {p0, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->showToast(I)V

    return-void
.end method

.method private showAddSpeedDialDialog(I)V
    .locals 4

    .line 355
    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    .line 356
    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    .line 357
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110482

    .line 358
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0902a5

    .line 363
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 364
    new-instance v3, Lcom/android/dialer/app/settings/SpeedDialListActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity$2;-><init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090144

    .line 371
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    .line 372
    iget-object v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialUtils;->getNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    iget-boolean p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mConfigChanged:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mInputNumber:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 376
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mInputNumber:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 377
    iput-boolean p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mConfigChanged:Z

    const-string p1, ""

    .line 378
    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mInputNumber:Ljava/lang/String;

    :cond_1
    const p1, 0x7f090078

    .line 381
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 382
    new-instance v2, Lcom/android/dialer/app/settings/SpeedDialListActivity$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$3;-><init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090079

    .line 388
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mCompleteButton:Landroid/widget/Button;

    .line 389
    new-instance v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$4;-><init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    .line 401
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showAlertDialog(I)V
    .locals 8

    .line 781
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 782
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c006a

    const/4 v3, 0x0

    .line 783
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090127

    .line 785
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 786
    new-instance v4, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;

    invoke-direct {v4, p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;-><init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 849
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    .line 851
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 852
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 853
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 855
    iget-object v6, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 856
    invoke-virtual {v6, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 858
    iget-object v4, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v1, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialogMenuBar:Landroid/widget/MenuBar;

    const/16 v0, 0x50

    .line 861
    invoke-virtual {v6, v0}, Landroid/view/Window;->setGravity(I)V

    const v0, 0x106000d

    .line 862
    invoke-virtual {v6, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 863
    invoke-virtual {v6, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 864
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f1101ea

    .line 868
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 869
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialogMenuBar:Landroid/widget/MenuBar;

    const v2, 0x7f110478

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v4, p1, :cond_1

    const p1, 0x7f1101ee

    .line 871
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 872
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialogMenuBar:Landroid/widget/MenuBar;

    const v2, 0x7f11047b

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne v5, p1, :cond_2

    .line 875
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f1101ef

    new-array v6, v4, [Ljava/lang/Object;

    .line 876
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    .line 875
    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 877
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialogMenuBar:Landroid/widget/MenuBar;

    const v2, 0x7f11047e

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v4, p1, :cond_3

    const p1, 0x7f1101f0

    .line 881
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 882
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialogMenuBar:Landroid/widget/MenuBar;

    const v2, 0x7f11047f

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showSelectAccountDialog(Landroid/content/Context;)V
    .locals 5

    .line 512
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 513
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 515
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telecom/PhoneAccountHandle;

    .line 516
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 517
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 518
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    .line 519
    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 520
    :cond_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f110424

    .line 523
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$5;-><init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    .line 524
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 539
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showToast(I)V
    .locals 1

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 776
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 555
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 560
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/app/settings/SpeedDialListActivity;->PICK_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 562
    iget p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    iget-object p3, p1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    invoke-static {p0, p2, p3, v0}, Lcom/android/dialer/app/settings/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    iget p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 565
    iget p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    add-int/lit8 v3, p1, -0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const p1, 0x7f1101ed

    .line 566
    invoke-direct {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->showToast(I)V

    :cond_1
    return-void
.end method

.method public onClickCSK()Z
    .locals 4

    const-string v0, "SpeedDial"

    const-string v1, "onClickCSK"

    .line 923
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 927
    iget-boolean v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isSaveDirect:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    add-int/2addr v0, v3

    .line 928
    iput v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    .line 929
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->saveSpeedDialDirectly()V

    goto :goto_0

    .line 931
    :cond_0
    iget v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemMoveFromPosition:I

    if-gez v2, :cond_2

    add-int/2addr v0, v3

    .line 933
    iput v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    .line 934
    iget-object v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    if-nez v2, :cond_1

    .line 937
    invoke-direct {p0, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->pickContact(I)V

    goto :goto_0

    .line 940
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->showAlertDialog(I)V

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    .line 945
    iput v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    if-ne v0, v2, :cond_3

    return v1

    .line 949
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->showAlertDialog(I)V

    :cond_4
    :goto_0
    return v1
.end method

.method public onClickLSK()Z
    .locals 2

    const-string v0, "SpeedDial"

    const-string v1, "onClickLSK"

    .line 911
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onClickRSK()Z
    .locals 2

    const-string v0, "SpeedDial"

    const-string v1, "onClickRSK"

    .line 964
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 201
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    iput-object p0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f140001

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->setContentView(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "initialPickNumber"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mInitialPickNumber:I

    .line 207
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isSaveDirect"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isSaveDirect:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPhoneNumber:Ljava/lang/String;

    .line 210
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    .line 213
    new-instance v0, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    const v2, 0x7f110506

    invoke-virtual {p0, v2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 217
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 220
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07004f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 230
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 231
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 234
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110482

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f0601af

    invoke-virtual {p0, v4}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v0, v3, v1, v4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 236
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v0, v3, v1, v4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 238
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v0, v3, v1, v4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 241
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    new-instance p1, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;-><init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    const-string p1, "phone"

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 248
    const-class p1, Landroid/telecom/TelecomManager;

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 250
    iput-boolean v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isFirstSelect:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 252
    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    const-string p1, "audio"

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 891
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1}, Landroid/widget/MenuBar;->refreshMenuBar()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-boolean p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isSaveDirect:Z

    if-eqz p1, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 490
    iput p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mPickNumber:I

    .line 491
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->saveSpeedDialDirectly()V

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 494
    iput p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    .line 495
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    if-nez p1, :cond_2

    .line 498
    invoke-direct {p0, p3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->pickContact(I)V

    goto :goto_0

    .line 500
    :cond_2
    new-instance p1, Landroid/widget/PopupMenu;

    const p4, 0x800003

    invoke-direct {p1, p0, p2, p4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 501
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const/16 p4, 0x3e9

    const p5, 0x7f110480

    const/4 v0, 0x0

    invoke-interface {p2, p3, p4, v0, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 502
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const/16 p4, 0x3ea

    const p5, 0x7f110185

    invoke-interface {p2, p3, p4, v0, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 503
    invoke-virtual {p1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 504
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    :goto_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 710
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const p2, 0x7f11000c

    const p4, 0x7f11047f

    .line 748
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_3

    .line 712
    iget p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemMoveFromPosition:I

    if-lez p3, :cond_0

    .line 713
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_2

    .line 714
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getRecordValidCount()I

    move-result p3

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isSaveDirect:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 717
    :cond_1
    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p3, v2, v2, p2, p1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 719
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p0, p1, p5, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_2

    .line 715
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_2

    .line 724
    :cond_3
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    const/4 v4, 0x1

    add-int/2addr p3, v4

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    .line 725
    iget v5, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemMoveFromPosition:I

    const v6, 0x7f110481

    if-lez v5, :cond_5

    if-ne p3, v5, :cond_4

    .line 727
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_2

    .line 729
    :cond_4
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v2, v6, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_2

    :cond_5
    if-nez v3, :cond_8

    .line 733
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getRecordValidCount()I

    move-result p3

    if-eqz p3, :cond_7

    iget-boolean p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isSaveDirect:Z

    if-eqz p3, :cond_6

    goto :goto_1

    .line 736
    :cond_6
    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p3, v2, v6, p2, p1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 738
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p0, p1, p5, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_2

    .line 734
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v2, v6, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_2

    .line 742
    :cond_8
    iget-boolean p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isSaveDirect:Z

    const v3, 0x7f110478

    if-eqz p3, :cond_9

    .line 743
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v2, v3, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void

    .line 746
    :cond_9
    new-instance p3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v5, 0x7f11047b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p3, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    new-instance p3, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f11047e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object p3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p3, v2, v3, p2, p1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 750
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p0, p1, p5, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :goto_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 702
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 693
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    .line 696
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 697
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 699
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 682
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-gt v0, v2, :cond_4

    .line 683
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 685
    :cond_4
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_5

    .line 686
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 687
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 689
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 898
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 573
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 575
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v1, 0x3e9

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 583
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    invoke-static {p0, v0, v1, v1}, Lcom/android/dialer/app/settings/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    return v2

    .line 579
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->pickContact(I)V

    return v2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionMenuClick(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 1002
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    add-int/2addr p1, v0

    .line 1004
    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    const/4 p1, 0x3

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->showAlertDialog(I)V

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 994
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    add-int/2addr p1, v0

    .line 996
    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    .line 997
    invoke-direct {p0, v1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->showAlertDialog(I)V

    goto :goto_0

    .line 984
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 985
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    add-int/2addr p1, v0

    .line 987
    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    .line 988
    iput p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemMoveFromPosition:I

    .line 989
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 328
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 269
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mConfigChanged:Z

    .line 274
    sget-object v0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->SAVE_CLICKED_POS:Ljava/lang/String;

    iget v1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 275
    sget-object v1, Lcom/android/dialer/app/settings/SpeedDialListActivity;->SPEAD_DIAL_NUMBER:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mInputNumber:Ljava/lang/String;

    .line 276
    invoke-direct {p0, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->showAddSpeedDialDialog(I)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 281
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 284
    invoke-static {p0, v1}, Lcom/android/dialer/app/settings/SpeedDialUtils;->getNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 287
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 288
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 289
    sget-object v4, Lcom/android/dialer/app/settings/SpeedDialListActivity;->LOOKUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    move-result-object v3

    if-nez v3, :cond_0

    .line 291
    new-instance v3, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    invoke-direct {v3, v2}, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;-><init>(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAdapter:Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 297
    iget v1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mInitialPickNumber:I

    if-lt v1, v0, :cond_2

    if-gt v1, v2, :cond_2

    .line 298
    invoke-direct {p0, v1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->pickContact(I)V

    const/4 v0, -0x1

    .line 300
    iput v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mInitialPickNumber:I

    .line 303
    :cond_2
    iget-boolean v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->isFirstSelect:Z

    if-eqz v0, :cond_3

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dialer/app/settings/SpeedDialListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/settings/SpeedDialListActivity$1;-><init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mDialogMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->refreshMenuBar()V

    goto :goto_1

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->refreshMenuBar()V

    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 258
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mAddSpeedDialDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    sget-object v0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->SAVE_CLICKED_POS:Ljava/lang/String;

    iget v1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mItemPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    sget-object v0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->SPEAD_DIAL_NUMBER:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity;->mEditNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 260
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    return-void
.end method
