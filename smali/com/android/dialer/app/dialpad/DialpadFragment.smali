.class public Lcom/android/dialer/app/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/dialer/app/SpecialCharSequenceMgr$SpecialCharListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;,
        Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;,
        Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;,
        Lcom/android/dialer/app/dialpad/DialpadFragment$HostInterface;,
        Lcom/android/dialer/app/dialpad/DialpadFragment$OnDialpadQueryChangedListener;,
        Lcom/android/dialer/app/dialpad/DialpadFragment$Record;
    }
.end annotation


# static fields
.field private static final ADD_2SEC_PAUSE:I = 0x4

.field private static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static final ADD_TO_CONTACT:I = 0x1

.field private static final ADD_WAIT:I = 0x5

.field private static final ASSISTED_DIALING:I = 0x6

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_NORMALIZED:I = 0x4

.field private static final COLUMN_NUMBER:I = 0x3

.field private static final COLUMN_PHOTO:I = 0x2

.field private static final CREAT_CONTACT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEPRECATED_OTASP_CODE:Ljava/lang/String; = "*228"

.field private static final DIAL_TONE_STREAM_TYPE:I = 0x8

.field private static final EDIT_CONTACT_BEFOR_CALL:I = 0x3

.field private static final EMPTY_NUMBER:Ljava/lang/String; = ""

.field private static final EXTRA_SEND_EMPTY_FLASH:Ljava/lang/String; = "com.android.phone.extra.SEND_EMPTY_FLASH"

.field private static final LISTVIEW_HEIGHT:I = 0xa6

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final PAUSE:C = ','

.field private static final PHONE_NUMER_SIZE_BIG_LENGTH:I = 0xa

.field private static final PREF_DIGITS_FILLED_BY_INTENT:Ljava/lang/String; = "pref_digits_filled_by_intent"

.field private static final PRODUCT_VZW:Ljava/lang/String; = "ro.product.vzw"

.field private static final TAG:Ljava/lang/String; = "DialpadFragment"

.field private static final TONE_LENGTH_INFINITE:I = -0x1

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x50

.field private static final WAIT:C = ';'

.field private static isOnKeyDown:Z = false

.field private static isOnLongClick:Z = false

.field private static mLastClickStarTime:J

.field private static mLastClickTime:J

.field private static mMenuBar:Landroid/widget/MenuBar;

.field private static mTimeD:J


# instance fields
.field public clearEditText:Z

.field private clearEditTextForSearchList:Z

.field private dialog:Landroid/app/AlertDialog;

.field private ft:Landroid/app/FragmentTransaction;

.field private handleMmiCode:Z

.field private isComeFromInCall:Z

.field private isComeFromLauncher:I

.field private isComeMms:Z

.field private isLongDown:Z

.field private isSpeedDialAndAirplane:Z

.field private layout:Landroid/widget/LinearLayout;

.field private mAnimate:Z

.field private final mCallLog:Lcom/android/dialer/app/calllog/CallLogAsync;

.field private mCallStateReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;

.field private mClearDigitsOnStop:Z

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDeftComeFrom:I

.field private mDialogIsShow:Z

.field private mDialpadfinishReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;

.field private mDigitsFilledByIntent:Z

.field private mEditText:Landroid/widget/EditText;

.field private mEmergencyText:Landroid/widget/TextView;

.field private mIsAirplaneModeOn:I

.field private mIsSpeedDial:I

.field private mIsVoiceMail:I

.field private mLastNumberDialed:Ljava/lang/String;

.field private mPlayTone:Z

.field private final mPressedDialpadKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mPseudoEmergencyAnimator:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

.field private mSelect:I

.field private mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

.field private mStarChangeToPlus:Z

.field private mStartFromActivity:Z

.field private mStartedFromNewIntent:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private record:Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

.field private rttCallDialog:Lcom/android/incallui/RttCallDialog;

.field private speedDialLayout:Landroid/widget/LinearLayout;

.field private tctDialog:Landroid/app/TctDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "photo_id"

    const-string v3, "number"

    const-string v4, "normalized_number"

    .line 301
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 137
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    .line 180
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsync;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mCallLog:Lcom/android/dialer/app/calllog/CallLogAsync;

    const-string v0, ""

    .line 203
    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mAnimate:Z

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    .line 249
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    .line 251
    iput v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSelect:I

    const/4 v1, 0x1

    .line 253
    iput v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsVoiceMail:I

    const/4 v2, 0x2

    .line 254
    iput v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsAirplaneModeOn:I

    const/4 v2, 0x3

    .line 255
    iput v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsSpeedDial:I

    .line 256
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isSpeedDialAndAirplane:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPlayTone:Z

    .line 259
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    const/4 v2, 0x0

    .line 263
    iput-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->record:Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    .line 267
    iput-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->dialog:Landroid/app/AlertDialog;

    .line 269
    iput v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    .line 270
    iput v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDeftComeFrom:I

    .line 271
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeMms:Z

    .line 272
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isLongDown:Z

    .line 273
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    .line 274
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditTextForSearchList:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStarChangeToPlus:Z

    .line 285
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleMmiCode:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$102(J)J
    .locals 0

    .line 137
    sput-wide p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mTimeD:J

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/dialer/app/dialpad/DialpadFragment;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsAirplaneModeOn:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/dialer/app/dialpad/DialpadFragment;IIZ)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->showSpeedDialDialog(IIZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/app/dialpad/DialpadFragment;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsVoiceMail:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/dialer/app/dialpad/DialpadFragment;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->callSpeedNumber(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/app/dialpad/DialpadFragment;)Lcom/android/dialer/app/list/SmartDialSearchFragment;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/dialer/app/dialpad/DialpadFragment;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/dialer/app/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->phoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/dialer/app/dialpad/DialpadFragment;Ljava/lang/String;)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleMmiCode:Z

    return p0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 137
    sget-wide v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastClickTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEmergencyText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(J)J
    .locals 0

    .line 137
    sput-wide p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastClickTime:J

    return-wide p0
.end method

.method static synthetic access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->speedDialLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/dialer/app/dialpad/DialpadFragment;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->record:Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/dialer/app/dialpad/DialpadFragment;Lcom/android/dialer/app/dialpad/DialpadFragment$Record;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->record:Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    return-object p1
.end method

.method static synthetic access$2500()[Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/dialer/app/dialpad/DialpadFragment;Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBar()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPlayTone:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->stopTone()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleDialButtonPressed()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isLongDown:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleDialButtonPressed(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/dialer/app/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateDeleteButtonEnabledState()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/dialer/app/dialpad/DialpadFragment;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStarChangeToPlus:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStarChangeToPlus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/dialer/app/dialpad/DialpadFragment;ILandroid/view/KeyEvent;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleInputStar(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 137
    sput-boolean p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isOnKeyDown:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 137
    sget-boolean v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isOnLongClick:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 137
    sput-boolean p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isOnLongClick:Z

    return p0
.end method

.method static synthetic access$802(J)J
    .locals 0

    .line 137
    sput-wide p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastClickStarTime:J

    return-wide p0
.end method

.method static synthetic access$900(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    return p0
.end method

.method private callSpeedNumber(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x2

    .line 3440
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/app/settings/SpeedDialUtils;->getNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3442
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->showNoSpeedNumberDialog(I)V

    goto :goto_1

    .line 3450
    :cond_0
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3451
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/RttCallDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3452
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {p1}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    .line 3454
    :cond_1
    new-instance p1, Lcom/android/dialer/app/dialpad/DialpadFragment$12;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$12;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    .line 3469
    new-instance v0, Lcom/android/incallui/RttCallDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/incallui/RttCallDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    .line 3470
    invoke-virtual {v0, p0}, Lcom/android/incallui/RttCallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3471
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {p1}, Lcom/android/incallui/RttCallDialog;->show()V

    goto :goto_1

    .line 3473
    :cond_2
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {p1, v0, v1}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 3474
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isDialpad"

    const/4 v1, 0x1

    .line 3475
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3476
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3477
    iput-boolean v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditTextForSearchList:Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static canAddDigit(Ljava/lang/CharSequence;IIC)Z
    .locals 4

    const/16 v0, 0x2c

    const/16 v1, 0x3b

    if-eq p3, v1, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Should not be called for anything other than PAUSE & WAIT"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_9

    if-ge p2, p1, :cond_2

    goto :goto_1

    .line 401
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p1, v2, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le p2, v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    return v3

    :cond_4
    if-ne p3, v1, :cond_6

    add-int/lit8 v2, p1, -0x1

    .line 412
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_5

    return v3

    .line 416
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, p2, :cond_6

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_6

    return v3

    :cond_6
    const/4 v1, 0x1

    if-ne p3, v0, :cond_8

    sub-int/2addr p1, v1

    .line 422
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_7

    return v3

    .line 426
    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-le p1, p2, :cond_8

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-ne p0, v0, :cond_8

    return v3

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v3
.end method

.method private configureKeypadListeners(Landroid/view/View;)V
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 1245
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1264
    aget v3, v1, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    .line 1265
    invoke-virtual {v3, p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setOnPressedListener(Lcom/android/dialer/dialpadview/DialpadKeyButton$OnPressedListener;)V

    if-lez v2, :cond_0

    const/16 v4, 0x9

    if-ge v2, v4, :cond_0

    .line 1268
    invoke-virtual {v3, p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f090229

    .line 1274
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    .line 1275
    invoke-virtual {v0, p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f090364

    .line 1278
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    .line 1279
    invoke-virtual {p1, p0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f090229
        0x7f090316
        0x7f0902fb
        0x7f09016d
        0x7f090167
        0x7f0902b9
        0x7f0902b2
        0x7f090146
        0x7f09021e
        0x7f0902d2
        0x7f090364
        0x7f09024d
    .end array-data
.end method

.method private configureScreenFromIntent(Landroid/app/Activity;)V
    .locals 3

    .line 1090
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_come_from_incall"

    const/4 v1, 0x0

    .line 1093
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    .line 1094
    iget v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDeftComeFrom:I

    const-string v2, "isLauncher"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    const-string v0, "isMms"

    .line 1095
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeMms:Z

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureScreenFromIntent isComeFromInCall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; isComeFromLauncher = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; isComeMms = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeMms:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DialpadFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "DialpadFragment.configureScreenFromIntent"

    const-string v1, "Screen configuration is requested before onCreateView() is called. Ignored"

    .line 1106
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1116
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1122
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v0

    .line 1123
    iget-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_4

    .line 1125
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DIAL"

    .line 1126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.VIEW"

    .line 1127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MAIN"

    .line 1128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1131
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    .line 1138
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    move p1, v1

    .line 1141
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    .line 1142
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    return-void
.end method

.method private displayPhoneNuber(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 1842
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getNumberFromKeyCode(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 1847
    :cond_0
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 1853
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBar()V

    return v0

    .line 1856
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 11

    .line 1007
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStartFromActivity:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1012
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "is_come_from_incall"

    .line 1013
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    .line 1014
    iget v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDeftComeFrom:I

    const-string v3, "isLauncher"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    const-string v2, "isMms"

    .line 1015
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeMms:Z

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComeFromInCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; isComeFromLauncher = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; isComeMms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeMms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DialpadFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.DIAL"

    .line 1022
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1023
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1025
    iget-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1026
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    if-eqz v0, :cond_7

    .line 1030
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1032
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1034
    iput-boolean v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 1037
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1036
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1038
    invoke-direct {p0, p1, v3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 1041
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1044
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "vnd.android.cursor.item/person"

    .line 1045
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1048
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1051
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-string p1, "number"

    const-string v0, "number_key"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1050
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1058
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1060
    iput-boolean v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 1062
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v4

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1067
    throw v0

    :cond_7
    :goto_0
    return v1
.end method

.method private formatEdit(I)V
    .locals 1

    .line 1829
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getNumberFromKeyCode(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getphonenum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->displayPhoneNuber(ILjava/lang/String;)Z

    .line 1830
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1831
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setcurspostion()V

    return-void
.end method

.method static getFormattedDigits(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 365
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 374
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 380
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNumberFromKeyCode(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "#"

    goto :goto_0

    :pswitch_1
    const-string p1, "*"

    goto :goto_0

    :pswitch_2
    const-string p1, "9"

    goto :goto_0

    :pswitch_3
    const-string p1, "8"

    goto :goto_0

    :pswitch_4
    const-string p1, "7"

    goto :goto_0

    :pswitch_5
    const-string p1, "6"

    goto :goto_0

    :pswitch_6
    const-string p1, "5"

    goto :goto_0

    :pswitch_7
    const-string p1, "4"

    goto :goto_0

    :pswitch_8
    const-string p1, "3"

    goto :goto_0

    :pswitch_9
    const-string p1, "2"

    goto :goto_0

    :pswitch_a
    const-string p1, "1"

    goto :goto_0

    :pswitch_b
    const-string p1, "0"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRecordFromQuery(Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;
    .locals 8

    const/4 v0, 0x0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 314
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 315
    new-instance v0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 316
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->contactId:J

    const/4 p2, 0x2

    .line 317
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->photoId:J

    const/4 p2, 0x1

    .line 318
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->name:Ljava/lang/String;

    const/4 p2, 0x4

    .line 319
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->normalizedNumber:Ljava/lang/String;

    .line 320
    iget-object p2, v0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->normalizedNumber:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 321
    iget-object p2, v0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->number:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->normalizedNumber:Ljava/lang/String;
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

    .line 326
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_2
    throw p2
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getphonenum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 490
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSelect:I

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleDialButtonPressed()V
    .locals 5

    .line 2374
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2375
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2376
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    .line 2378
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsVoiceMail:I

    invoke-direct {p0, v0, v1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->showSpeedDialDialog(IIZ)V

    :goto_0
    return-void

    .line 2382
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->phoneNumber:Ljava/lang/String;

    const-string v2, "isDialpad"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->speedDialLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2383
    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->phoneNumber:Ljava/lang/String;

    sget-object v4, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, v1, v4}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 2384
    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 2385
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2386
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2387
    iput-boolean v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    return-void

    .line 2393
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2394
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 2395
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    sub-int/2addr v0, v3

    .line 2397
    invoke-virtual {v1, v0}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2398
    new-instance v1, Lcom/android/dialer/callintent/CallIntentBuilder;

    sget-object v4, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v1, v0, v4}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 2399
    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 2400
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2401
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2402
    iput-boolean v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    goto :goto_1

    .line 2405
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 2412
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2417
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 2418
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 2419
    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2420
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->PRESS_CALL_BUTTON_WITHOUT_CALLING:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "DialpadFragment.handleDialButtonPressed"

    const-string v2, "The phone number is prohibited explicitly by a rule."

    .line 2421
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2424
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    const v0, 0x7f1101e9

    .line 2426
    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 2427
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phone_prohibited_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2431
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearDialpad()V

    goto :goto_1

    .line 2433
    :cond_6
    new-instance v1, Lcom/android/dialer/callintent/CallIntentBuilder;

    sget-object v4, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v1, v0, v4}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 2434
    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 2435
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2436
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2437
    iput-boolean v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    :goto_1
    return-void
.end method

.method private handleDialButtonPressed(Z)V
    .locals 6

    .line 2445
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2446
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->callVoicemail()V

    return-void

    .line 2448
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->phoneNumber:Ljava/lang/String;

    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    const-string v1, "isDialpad"

    const-string v2, "android.telecom.extra.START_CALL_WITH_RTT"

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->speedDialLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 2453
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->phoneNumber:Ljava/lang/String;

    sget-object v5, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {p1, v4, v5}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 2454
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 2455
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2456
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2457
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2458
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2459
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2460
    iput-boolean v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    return-void

    .line 2464
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2465
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    .line 2466
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v4}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    sub-int/2addr p1, v3

    .line 2467
    invoke-virtual {v4, p1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object p1

    .line 2468
    new-instance v4, Lcom/android/dialer/callintent/CallIntentBuilder;

    sget-object v5, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v4, p1, v5}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 2469
    invoke-virtual {v4}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 2470
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2471
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2472
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2473
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2474
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2475
    iput-boolean v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    goto :goto_0

    .line 2477
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 2480
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2484
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 2485
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 2486
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2487
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->PRESS_CALL_BUTTON_WITHOUT_CALLING:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "DialpadFragment.handleDialButtonPressed"

    const-string v1, "The phone number is prohibited explicitly by a rule."

    .line 2488
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2491
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    const p1, 0x7f1101e9

    .line 2493
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object p1

    .line 2494
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "phone_prohibited_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2498
    :cond_4
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearDialpad()V

    goto :goto_0

    .line 2500
    :cond_5
    new-instance v4, Lcom/android/dialer/callintent/CallIntentBuilder;

    sget-object v5, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v4, p1, v5}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 2501
    invoke-virtual {v4}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 2502
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2503
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2504
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2505
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2506
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2507
    iput-boolean v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    :goto_0
    return-void
.end method

.method private handleInputStar(ILandroid/view/KeyEvent;)V
    .locals 8

    .line 3505
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    .line 3506
    sget-wide v2, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastClickStarTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 3509
    sput-wide v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastClickStarTime:J

    .line 3510
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void

    .line 3514
    :cond_0
    sput-wide v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastClickStarTime:J

    const-wide/16 v0, 0x3e8

    cmp-long v0, v4, v0

    if-gez v0, :cond_6

    .line 3515
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3517
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    return-void

    .line 3523
    :cond_1
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "*"

    .line 3525
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ";"

    const-string v4, ","

    const-string v5, "+"

    if-eqz v2, :cond_2

    move-object p2, v5

    goto :goto_0

    .line 3527
    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p2, v4

    goto :goto_0

    .line 3529
    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object p2, v3

    goto :goto_0

    .line 3531
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object p2, v1

    .line 3534
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/16 p1, 0xa

    const/4 p2, -0x1

    .line 3535
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    .line 3537
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :goto_1
    return-void
.end method

.method private hideAndClearDialpad(Z)V
    .locals 0

    .line 2353
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearDialpad()V

    return-void
.end method

.method public static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v1, "add_call_mode"

    .line 345
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isDialpadChooserVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isDigitsEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isLayoutReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 3

    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :pswitch_1
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :pswitch_2
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :pswitch_3
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :pswitch_4
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :pswitch_5
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_6
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :pswitch_7
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    return v1

    :pswitch_8
    return v2

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private isOtaspCode()Z
    .locals 3

    const-string v0, "ro.product.vzw"

    const/4 v1, 0x0

    .line 1895
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "*228"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private isPhoneInUse()Z
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2753
    invoke-static {v0}, Lcom/android/dialer/telecom/TelecomUtil;->isInCall(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVoicemailAvailable()Z
    .locals 4

    .line 2850
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "voicemail"

    invoke-static {v0, v1}, Lcom/android/dialer/telecom/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2854
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 2857
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/dialer/telecom/TelecomUtil;->getVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    .line 2856
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DialpadFragment.isVoicemailAvailable"

    const-string v3, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    .line 2861
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private keyPressed(I)V
    .locals 2

    .line 1504
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xb

    .line 1539
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xa

    .line 1542
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x9

    .line 1533
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x8

    .line 1530
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x7

    .line 1527
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x6

    .line 1524
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x5

    .line 1521
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x4

    .line 1518
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x3

    .line 1515
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x2

    .line 1512
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 1509
    :pswitch_a
    invoke-direct {p0, v0, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_b
    const/4 p1, 0x0

    .line 1536
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1548
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mEditTextRequestFocus()V
    .locals 6

    .line 1867
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1870
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1871
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1874
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1875
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1876
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f11005b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1877
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f110420

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1879
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1880
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v3, "AssistedDialingOn"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f11006c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f11006b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1888
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f11000a

    const v3, 0x7f110005

    const v4, 0x7f11000c

    iget-object v5, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1889
    invoke-virtual {p0, v2, v2, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBarStyle(ZZZ)V

    return-void
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .line 2907
    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    .line 2908
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 2

    .line 2760
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private playTone(I)V
    .locals 1

    const/16 v0, 0x96

    .line 2570
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    return-void
.end method

.method private playTone(II)V
    .locals 3

    .line 2592
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2603
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2604
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2610
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2611
    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    const-string p2, "DialpadFragment.playTone"

    .line 2612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToneGenerator == null, tone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2613
    monitor-exit v0

    return-void

    .line 2617
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 2618
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2619
    iput-boolean v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPlayTone:Z

    return-void

    :catchall_0
    move-exception p1

    .line 2618
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    const-string v0, ""

    .line 2879
    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 2880
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2884
    :cond_0
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;

    .line 2886
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/dialpad/DialpadFragment$7;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$7;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 2903
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mCallLog:Lcom/android/dialer/app/calllog/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/dialer/app/calllog/CallLogAsync;->getLastOutgoingCall(Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    return-void
.end method

.method private removePreviousDigitIfPossible(C)V
    .locals 3

    .line 2289
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    .line 2290
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2291
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2292
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 1

    .line 2733
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/telecom/TelecomUtil;->showInCallScreen(Landroid/content/Context;Z)V

    .line 2743
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1162
    iget-object v1, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v2, v3, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getFormattedDigits(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 1165
    iget-object v2, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isComeFromLauncher = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , isComeMms = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeMms:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "DialpadFragment"

    invoke-static {v6, v4, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    iget v4, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget-boolean v4, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeMms:Z

    if-eq v4, v5, :cond_1

    iget-boolean v4, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1173
    :cond_0
    iget-boolean v4, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    if-nez v4, :cond_2

    .line 1174
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v4, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 1171
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1172
    iput-boolean v5, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStarChangeToPlus:Z

    .line 1180
    :cond_2
    :goto_1
    iget-boolean v4, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    if-eqz v4, :cond_3

    return-void

    .line 1184
    :cond_3
    iget-boolean v4, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    if-nez v4, :cond_7

    .line 1185
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v6, 0x23

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v5, -0x1

    if-eq v4, v6, :cond_5

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v4, "9"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v10

    goto/16 :goto_3

    :pswitch_1
    const-string v4, "8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v11

    goto/16 :goto_3

    :pswitch_2
    const-string v4, "7"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v12

    goto/16 :goto_3

    :pswitch_3
    const-string v4, "6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v13

    goto :goto_3

    :pswitch_4
    const-string v4, "5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v14

    goto :goto_3

    :pswitch_5
    const-string v4, "4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v15

    goto :goto_3

    :pswitch_6
    const-string v4, "3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :pswitch_7
    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :pswitch_8
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_3

    :pswitch_9
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v9

    goto :goto_3

    :cond_4
    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v8

    goto :goto_3

    :cond_5
    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v7

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v5

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 1220
    :pswitch_a
    invoke-direct {v0, v7, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1217
    :pswitch_b
    invoke-direct {v0, v8, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1214
    :pswitch_c
    invoke-direct {v0, v3, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1211
    :pswitch_d
    invoke-direct {v0, v9, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1208
    :pswitch_e
    invoke-direct {v0, v10, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1205
    :pswitch_f
    invoke-direct {v0, v11, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1202
    :pswitch_10
    invoke-direct {v0, v12, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1199
    :pswitch_11
    invoke-direct {v0, v13, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1196
    :pswitch_12
    invoke-direct {v0, v14, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    .line 1193
    :pswitch_13
    invoke-direct {v0, v15, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    :pswitch_14
    const/4 v1, 0x2

    .line 1190
    invoke-direct {v0, v1, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_4

    :pswitch_15
    const/4 v1, 0x1

    .line 1187
    invoke-direct {v0, v1, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1225
    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 1226
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1227
    new-instance v2, Lcom/android/dialer/app/dialpad/DialpadFragment$3;

    invoke-direct {v2, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment$3;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1239
    :cond_7
    iput-boolean v3, v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStartFromActivity:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private showDialpadChooser(Z)V
    .locals 0

    return-void
.end method

.method private showNoSpeedNumberDialog(I)V
    .locals 2

    .line 3486
    iget v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsSpeedDial:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->showSpeedDialDialog(IIZ)V

    return-void
.end method

.method private showSpeedDialDialog(IIZ)V
    .locals 6

    const/4 v0, 0x1

    .line 3606
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    .line 3608
    iget-boolean v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPlayTone:Z

    if-eqz v1, :cond_0

    .line 3609
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->stopTone()V

    .line 3612
    :cond_0
    iget v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsVoiceMail:I

    const/4 v2, 0x0

    const v3, 0x7f11006d

    const/4 v4, 0x0

    if-ne p1, v1, :cond_1

    .line 3613
    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, p1, p2, v4}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 3614
    invoke-virtual {v1, v0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setCancelable(Z)V

    .line 3615
    invoke-virtual {v1, p0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3616
    invoke-virtual {v1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->show()V

    .line 3617
    sget-object v1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v5, 0x7f1101e3

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 3619
    :cond_1
    iget v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsSpeedDial:I

    if-ne p1, v1, :cond_2

    .line 3620
    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, p1, p2, v4}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 3621
    invoke-virtual {v1, v0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setCancelable(Z)V

    .line 3622
    invoke-virtual {v1, p0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3623
    invoke-virtual {v1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->show()V

    .line 3624
    sget-object v1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v5, 0x7f110343

    invoke-virtual {v1, v5, v4, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 3626
    :cond_2
    iget v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mIsAirplaneModeOn:I

    if-ne p1, v1, :cond_4

    if-eqz p3, :cond_3

    .line 3628
    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, p1, p2, p3}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 3629
    invoke-virtual {v1, v0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setCancelable(Z)V

    .line 3630
    invoke-virtual {v1, p0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3631
    invoke-virtual {v1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->show()V

    .line 3632
    sget-object p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v4, v4, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    .line 3634
    :cond_3
    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, p1, p2, p3}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 3635
    invoke-virtual {v1, v0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setCancelable(Z)V

    .line 3636
    invoke-virtual {v1, p0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3637
    invoke-virtual {v1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->show()V

    .line 3638
    sget-object p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v4, v4, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private stopTone()V
    .locals 4

    .line 2625
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2629
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "DialpadFragment.stopTone"

    const-string v3, "mToneGenerator == null"

    new-array v2, v2, [Ljava/lang/Object;

    .line 2630
    invoke-static {v1, v3, v2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2631
    monitor-exit v0

    return-void

    .line 2633
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2634
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    iput-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPlayTone:Z

    return-void

    :catchall_0
    move-exception v1

    .line 2634
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateDeleteButtonEnabledState()V
    .locals 1

    .line 2816
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private updateDialString(C)V
    .locals 3

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2792
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not expected for anything other than PAUSE & WAIT"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2797
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 2798
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 2800
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2801
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    .line 2804
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    move v0, v2

    .line 2806
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2807
    invoke-static {v1, v2, v0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->canAddDigit(Ljava/lang/CharSequence;IIC)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2808
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2810
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private updateMenuBar()V
    .locals 15

    .line 3549
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    if-eqz v0, :cond_9

    .line 3551
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3553
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 3555
    :cond_0
    iget-boolean v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 3557
    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f11045e

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void

    .line 3562
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const v1, 0x7f11006c

    const v4, 0x7f11006b

    const/4 v5, -0x1

    const-string v6, "AssistedDialingOn"

    const v7, 0x7f11000c

    const v8, 0x7f11005e

    const/4 v9, 0x5

    const v10, 0x7f110054

    const/4 v11, 0x4

    const/4 v12, 0x6

    if-lez v0, :cond_6

    .line 3564
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3565
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f11005b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3566
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f110420

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3568
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v3, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3569
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v3, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3573
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3574
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 3575
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3577
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3581
    :cond_5
    :goto_1
    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f11000a

    const v3, 0x7f110005

    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3, v7, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 3582
    invoke-virtual {p0, v2, v2, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBarStyle(ZZZ)V

    goto :goto_3

    .line 3584
    :cond_6
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3585
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v13, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v13, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3586
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v10, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v10, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3588
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3589
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    .line 3590
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3592
    :cond_7
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3597
    :cond_8
    :goto_2
    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v3, v7, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 3598
    invoke-virtual {p0, v3, v3, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBarStyle(ZZZ)V

    :cond_9
    :goto_3
    return-void
.end method

.method private updateMenuOverflowButton(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "DialpadFragment"

    const-string v1, "DialpadFragment afterTextChanged "

    .line 464
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->setQueryString(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->setQueryString(Ljava/lang/String;)V

    .line 474
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBar()V

    .line 480
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, p1, v1, p0}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;Lcom/android/dialer/app/SpecialCharSequenceMgr$SpecialCharListener;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleMmiCode:Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 447
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 450
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600fd

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public callVoicemail()V
    .locals 3

    .line 2300
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2301
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    .line 2304
    :cond_0
    new-instance v0, Lcom/android/dialer/app/dialpad/DialpadFragment$6;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$6;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    .line 2334
    new-instance v1, Lcom/android/incallui/RttCallDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/incallui/RttCallDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V

    iput-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    .line 2335
    invoke-virtual {v1, p0}, Lcom/android/incallui/RttCallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2336
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->show()V

    goto :goto_0

    .line 2339
    :cond_1
    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    invoke-static {}, Lcom/android/dialer/util/CallUtil;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isDialpad"

    const/4 v2, 0x1

    .line 2340
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2342
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2341
    invoke-static {v1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 2345
    invoke-direct {p0, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    .line 2346
    iput-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    :goto_0
    return-void
.end method

.method public changeEditTextLine(I)V
    .locals 8

    .line 1595
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1596
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    .line 1599
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1604
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1605
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    const/16 v0, 0x14

    const-string v2, "selection = "

    const-string v3, "Nextresult = "

    const-string v4, "DialpadFragment"

    const/4 v5, 0x0

    if-ne p1, v0, :cond_4

    .line 1609
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v6, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    invoke-virtual {p1, v0, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 1610
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v6, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    invoke-virtual {v0, v6, v5, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 1611
    iget-object v6, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr p1, v6

    .line 1613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1615
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_2

    .line 1617
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-gt v0, v3, :cond_8

    .line 1618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v6, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v3, v6, v5, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_3

    .line 1620
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x13

    if-ne p1, v0, :cond_8

    .line 1626
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v6, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    invoke-virtual {p1, v0, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 1627
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v6, p1, v0

    if-gez v6, :cond_5

    .line 1630
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    .line 1632
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    :goto_1
    if-lez v3, :cond_8

    .line 1634
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-object v6, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    cmpg-float v6, v6, p1

    if-gtz v6, :cond_6

    .line 1636
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_6
    cmpl-float v6, p1, v0

    if-lez v6, :cond_7

    .line 1639
    iget-object v6, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public clearDialpad()V
    .locals 2

    .line 2520
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditTextForSearchList:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 2522
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    .line 2523
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditTextForSearchList:Z

    .line 2525
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public clearDialpadForCallFromSearchList()V
    .locals 1

    const/4 v0, 0x1

    .line 2515
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditTextForSearchList:Z

    return-void
.end method

.method public dissMissDialog()V
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->tctDialog:Landroid/app/TctDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/TctDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->tctDialog:Landroid/app/TctDialog;

    invoke-virtual {v0}, Landroid/app/TctDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public getAnimate()Z
    .locals 1

    .line 2943
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mAnimate:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDialpadHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpeedDialFragmentShow()Z
    .locals 3

    .line 3695
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3698
    :cond_0
    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3700
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09012e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2166
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2167
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleDialButtonPressed()V

    goto :goto_0

    :cond_0
    const v1, 0x7f090118

    if-ne v0, v1, :cond_1

    const/16 p1, 0x43

    .line 2169
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f090139

    if-ne v0, v1, :cond_2

    .line 2171
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result p1

    goto :goto_0

    :cond_2
    const v1, 0x7f090133

    if-ne v0, v1, :cond_3

    :goto_0
    return-void

    .line 2177
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialpadFragment.onClick"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onClickCSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 3

    .line 2987
    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MenuBar;->getSoftKeyName(I)Ljava/lang/String;

    move-result-object v0

    .line 2988
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2995
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2996
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->speedDialLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2997
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 2998
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3000
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 3001
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    add-int/lit8 v0, v0, -0x1

    .line 3003
    invoke-virtual {v2, v0}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3005
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 3008
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 3009
    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 3010
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    return v1
.end method

.method public onClickRSK()Z
    .locals 3

    .line 3024
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3026
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 3028
    :cond_0
    iget-boolean v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 3030
    invoke-direct {p0, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    :cond_3
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DialpadFragment onCreate"

    .line 499
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 500
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStartFromActivity:Z

    .line 505
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 508
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "pref_digits_filled_by_intent"

    .line 511
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mCallStateReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;

    if-nez p1, :cond_1

    .line 517
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 519
    new-instance v0, Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;Lcom/android/dialer/app/dialpad/DialpadFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mCallStateReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;

    .line 520
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mCallStateReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 522
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "DialpadFragment onCreateView"

    .line 527
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p3, "DialpadFragment inflate view"

    .line 528
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const p3, 0x7f0c0072

    const/4 v0, 0x0

    .line 529
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 530
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p2, "DialpadFragment buildLayer"

    .line 531
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 533
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p2, "DialpadFragment setup views"

    .line 535
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 537
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialpadfinishReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;

    if-nez p2, :cond_0

    .line 538
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.android.dialpad.finish"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 540
    new-instance p3, Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;

    invoke-direct {p3, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    iput-object p3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialpadfinishReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;

    .line 541
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialpadfinishReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;

    invoke-virtual {p3, v1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const p2, 0x7f090123

    .line 545
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    const p2, 0x7f090147

    .line 546
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEmergencyText:Landroid/widget/TextView;

    const p2, 0x7f090171

    .line 547
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->layout:Landroid/widget/LinearLayout;

    const p2, 0x7f0902c6

    .line 548
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->speedDialLayout:Landroid/widget/LinearLayout;

    .line 549
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 550
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setPlaySoundEffectEnable(Z)V

    .line 551
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 552
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 553
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    new-instance p3, Lcom/android/dialer/app/dialpad/DialpadFragment$1;

    invoke-direct {p3, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$1;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p2

    sput-object p2, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 720
    invoke-virtual {p2, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 721
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 722
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance p3, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f11005b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance p3, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110420

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, -0x1

    const-string v2, "AssistedDialingOn"

    invoke-static {p2, v2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    .line 727
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const v3, 0x7f11006c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :cond_1
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const v3, 0x7f11006b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_2
    :goto_0
    sget-object p2, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const p3, 0x7f11000c

    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v0, p3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 735
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBarStyle(ZZZ)V

    .line 738
    new-instance p2, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-direct {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;-><init>()V

    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    .line 740
    new-instance p3, Lcom/android/dialer/app/dialpad/DialpadFragment$2;

    invoke-direct {p3, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$2;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    invoke-virtual {p2, p3}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->addOnLoadFinishedListener(Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;)V

    .line 864
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->ft:Landroid/app/FragmentTransaction;

    const p3, 0x7f09016e

    .line 865
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p2, p3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 867
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->ft:Landroid/app/FragmentTransaction;

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commit()I

    const p2, 0x7f090229

    .line 881
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 883
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->configureKeypadListeners(Landroid/view/View;)V

    .line 920
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 921
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1489
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1490
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->destroy()V

    const/4 v0, 0x0

    .line 1492
    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    :cond_0
    const/4 v0, 0x0

    .line 1494
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    .line 1495
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mCallStateReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$CallStateReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1497
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialpadfinishReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;

    if-eqz v0, :cond_1

    .line 1498
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialpadfinishReceiver:Lcom/android/dialer/app/dialpad/DialpadFragment$FinishActivityReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 3134
    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    .line 3135
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBar()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 2914
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2923
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v0

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2709
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 2710
    iget p1, p1, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 2714
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x66

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 2718
    invoke-direct {p0, p3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x67

    if-ne p1, p2, :cond_2

    .line 2722
    invoke-direct {p0, p3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0

    .line 2724
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected itemId: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "DialpadFragment.onItemClick"

    invoke-static {p3, p1, p2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 2022
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2023
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090139

    if-ne p1, v0, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    if-ne p2, v1, :cond_1

    .line 2025
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleDialButtonPressed()V

    return v2

    .line 2029
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->stopTone()V

    .line 2031
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_3

    const/4 p1, -0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p2, 0xb

    .line 2064
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_1
    const/16 p2, 0xa

    .line 2067
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_2
    const/16 p2, 0x9

    .line 2058
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_3
    const/16 p2, 0x8

    .line 2055
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_4
    const/4 p2, 0x7

    .line 2052
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_5
    const/4 p2, 0x6

    .line 2049
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 2046
    :pswitch_6
    invoke-direct {p0, v1, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_7
    const/4 p2, 0x4

    .line 2043
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_8
    const/4 p2, 0x3

    .line 2040
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    :pswitch_9
    const/4 p2, 0x2

    .line 2037
    invoke-direct {p0, p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 2034
    :pswitch_a
    invoke-direct {p0, v2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 2061
    :pswitch_b
    invoke-direct {p0, p3, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    :cond_3
    :goto_0
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const-string p2, "DialpadFragment"

    const-string v0, "onKeyDown"

    .line 1652
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1658
    :cond_0
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1661
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 1664
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->changeEditTextLine(I)V

    .line 1667
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isOtaspCode()Z

    move-result v2

    const/4 v3, 0x5

    if-nez v2, :cond_6

    const/16 v2, 0x42

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_2

    const/16 v2, 0x17

    if-ne p1, v2, :cond_6

    .line 1674
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 1679
    :cond_3
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1680
    new-instance p1, Lcom/android/dialer/app/dialpad/DialpadFragment$4;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$4;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    .line 1696
    new-instance p2, Lcom/android/incallui/RttCallDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/incallui/RttCallDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V

    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    .line 1698
    invoke-virtual {p2, p0}, Lcom/android/incallui/RttCallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1699
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {p1}, Lcom/android/incallui/RttCallDialog;->show()V

    goto :goto_0

    .line 1701
    :cond_4
    sget-object p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, v1}, Landroid/widget/MenuBar;->getSoftKeyName(I)Ljava/lang/String;

    move-result-object p1

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSK string = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    .line 1706
    :cond_5
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleDialButtonPressed()V

    :goto_0
    return v1

    .line 1715
    :cond_6
    iget-boolean v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    const/4 v4, 0x0

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromLauncher:I

    if-eqz v2, :cond_8

    :cond_7
    if-eqz v0, :cond_8

    move v2, v1

    goto :goto_1

    :cond_8
    move v2, v4

    .line 1716
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needPlayCallDTMF = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    if-eqz v2, :cond_9

    .line 1804
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_2

    :cond_9
    const/16 v0, 0xb

    .line 1806
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1808
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto/16 :goto_e

    :pswitch_1
    if-eqz v2, :cond_a

    .line 1812
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_3

    :cond_a
    const/16 v0, 0xa

    .line 1814
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1816
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto/16 :goto_e

    :pswitch_2
    if-eqz v2, :cond_b

    .line 1788
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x39

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_4

    :cond_b
    const/16 v0, 0x9

    .line 1790
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1792
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto/16 :goto_e

    :pswitch_3
    if-eqz v2, :cond_c

    .line 1780
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x38

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_5

    :cond_c
    const/16 v0, 0x8

    .line 1782
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1784
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto/16 :goto_e

    :pswitch_4
    if-eqz v2, :cond_d

    .line 1772
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_6

    :cond_d
    const/4 v0, 0x7

    .line 1774
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1776
    :goto_6
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto/16 :goto_e

    :pswitch_5
    if-eqz v2, :cond_e

    .line 1764
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x36

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_7

    :cond_e
    const/4 v0, 0x6

    .line 1766
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1768
    :goto_7
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto/16 :goto_e

    :pswitch_6
    if-eqz v2, :cond_f

    .line 1756
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x35

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_8

    .line 1758
    :cond_f
    invoke-direct {p0, v3, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1760
    :goto_8
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto/16 :goto_e

    :pswitch_7
    if-eqz v2, :cond_10

    .line 1748
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_9

    :cond_10
    const/4 v0, 0x4

    .line 1750
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1752
    :goto_9
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto :goto_e

    :pswitch_8
    if-eqz v2, :cond_11

    .line 1740
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x33

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_a

    :cond_11
    const/4 v0, 0x3

    .line 1742
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1744
    :goto_a
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto :goto_e

    :pswitch_9
    if-eqz v2, :cond_12

    .line 1732
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_b

    :cond_12
    const/4 v0, 0x2

    .line 1734
    invoke-direct {p0, v0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1736
    :goto_b
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto :goto_e

    :pswitch_a
    if-eqz v2, :cond_13

    .line 1724
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_c

    .line 1726
    :cond_13
    invoke-direct {p0, v1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1728
    :goto_c
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    goto :goto_e

    :pswitch_b
    if-eqz v2, :cond_14

    .line 1796
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    invoke-virtual {p2, v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_d

    .line 1798
    :cond_14
    invoke-direct {p0, v4, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->playTone(II)V

    .line 1800
    :goto_d
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->formatEdit(I)V

    :goto_e
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1906
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1910
    :cond_0
    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1911
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isOtaspCode()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/16 p2, 0x17

    if-ne p1, p2, :cond_4

    .line 1918
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 1923
    :cond_2
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1924
    new-instance p1, Lcom/android/dialer/app/dialpad/DialpadFragment$5;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$5;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    .line 1940
    new-instance p2, Lcom/android/incallui/RttCallDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/incallui/RttCallDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V

    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    .line 1942
    invoke-virtual {p2, p0}, Lcom/android/incallui/RttCallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1943
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {p1}, Lcom/android/incallui/RttCallDialog;->show()V

    goto :goto_0

    .line 1945
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->handleDialButtonPressed()V

    :goto_0
    return v1

    :cond_4
    const/4 p2, 0x4

    if-ne p1, p2, :cond_7

    .line 1953
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1954
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditTextRequestFocus()V

    goto :goto_1

    .line 1957
    :cond_5
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isLongDown:Z

    if-nez p2, :cond_6

    .line 1958
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1959
    :cond_6
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-eqz p2, :cond_7

    .line 1961
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    if-lez p2, :cond_7

    .line 1963
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    .line 1964
    invoke-interface {v0, v2, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1972
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-eqz p2, :cond_9

    .line 1977
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1978
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9

    .line 1980
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x14

    if-ne p1, p2, :cond_8

    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result p2

    if-le p2, v1, :cond_8

    .line 1981
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600fd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 1982
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1983
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->requestFocus()Z

    .line 1984
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1985
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1986
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110213

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    sget-object p2, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v0, 0x7f11000a

    const v2, 0x7f110005

    const v3, 0x7f11000c

    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1988
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBarStyle(ZZZ)V

    .line 1990
    :cond_8
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_9

    const/16 p2, 0x13

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1991
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditTextRequestFocus()V

    .line 1999
    :cond_9
    iget-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPlayTone:Z

    if-eqz p1, :cond_a

    .line 2000
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->stopTone()V

    .line 2004
    :cond_a
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-nez p1, :cond_b

    .line 2007
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    :cond_b
    if-eqz p1, :cond_c

    .line 2011
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/incallui/call/TelecomAdapter;->stopDtmfTone(Ljava/lang/String;)V

    :cond_c
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 2185
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->isComeFromInCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2192
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    return v3

    .line 2238
    :sswitch_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    .line 2242
    invoke-direct {p0, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->removePreviousDigitIfPossible(C)V

    :cond_1
    const/16 v0, 0x51

    .line 2244
    invoke-direct {p0, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    .line 2245
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->stopTone()V

    .line 2246
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return v1

    .line 2198
    :sswitch_1
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    const/16 p1, 0x31

    .line 2201
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->removePreviousDigitIfPossible(C)V

    .line 2204
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 2208
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v4, "voicemail"

    .line 2207
    invoke-static {v0, v4}, Lcom/android/dialer/telecom/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 2206
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    if-nez v0, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    if-nez p1, :cond_8

    .line 2212
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 2217
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2222
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 2221
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_6

    move v3, v1

    :cond_6
    if-eqz v3, :cond_7

    const p1, 0x7f1101f1

    .line 2226
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object p1

    .line 2227
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "voicemail_request_during_airplane_mode"

    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const p1, 0x7f1101f2

    .line 2230
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object p1

    .line 2231
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "voicemail_not_ready"

    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 2216
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->callVoicemail()V

    :cond_9
    :goto_3
    return v1

    .line 2262
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_a

    move p1, v1

    goto :goto_4

    :cond_a
    move p1, v3

    :goto_4
    if-eqz p1, :cond_b

    const p1, 0x7f1101eb

    .line 2265
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/app/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object p1

    .line 2267
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "speed_dial_request_during_airplane_mode"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v3

    :cond_b
    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "DialpadFragment"

    const-string v3, "onLongClick call callSpeedNumber"

    .line 2270
    invoke-static {v2, v3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2271
    invoke-direct {p0, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->callSpeedNumber(I)V

    :sswitch_3
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f090118 -> :sswitch_3
        0x7f090146 -> :sswitch_2
        0x7f090167 -> :sswitch_2
        0x7f09016d -> :sswitch_2
        0x7f09021e -> :sswitch_2
        0x7f090229 -> :sswitch_1
        0x7f0902b2 -> :sswitch_2
        0x7f0902b9 -> :sswitch_2
        0x7f0902fb -> :sswitch_2
        0x7f090316 -> :sswitch_2
        0x7f090364 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2765
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f0901e5

    if-ne p1, v1, :cond_0

    const/16 p1, 0x2c

    .line 2767
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateDialString(C)V

    return v0

    :cond_0
    const v1, 0x7f0901ec

    if-ne p1, v1, :cond_1

    const/16 p1, 0x3b

    .line 2770
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateDialString(C)V

    return v0

    :cond_1
    const v1, 0x7f0901f0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 2775
    invoke-direct {p0, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    return v0

    :cond_2
    const v1, 0x7f0901e8

    if-ne p1, v1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public onOptionMenuClick(I)V
    .locals 11

    .line 3044
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110059

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 3049
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "AssistedDialingOn"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 3051
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110069

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3052
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 3053
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3054
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3055
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3057
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3058
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3061
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const v4, 0x7f11006b

    const v5, 0x7f11000c

    const v6, 0x7f11006c

    const/4 v7, 0x6

    if-lez p1, :cond_3

    .line 3062
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3063
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f11005b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3064
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f110420

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3066
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 3067
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3068
    :cond_1
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3069
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3072
    :cond_2
    :goto_1
    sget-object p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v0, 0x7f11000a

    const v1, 0x7f110005

    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v5, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 3073
    invoke-virtual {p0, v2, v2, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBarStyle(ZZZ)V

    goto/16 :goto_3

    .line 3075
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3076
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f110054

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3077
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f11005e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3079
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    .line 3080
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3081
    :cond_4
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3082
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3085
    :cond_5
    :goto_2
    sget-object p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v3, v5, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 3086
    invoke-virtual {p0, v3, v3, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBarStyle(ZZZ)V

    goto :goto_3

    :pswitch_1
    const/16 p1, 0x3b

    .line 3120
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_3

    :pswitch_2
    const/16 p1, 0x2c

    .line 3117
    invoke-direct {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_3

    .line 3106
    :pswitch_3
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    .line 3107
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    sub-int/2addr p1, v2

    .line 3109
    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->getDialerContact(I)Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object p1

    .line 3110
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3111
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3113
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 3112
    invoke-static {p1, v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_3

    :pswitch_4
    if-eqz v0, :cond_6

    .line 3100
    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 3101
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    :pswitch_5
    if-eqz v0, :cond_6

    .line 3093
    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 3095
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3094
    invoke-static {v0, p1, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1424
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1427
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->stopTone()V

    .line 1429
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1431
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/call/TelecomAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-string v0, ""

    .line 1438
    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 1440
    invoke-static {}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->cleanup()V

    .line 1443
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1448
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1449
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_c

    .line 2090
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f090229

    if-ne p2, v0, :cond_0

    const/16 p2, 0x8

    .line 2092
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f090316

    if-ne p2, v0, :cond_1

    const/16 p2, 0x9

    .line 2094
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0902fb

    if-ne p2, v0, :cond_2

    const/16 p2, 0xa

    .line 2096
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f09016d

    if-ne p2, v0, :cond_3

    const/16 p2, 0xb

    .line 2098
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f090167

    if-ne p2, v0, :cond_4

    const/16 p2, 0xc

    .line 2100
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0902b9

    if-ne p2, v0, :cond_5

    const/16 p2, 0xd

    .line 2102
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0902b2

    if-ne p2, v0, :cond_6

    const/16 p2, 0xe

    .line 2104
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_6
    const v0, 0x7f090146

    if-ne p2, v0, :cond_7

    const/16 p2, 0xf

    .line 2106
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_7
    const v0, 0x7f09021e

    if-ne p2, v0, :cond_8

    const/16 p2, 0x10

    .line 2108
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_8
    const v0, 0x7f090364

    if-ne p2, v0, :cond_9

    const/4 p2, 0x7

    .line 2110
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_9
    const v0, 0x7f09024d

    if-ne p2, v0, :cond_a

    const/16 p2, 0x12

    .line 2112
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_a
    const v0, 0x7f0902d2

    if-ne p2, v0, :cond_b

    const/16 p2, 0x11

    .line 2114
    invoke-direct {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 2116
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialpadFragment.onPressed"

    invoke-static {v1, p2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2119
    :goto_0
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2121
    :cond_c
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2122
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2123
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->stopTone()V

    :cond_d
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DialpadFragment.onResume"

    const-string v3, ""

    .line 1311
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "DialpadFragment onResume"

    .line 1312
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1313
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1314
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditTextRequestFocus()V

    .line 1315
    iget-boolean v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDialogIsShow:Z

    if-nez v1, :cond_0

    .line 1316
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateMenuBar()V

    :cond_0
    const-string v1, "Dialpad.onResume"

    .line 1334
    invoke-static {v1}, Lcom/android/contacts/common/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v1

    .line 1338
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    const-string v2, "qloc"

    .line 1340
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1346
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x1

    const-string v6, "AssistedDialingOn"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 1347
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1350
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f110069

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1351
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x14

    invoke-direct {v4, v6, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 1352
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v0, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1353
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1359
    :goto_0
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isSimpleMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1360
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    const/high16 v4, 0x42100000    # 36.0f

    invoke-virtual {v3, v0, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1361
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1363
    :cond_2
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v3, v0, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    :goto_1
    const-string v3, "dtmf_tone"

    .line 1368
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    iput-boolean v5, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    const-string v2, "dtwd"

    .line 1370
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    const-string v2, "hptc"

    .line 1372
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1374
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1376
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/app/Activity;)V

    const-string v2, "fdin"

    .line 1378
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1382
    invoke-direct {p0, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    :cond_4
    const-string v2, "hnt"

    .line 1385
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 1387
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->updateDeleteButtonEnabledState()V

    const-string v2, "bes"

    .line 1389
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    const/16 v2, 0x32

    const-string v3, "DialpadFragment"

    .line 1391
    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 1413
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1415
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1417
    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_5
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1483
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1484
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    const-string v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 8

    const-string v0, "DialpadFragment.onStart"

    const-string v1, "first launch: %b"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1284
    invoke-static {v0, v1, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "DialpadFragment onStart"

    .line 1285
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1286
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1290
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1291
    :try_start_0
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 1293
    :try_start_1
    new-instance v4, Landroid/media/ToneGenerator;

    const/16 v5, 0x8

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "DialpadFragment.onStart"

    .line 1295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught while creating local tone generator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 1298
    iput-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1301
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x32

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    const-string v0, "DialpadFragment.onStart"

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time for ToneGenerator creation: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1306
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 1301
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onStop()V
    .locals 2

    .line 1466
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1468
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 1470
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    const/4 v1, 0x0

    .line 1471
    iput-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1473
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    iget-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1476
    iput-boolean v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1477
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearDialpad()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 1473
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onUsbDebug()V
    .locals 3

    .line 3142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3143
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002a

    const/4 v2, 0x0

    .line 3144
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3179
    new-instance v0, Landroid/app/TctDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->tctDialog:Landroid/app/TctDialog;

    .line 3180
    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadFragment$9;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$9;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3190
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->tctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadFragment$11;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$11;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    const v2, 0x7f110051

    .line 3191
    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadFragment$10;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$10;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    const v2, 0x7f110052

    .line 3196
    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    move-result-object v0

    .line 3202
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    return-void
.end method

.method public process_quote_emergency_unquote(Ljava/lang/String;)V
    .locals 1

    const-string v0, "01189998819991197253"

    .line 2965
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2966
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    if-nez p1, :cond_0

    .line 2967
    new-instance p1, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    new-instance v0, Lcom/android/dialer/app/dialpad/DialpadFragment$8;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/dialpad/DialpadFragment$8;-><init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    invoke-direct {p1, v0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;-><init>(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$ViewProvider;)V

    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    .line 2976
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    invoke-virtual {p1}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->start()V

    goto :goto_0

    .line 2978
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mPseudoEmergencyAnimator:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    if-eqz p1, :cond_2

    .line 2979
    invoke-virtual {p1}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->end()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAnimate(Z)V
    .locals 0

    .line 2947
    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mAnimate:Z

    return-void
.end method

.method public setSpeedDialLayoutTextSize(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 3675
    :cond_0
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isSimpleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x41c00000    # 24.0f

    const/4 v1, 0x0

    .line 3676
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 3677
    invoke-virtual {p2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3678
    invoke-virtual {p3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    const/4 v1, 0x2

    .line 3680
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 3681
    invoke-virtual {p2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3682
    invoke-virtual {p3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStartFromActivity(Z)V
    .locals 0

    .line 3543
    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStartFromActivity:Z

    return-void
.end method

.method public setStartedFromNewIntent(Z)V
    .locals 0

    .line 1146
    iput-boolean p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    return-void
.end method

.method public setYFraction(F)V
    .locals 1

    .line 2951
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;->setYFraction(F)V

    return-void
.end method

.method protected setcurspostion()V
    .locals 2

    .line 1836
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mSelect:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public updateMenuBarStyle(ZZZ)V
    .locals 5

    .line 3715
    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    if-nez v0, :cond_0

    return-void

    .line 3718
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eqz p1, :cond_1

    .line 3720
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 3721
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isSpeedDialFragmentShow()Z

    move-result v4

    xor-int/2addr v4, v3

    .line 3720
    invoke-static {p1, v0, v2, v4}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_1
    if-eqz p3, :cond_2

    .line 3724
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 3725
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isSpeedDialFragmentShow()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 3724
    invoke-static {p1, p3, v1, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_2
    if-eqz p2, :cond_4

    .line 3728
    sget-object p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isSpeedDialFragmentShow()Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x7f060034

    goto :goto_0

    :cond_3
    const p3, 0x7f0601af

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p2, v3}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 3730
    :cond_4
    sget-object p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isSpeedDialFragmentShow()Z

    move-result p3

    if-eqz p3, :cond_5

    const p3, 0x7f0600ac

    goto :goto_1

    :cond_5
    const p3, 0x7f0600b2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/dialer/util/DialerUtils;->setMenuBarBackgroundColor(Landroid/widget/MenuBar;I)V

    .line 3731
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isSpeedDialFragmentShow()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/android/dialer/util/DialerUtils;->menu_line_color_default:[I

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/android/dialer/util/DialerUtils;->menu_line_color_dish:[I

    .line 3733
    :goto_2
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p2, p3, p1}, Lcom/android/dialer/util/DialerUtils;->setMenuBarMenuLine(Landroid/content/Context;Landroid/widget/MenuBar;[I)V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 3736
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p1, p2, v2, v3}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_8
    if-eqz p3, :cond_9

    .line 3739
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/app/dialpad/DialpadFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p1, p2, v1, v3}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_9
    :goto_3
    return-void
.end method
