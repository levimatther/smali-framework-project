.class public Lcom/android/contacts/common/dialog/CallSubjectDialog;
.super Landroid/app/Activity;
.source "CallSubjectDialog.java"


# static fields
.field public static final ARG_CONTACT_TYPE:Ljava/lang/String; = "CONTACT_TYPE"

.field public static final ARG_CONTACT_URI:Ljava/lang/String; = "CONTACT_URI"

.field public static final ARG_DISPLAY_NUMBER:Ljava/lang/String; = "DISPLAY_NUMBER"

.field public static final ARG_NAME_OR_NUMBER:Ljava/lang/String; = "NAME_OR_NUMBER"

.field public static final ARG_NUMBER:Ljava/lang/String; = "NUMBER"

.field public static final ARG_NUMBER_LABEL:Ljava/lang/String; = "NUMBER_LABEL"

.field public static final ARG_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "PHONE_ACCOUNT_HANDLE"

.field public static final ARG_PHOTO_ID:Ljava/lang/String; = "PHOTO_ID"

.field public static final ARG_PHOTO_URI:Ljava/lang/String; = "PHOTO_URI"

.field private static final CALL_SUBJECT_HISTORY_SIZE:I = 0x5

.field private static final CALL_SUBJECT_LIMIT:I = 0x10

.field public static final PREF_KEY_SUBJECT_HISTORY_COUNT:Ljava/lang/String; = "subject_history_count"

.field public static final PREF_KEY_SUBJECT_HISTORY_ITEM:Ljava/lang/String; = "subject_history_item"


# instance fields
.field private mAnimationDuration:I

.field private mBackgroundListener:Landroid/view/View$OnClickListener;

.field private mBackgroundView:Landroid/view/View;

.field private final mCallSubjectClickListener:Landroid/view/View$OnClickListener;

.field private mCallSubjectView:Landroid/widget/EditText;

.field private mCharacterLimitView:Landroid/widget/TextView;

.field private mContactPhoto:Landroid/widget/QuickContactBadge;

.field private mContactType:I

.field private mContactUri:Landroid/net/Uri;

.field private mDialogView:Landroid/view/View;

.field private mDisplayNumber:Ljava/lang/String;

.field private mHistoryButton:Landroid/view/View;

.field private final mHistoryOnClickListener:Landroid/view/View$OnClickListener;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLimit:I

.field private mMessageEncoding:Ljava/nio/charset/Charset;

.field private mNameOrNumber:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field private mNumberLabel:Ljava/lang/String;

.field private mNumberView:Landroid/widget/TextView;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPhotoID:J

.field private mPhotoUri:Landroid/net/Uri;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSendAndCallButton:Landroid/view/View;

.field private final mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

.field private mSubjectHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubjectList:Landroid/widget/ListView;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x10

    .line 91
    iput v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    .line 93
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$1;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 114
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryOnClickListener:Landroid/view/View$OnClickListener;

    .line 126
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectClickListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

    .line 164
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundListener:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->updateCharacterLimit()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->showCallHistory(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/contacts/common/dialog/CallSubjectDialog;Ljava/util/List;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->saveSubjectHistory(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mAnimationDuration:I

    return p0
.end method

.method private loadConfiguration()V
    .locals 4

    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "telecom"

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 533
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 541
    :cond_2
    iget v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    const-string v2, "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    const-string v1, "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING"

    .line 545
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 549
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid charset: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "CallSubjectDialog.loadConfiguration"

    invoke-static {v3, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    iput-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 557
    :cond_3
    iput-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    :goto_0
    return-void
.end method

.method public static loadSubjectHistory(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "subject_history_count"

    const/4 v1, 0x0

    .line 262
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, v0, :cond_1

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subject_history_item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private readArguments()V
    .locals 3

    .line 343
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallSubjectDialog.readArguments"

    const-string v2, "arguments cannot be null"

    .line 345
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "PHOTO_ID"

    .line 348
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoID:J

    const-string v1, "PHOTO_URI"

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoUri:Landroid/net/Uri;

    const-string v1, "CONTACT_URI"

    .line 350
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactUri:Landroid/net/Uri;

    const-string v1, "NAME_OR_NUMBER"

    .line 351
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    const-string v1, "NUMBER"

    .line 352
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumber:Ljava/lang/String;

    const-string v1, "DISPLAY_NUMBER"

    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    const-string v1, "NUMBER_LABEL"

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "CONTACT_TYPE"

    .line 355
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactType:I

    const-string v1, "PHONE_ACCOUNT_HANDLE"

    .line 356
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method

.method private saveSubjectHistory(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 393
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 394
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subject_history_item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "subject_history_count"

    .line 405
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showCallHistory(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    .line 426
    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    return-void

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-eqz p1, :cond_3

    .line 433
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0c0049

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 436
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 437
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;IZ)V

    invoke-static {v0, v2, v3}, Lcom/android/dialer/util/ViewUtil;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static start(Landroid/app/Activity;JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PHOTO_ID"

    .line 230
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "PHOTO_URI"

    .line 231
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "CONTACT_URI"

    .line 232
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "NAME_OR_NUMBER"

    .line 233
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "NUMBER"

    .line 234
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DISPLAY_NUMBER"

    .line 235
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "NUMBER_LABEL"

    .line 236
    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CONTACT_TYPE"

    .line 237
    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "PHONE_ACCOUNT_HANDLE"

    .line 238
    invoke-virtual {v0, p1, p10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    invoke-static {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->start(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 11

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p1

    .line 192
    invoke-static/range {v0 .. v10}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->start(Landroid/app/Activity;JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method private updateCharacterLimit()V
    .locals 6

    .line 364
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 375
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    const v2, 0x7f1100f4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    if-lt v0, v1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    .line 378
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 377
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    .line 381
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private updateContactInfo()V
    .locals 10

    .line 321
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactUri:Landroid/net/Uri;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactUri:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoID:J

    iget-object v7, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPhotoUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    iget v9, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactType:I

    .line 323
    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/common/ContactPhotoManager;->loadDialerThumbnailOrPhoto(Landroid/widget/QuickContactBadge;Landroid/net/Uri;JLandroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    .line 332
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const v2, 0x7f1100f5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 334
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 331
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "input_method"

    .line 412
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 284
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mAnimationDuration:I

    .line 286
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    .line 287
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->readArguments()V

    .line 288
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->loadConfiguration()V

    .line 289
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->loadSubjectHistory(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    const p1, 0x7f0c0066

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->setContentView(I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const p1, 0x7f0900aa

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundView:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mBackgroundListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090128

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    const p1, 0x7f0900e0

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/QuickContactBadge;

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    const p1, 0x7f090216

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNameView:Landroid/widget/TextView;

    const p1, 0x7f090226

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    const p1, 0x7f0900a9

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    .line 300
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 301
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    .line 303
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mLimit:I

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 304
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const p1, 0x7f0900c7

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    const p1, 0x7f090182

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryButton:Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mHistoryButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0902a9

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSendAndCallButton:Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902d8

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    .line 312
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 313
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 315
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->updateContactInfo()V

    .line 316
    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->updateCharacterLimit()V

    return-void
.end method
