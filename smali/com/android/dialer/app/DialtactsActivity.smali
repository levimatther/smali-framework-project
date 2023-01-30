.class public Lcom/android/dialer/app/DialtactsActivity;
.super Lcom/android/dialer/util/TransactionSafeActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/dialer/app/dialpad/DialpadFragment$OnDialpadQueryChangedListener;
.implements Lcom/android/dialer/app/list/OnListFragmentScrolledListener;
.implements Lcom/android/dialer/app/calllog/CallLogFragment$HostInterface;
.implements Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;
.implements Lcom/android/dialer/app/dialpad/DialpadFragment$HostInterface;
.implements Lcom/android/dialer/app/list/OldSpeedDialFragment$HostInterface;
.implements Lcom/android/dialer/app/list/SearchFragment$HostInterface;
.implements Lcom/android/dialer/app/list/OnDragDropListener;
.implements Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;
.implements Lcom/android/dialer/interactions/PhoneNumberInteraction$InteractionErrorListener;
.implements Lcom/android/dialer/interactions/PhoneNumberInteraction$DisambigDialogDismissedListener;
.implements Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/DialtactsActivity$LayoutOnDragListener;,
        Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_TAB:Ljava/lang/String; = "ACTION_SHOW_TAB"

.field private static final ACTION_TOUCH_DIALER:Ljava/lang/String; = "com.android.phone.action.TOUCH_DIALER"

.field public static final ACTIVITY_REQUEST_CODE_CALL_COMPOSE:I = 0x2

.field public static final ACTIVITY_REQUEST_CODE_CALL_DETAILS:I = 0x4

.field public static final ACTIVITY_REQUEST_CODE_LIGHTBRINGER:I = 0x3

.field private static final ACTIVITY_REQUEST_CODE_VOICE_SEARCH:I = 0x1

.field public static final DEBUG:Z = false

.field public static final EXTRA_CLEAR_NEW_VOICEMAILS:Ljava/lang/String; = "EXTRA_CLEAR_NEW_VOICEMAILS"

.field public static final EXTRA_SHOW_TAB:Ljava/lang/String; = "EXTRA_SHOW_TAB"

.field private static final FAB_SCALE_IN_DELAY_MS:I = 0x12c

.field private static final HISTORY_TAB_SEEN_TIMEOUT:J

.field private static final KEY_FIRST_LAUNCH:Ljava/lang/String; = "first_launch"

.field private static final KEY_IN_DIALPAD_SEARCH_UI:Ljava/lang/String; = "in_dialpad_search_ui"

.field private static final KEY_IN_REGULAR_SEARCH_UI:Ljava/lang/String; = "in_regular_search_ui"

.field private static final KEY_IS_DIALPAD_SHOWN:Ljava/lang/String; = "is_dialpad_shown"

.field private static final KEY_LAST_TAB:Ljava/lang/String; = "last_tab"

.field private static final KEY_SEARCH_QUERY:Ljava/lang/String; = "search_query"

.field private static final KEY_WAS_CONFIGURATION_CHANGE:Ljava/lang/String; = "was_configuration_change"

.field private static final TAG:Ljava/lang/String; = "DialtactsActivity"

.field public static final TAG_DIALPAD_FRAGMENT:Ljava/lang/String; = "dialpad"

.field private static final TAG_FAVORITES_FRAGMENT:Ljava/lang/String; = "favorites"

.field private static final TAG_NEW_SEARCH_FRAGMENT:Ljava/lang/String; = "new_search"

.field private static final TAG_REGULAR_SEARCH_FRAGMENT:Ljava/lang/String; = "search"

.field private static final TAG_SMARTDIAL_SEARCH_FRAGMENT:Ljava/lang/String; = "smartdial"


# instance fields
.field private isCKPD:Z

.field private isLastTabEnabled:Z

.field public isMultiSelectModeEnabled:Z

.field private mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

.field private mActionBarHeight:I

.field private mClearSearchOnPause:Z

.field private mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

.field protected mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

.field private mDialpadQuery:Ljava/lang/String;

.field private mDragDropController:Lcom/android/dialer/app/list/DragDropController;

.field private mFirstLaunch:Z

.field private mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

.field private mInCallDialpadUp:Z

.field private mInDialpadSearch:Z

.field private mInRegularSearch:Z

.field private mIsDialpadShown:Z

.field private mIsLandscape:Z

.field private mIsRestarting:Z

.field private mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

.field private mNewSearchFragment:Lcom/android/dialer/searchfragment/list/NewSearchFragment;

.field private mOverflowMenu:Landroid/widget/PopupMenu;

.field private mP13nLogger:Lcom/android/dialer/p13n/logging/P13nLogger;

.field private mP13nRanker:Lcom/android/dialer/p13n/inference/protocol/P13nRanker;

.field private mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mPendingSearchViewQuery:Ljava/lang/String;

.field private mPhoneNumberInteraction:Lcom/android/dialer/interactions/PhoneNumberInteraction;

.field private final mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

.field private mPreviouslySelectedTabIndex:I

.field private mRegularSearchFragment:Lcom/android/dialer/app/list/RegularSearchFragment;

.field private final mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/EditText;

.field private final mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

.field private mShowDialpadOnResume:Z

.field private mSlideIn:Landroid/view/animation/Animation;

.field mSlideInListener:Lcom/android/dialer/animation/AnimationListenerAdapter;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/dialer/animation/AnimationListenerAdapter;

.field private mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

.field private mStateSaved:Z

.field private mUri:Landroid/net/Uri;

.field private mVoiceSearchButton:Landroid/view/View;

.field private mVoiceSearchQuery:Ljava/lang/String;

.field private mWasConfigurationChange:Z

.field private timeTabSelected:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 194
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/dialer/app/DialtactsActivity;->HISTORY_TAB_SEEN_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/android/dialer/util/TransactionSafeActivity;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->isCKPD:Z

    .line 261
    new-instance v0, Lcom/android/dialer/app/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/DialtactsActivity$1;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideInListener:Lcom/android/dialer/animation/AnimationListenerAdapter;

    .line 269
    new-instance v0, Lcom/android/dialer/app/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/DialtactsActivity$2;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOutListener:Lcom/android/dialer/animation/AnimationListenerAdapter;

    .line 277
    new-instance v0, Lcom/android/dialer/app/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/DialtactsActivity$3;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    .line 326
    new-instance v0, Lcom/android/dialer/app/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/DialtactsActivity$4;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 342
    new-instance v0, Lcom/android/dialer/app/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/DialtactsActivity$5;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/DialtactsActivity;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->maybeEnterSearchUi()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/app/DialtactsActivity;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->commitDialpadFragmentHide()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/widget/ActionBarController;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/dialer/app/DialtactsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/dialer/app/DialtactsActivity;)Z
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->maybeExitSearchUi()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/dialer/app/DialtactsActivity;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->showFabInSearchUi()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/p13n/inference/protocol/P13nRanker;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mP13nRanker:Lcom/android/dialer/p13n/inference/protocol/P13nRanker;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/p13n/logging/P13nLogger;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mP13nLogger:Lcom/android/dialer/p13n/logging/P13nLogger;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/ListsFragment;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/DragDropController;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/DialtactsActivity;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/dialer/app/DialtactsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/dialer/app/DialtactsActivity;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/DialtactsActivity;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInDialpadSearch:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/dialer/app/DialtactsActivity;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInRegularSearch:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/dialer/app/DialtactsActivity;ZLjava/lang/String;Z)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/app/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/SmartDialSearchFragment;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/RegularSearchFragment;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/app/list/RegularSearchFragment;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/searchfragment/list/NewSearchFragment;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/dialer/app/DialtactsActivity;->mNewSearchFragment:Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    return-object p0
.end method

.method private canIntentBeHandled(Landroid/content/Intent;)Z
    .locals 2

    .line 1427
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 1429
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1430
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private commitDialpadFragmentHide()V
    .locals 2

    .line 962
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mStateSaved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 968
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    return-void
.end method

.method private displayFragment(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "IS_CKPD"

    const/4 v1, 0x0

    .line 1093
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->isCKPD:Z

    .line 1095
    invoke-direct {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->isCKPD:Z

    if-nez v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->finish()V

    return-void

    .line 1102
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ACTION_SHOW_TAB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1103
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 1108
    :goto_0
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->isCKPD:Z

    .line 1109
    invoke-direct {p0, v1}, Lcom/android/dialer/app/DialtactsActivity;->showDialpadFragment(Z)V

    .line 1111
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    if-eqz p1, :cond_2

    .line 1112
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1113
    iput-boolean v2, p0, Lcom/android/dialer/app/DialtactsActivity;->mInCallDialpadUp:Z

    .line 1116
    :cond_2
    iget-boolean p1, p0, Lcom/android/dialer/app/DialtactsActivity;->isCKPD:Z

    if-eqz p1, :cond_3

    const p1, 0x7f090139

    .line 1117
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1119
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1120
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digits view requests focus on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialtactsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private enterSearchUi(ZLjava/lang/String;Z)V
    .locals 7

    .line 1170
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->isCKPD:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mStateSaved:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1182
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mInDialpadSearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v1, :cond_1

    .line 1183
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1184
    :cond_1
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mInRegularSearch:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/app/list/RegularSearchFragment;

    if-eqz v1, :cond_2

    .line 1185
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1190
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v1

    const-string v2, "enable_new_search_fragment"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "new_search"

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const-string v2, "smartdial"

    goto :goto_1

    :cond_4
    const-string v2, "search"

    .line 1198
    :goto_1
    iput-boolean p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mInDialpadSearch:Z

    xor-int/lit8 v4, p1, 0x1

    .line 1199
    iput-boolean v4, p0, Lcom/android/dialer/app/DialtactsActivity;->mInRegularSearch:Z

    .line 1201
    iget-object v4, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v4}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    if-eqz p3, :cond_5

    const/high16 v4, 0x10b0000

    .line 1204
    invoke-virtual {v0, v4, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_2

    .line 1206
    :cond_5
    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1209
    :goto_2
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_8

    if-eqz v1, :cond_6

    .line 1212
    new-instance v4, Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    invoke-direct {v4}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;-><init>()V

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 1214
    new-instance v4, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-direct {v4}, Lcom/android/dialer/app/list/SmartDialSearchFragment;-><init>()V

    goto :goto_3

    .line 1216
    :cond_7
    invoke-static {p0}, Lcom/android/dialer/app/Bindings;->getLegacy(Landroid/content/Context;)Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;->newRegularSearchFragment()Lcom/android/dialer/app/list/RegularSearchFragment;

    move-result-object v4

    .line 1217
    move-object v5, v4

    check-cast v5, Lcom/android/dialer/app/list/SearchFragment;

    sget-object v6, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$KaP_7cKQQDixSLBkzRf9-lufxMo;->INSTANCE:Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$KaP_7cKQQDixSLBkzRf9-lufxMo;

    .line 1218
    invoke-virtual {v5, v6}, Lcom/android/dialer/app/list/SearchFragment;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_3
    const v5, 0x7f090136

    .line 1227
    invoke-virtual {v0, v5, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_4

    .line 1231
    :cond_8
    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1235
    :goto_4
    invoke-virtual {v4, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    if-nez v1, :cond_9

    .line 1239
    move-object v2, v4

    check-cast v2, Lcom/android/dialer/app/list/SearchFragment;

    iget-object v5, p0, Lcom/android/dialer/app/DialtactsActivity;->mP13nRanker:Lcom/android/dialer/p13n/inference/protocol/P13nRanker;

    .line 1240
    invoke-interface {v5}, Lcom/android/dialer/p13n/inference/protocol/P13nRanker;->shouldShowEmptyListForNullQuery()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/dialer/app/list/SearchFragment;->setShowEmptyListForNullQuery(Z)V

    :cond_9
    if-nez p1, :cond_a

    if-nez v1, :cond_a

    .line 1246
    check-cast v4, Lcom/android/dialer/app/list/SearchFragment;

    invoke-virtual {v4, p2}, Lcom/android/dialer/app/list/SearchFragment;->setQueryString(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    .line 1248
    check-cast v4, Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    invoke-virtual {v4, p2}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->setQuery(Ljava/lang/String;)V

    .line 1250
    :cond_b
    :goto_5
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    if-eqz p3, :cond_c

    .line 1253
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/list/ListsFragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 1255
    :cond_c
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {p2, v3}, Lcom/android/dialer/app/list/ListsFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_d

    .line 1258
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/ScreenEvent$Type;->SMART_DIAL_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {p1, p2, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    goto :goto_6

    .line 1260
    :cond_d
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/ScreenEvent$Type;->REGULAR_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {p1, p2, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    :cond_e
    :goto_6
    return-void
.end method

.method private exitSearchUi()V
    .locals 3

    .line 1267
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mStateSaved:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_1

    .line 1274
    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearDialpad()V

    .line 1277
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->setNotInSearchUi()V

    .line 1280
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFabAlignment()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 1283
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    .line 1284
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->getCurrentTabIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/dialer/app/DialtactsActivity;->onPageScrolled(IFI)V

    .line 1285
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->getCurrentTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/DialtactsActivity;->onPageSelected(I)V

    .line 1287
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v1, :cond_3

    .line 1289
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1291
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/app/list/RegularSearchFragment;

    if-eqz v1, :cond_4

    .line 1292
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1294
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mNewSearchFragment:Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    if-eqz v1, :cond_5

    .line 1295
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1297
    :cond_5
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1299
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 1301
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1305
    :cond_6
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->sendScreenViewForCurrentPosition()V

    .line 1306
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/ListsFragment;->setUserVisibleHint(Z)V

    .line 1309
    :cond_7
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/ActionBarController;->onSearchUiExited()V

    :cond_8
    :goto_0
    return-void
.end method

.method private getActionBarSafely()Landroidx/appcompat/app/ActionBar;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/ActionBar;

    return-object v0
.end method

.method private getFabAlignment()I
    .locals 1

    .line 1572
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsLandscape:Z

    if-nez v0, :cond_0

    .line 1573
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    .line 1574
    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->getCurrentTabIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public static getShowTabIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/DialtactsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_SHOW_TAB"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_SHOW_TAB"

    .line 376
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "intent"

    .line 379
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "DialtactsActivity"

    .line 381
    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 382
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 377
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private hideDialpadAndSearchUi()V
    .locals 1

    .line 1010
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->exitSearchUi()V

    :goto_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 3

    .line 1155
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DIAL"

    .line 1156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.VIEW"

    .line 1159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1161
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;)Z
    .locals 1

    .line 1073
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1078
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->phoneIsInUse()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1079
    invoke-static {p0, v0}, Lcom/android/dialer/telecom/TelecomUtil;->showInCallScreen(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method static synthetic lambda$enterSearchUi$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1223
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x0

    return p0
.end method

.method private maybeEnterSearchUi()V
    .locals 3

    .line 1336
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1337
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/dialer/app/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private maybeExitSearchUi()Z
    .locals 1

    .line 1343
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->exitSearchUi()V

    .line 1345
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private phoneIsInUse()Z
    .locals 1

    .line 1423
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isInCall(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private prepareVoiceSearchButton()V
    .locals 2

    .line 1018
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0, v0}, Lcom/android/dialer/app/DialtactsActivity;->canIntentBeHandled(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setNotInSearchUi()V
    .locals 1

    const/4 v0, 0x0

    .line 1005
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInDialpadSearch:Z

    .line 1006
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInRegularSearch:Z

    return-void
.end method

.method private setSearchBoxHint()V
    .locals 2

    .line 1039
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->getActionBarSafely()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/widget/SearchEditTextLayout;

    const v1, 0x7f09028e

    .line 1040
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1041
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getSearchBoxHint()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method private showDialpadFragment(Z)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 861
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DialtactActivity.showDialpadFragment"

    const-string v4, "animate: %b"

    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mStateSaved:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 865
    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    .line 867
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0, v3}, Lcom/android/dialer/app/list/ListsFragment;->setUserVisibleHint(Z)V

    .line 869
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-nez v1, :cond_1

    .line 871
    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    const v2, 0x7f090135

    const-string v4, "dialpad"

    .line 872
    invoke-virtual {v0, v2, v1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 874
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 877
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setAnimate(Z)V

    .line 878
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {v1, v2, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    .line 879
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    if-eqz p1, :cond_2

    .line 882
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    .line 883
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->maybeEnterSearchUi()V

    goto :goto_1

    .line 885
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p1, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 886
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->maybeEnterSearchUi()V

    .line 888
    :goto_1
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    invoke-virtual {p1}, Lcom/android/dialer/app/widget/ActionBarController;->onDialpadUp()V

    .line 890
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/ListsFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    const p1, 0x7f1102cb

    .line 893
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->setTitle(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private showFabInSearchUi()V
    .locals 4

    .line 1352
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 1353
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801be

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1354
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1352
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->changeIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFabAlignment()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 1356
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    return-void
.end method

.method private updateMissedCalls()V
    .locals 2

    .line 1581
    iget v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mPreviouslySelectedTabIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->markMissedCallsAsReadAndRemoveNotifications()V

    :cond_0
    return-void
.end method

.method private updateSearchFragmentPosition()V
    .locals 5

    .line 975
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/app/list/RegularSearchFragment;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 984
    invoke-virtual {v0}, Lcom/android/dialer/app/list/SearchFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "DialtactsActivity.updateSearchFragmentPosition"

    const-string v4, "fragment: %s, isVisible: %b"

    .line 980
    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 990
    invoke-virtual {v0, v3}, Lcom/android/dialer/app/list/SearchFragment;->updatePosition(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected buildOptionsMenu(Landroid/view/View;)Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;
    .locals 1

    .line 1045
    new-instance v0, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;-><init>(Lcom/android/dialer/app/DialtactsActivity;Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0d0004

    .line 1046
    invoke-virtual {v0, p1}, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->inflate(I)V

    .line 1047
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method public convertCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-static {}, Lcom/android/dialer/util/TouchPointManager;->getInstance()Lcom/android/dialer/util/TouchPointManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/util/TouchPointManager;->setPoint(II)V

    .line 393
    :cond_0
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableFloatingButton(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1477
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DialtactsActivity.enableFloatingButton"

    const-string v2, "enable: %b"

    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1479
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isDialpadShown()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public getActionBarHeight()I
    .locals 1

    .line 1568
    iget v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarHeight:I

    return v0
.end method

.method public getDialpadHeight()I
    .locals 1

    .line 1555
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 1556
    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getDialpadHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getSearchBoxHint()I
    .locals 1

    const v0, 0x7f1101d0

    return v0
.end method

.method protected handleMenuSettings()V
    .locals 2

    .line 734
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/settings/DialerSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public hasCursor(ZI)V
    .locals 0

    return-void
.end method

.method public hasSearchQuery()Z
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideDialpadFragment(ZZ)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 926
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearDialpad()V

    .line 932
    :cond_1
    iget-boolean p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 935
    iput-boolean p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    .line 936
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p2, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setAnimate(Z)V

    .line 937
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/dialer/app/list/ListsFragment;->setUserVisibleHint(Z)V

    .line 938
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/list/ListsFragment;->sendScreenViewForCurrentPosition()V

    .line 940
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->updateSearchFragmentPosition()V

    .line 942
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFabAlignment()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    if-eqz p1, :cond_3

    .line 944
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 946
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->commitDialpadFragmentHide()V

    .line 949
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    invoke-virtual {p1}, Lcom/android/dialer/app/widget/ActionBarController;->onDialpadDown()V

    .line 951
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isInSearchUi()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 952
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 953
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->exitSearchUi()V

    :cond_4
    const p1, 0x7f1102ca

    .line 957
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->setTitle(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public interactionError(I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberInteraction error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isActionBarShowing()Z
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/ActionBarController;->isActionBarShowing()Z

    move-result v0

    return v0
.end method

.method public isActionModeStateEnabled()Z
    .locals 1

    .line 1628
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->isMultiSelectModeEnabled:Z

    return v0
.end method

.method public isDialpadShown()Z
    .locals 1

    .line 1550
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    return v0
.end method

.method public isInSearchUi()Z
    .locals 1

    .line 996
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInDialpadSearch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInRegularSearch:Z

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

.method public isNearbyPlacesSearchEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onActivityResult$1$DialtactsActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 839
    invoke-static {p1}, Lcom/android/dialer/app/calllog/IntentProvider;->getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$DialtactsActivity(Landroid/view/View;)V
    .locals 2

    .line 516
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result p1

    .line 517
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setScreenWidth(I)V

    .line 518
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFabAlignment()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    return-void
.end method

.method public onActionModeStateChanged(Z)V
    .locals 0

    .line 1623
    iput-boolean p1, p0, Lcom/android/dialer/app/DialtactsActivity;->isMultiSelectModeEnabled:Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 804
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 805
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "DialtactsActivity.onActivityResult"

    const-string v5, "requestCode:%d, resultCode:%d"

    .line 801
    invoke-static {v2, v5, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    if-ne p1, v4, :cond_2

    if-ne p2, v1, :cond_1

    const-string v0, "android.speech.extra.RESULTS"

    .line 809
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 811
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mVoiceSearchQuery:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "voice search - nothing heard"

    .line 813
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "voice search failed"

    .line 816
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_4

    if-ne p2, v4, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "returned from call composer, error occurred"

    .line 820
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f11009b

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "contact_name"

    .line 825
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 823
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/DialtactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v1, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "returned from call composer, no error"

    .line 828
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    const-string v0, "has_enriched_call_data"

    .line 833
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "phone_number"

    .line 834
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    .line 836
    iget-object v2, p0, Lcom/android/dialer/app/DialtactsActivity;->mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v3, 0x7f110212

    invoke-virtual {p0, v3}, Lcom/android/dialer/app/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f1104f5

    new-instance v3, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$3nnAVFsmWm280JCkdMo_FmKDc5I;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$3nnAVFsmWm280JCkdMo_FmKDc5I;-><init>(Lcom/android/dialer/app/DialtactsActivity;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 840
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 844
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/util/TransactionSafeActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "DialtactsActivity.onAttachFragment"

    const-string v2, "fragment: %s"

    .line 686
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    instance-of v0, p1, Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 688
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/dialpad/DialpadFragment;

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 689
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mShowDialpadOnResume:Z

    if-nez v0, :cond_4

    .line 690
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 692
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 694
    :cond_0
    instance-of v0, p1, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v0, :cond_1

    .line 695
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    .line 696
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    .line 697
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 698
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->setAddToContactNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    instance-of v0, p1, Lcom/android/dialer/app/list/SearchFragment;

    if-eqz v0, :cond_2

    .line 701
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/list/RegularSearchFragment;

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/app/list/RegularSearchFragment;

    .line 702
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 703
    :cond_2
    instance-of v0, p1, Lcom/android/dialer/app/list/ListsFragment;

    if-eqz v0, :cond_3

    .line 704
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/app/list/ListsFragment;

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    .line 705
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/list/ListsFragment;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 706
    :cond_3
    instance-of v0, p1, Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    if-eqz v0, :cond_4

    .line 707
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    iput-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mNewSearchFragment:Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    .line 709
    :cond_4
    :goto_0
    instance-of v0, p1, Lcom/android/dialer/app/list/SearchFragment;

    if-eqz v0, :cond_5

    .line 710
    check-cast p1, Lcom/android/dialer/app/list/SearchFragment;

    .line 711
    new-instance v0, Lcom/android/dialer/app/DialtactsActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/app/DialtactsActivity$8;-><init>(Lcom/android/dialer/app/DialtactsActivity;Lcom/android/dialer/app/list/SearchFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/SearchFragment;->setReranker(Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;)V

    .line 721
    new-instance v0, Lcom/android/dialer/app/DialtactsActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/app/DialtactsActivity$9;-><init>(Lcom/android/dialer/app/DialtactsActivity;Lcom/android/dialer/app/list/SearchFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/SearchFragment;->addOnLoadFinishedListener(Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;)V

    :cond_5
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1314
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->PRESS_ANDROID_BACK_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 1316
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mStateSaved:Z

    if-eqz v0, :cond_0

    return-void

    .line 1319
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v0, :cond_4

    .line 1322
    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    .line 1323
    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1324
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->exitSearchUi()V

    goto :goto_0

    .line 1327
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1328
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->exitSearchUi()V

    .line 1329
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 1331
    :cond_3
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onBackPressed()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 740
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f090169

    if-ne v0, v3, :cond_0

    .line 742
    iget-boolean p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    if-nez p1, :cond_3

    .line 743
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->OPEN_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 744
    iput-boolean v2, p0, Lcom/android/dialer/app/DialtactsActivity;->mInCallDialpadUp:Z

    .line 745
    invoke-direct {p0, v1}, Lcom/android/dialer/app/DialtactsActivity;->showDialpadFragment(Z)V

    .line 746
    invoke-static {}, Lcom/android/dialer/postcall/PostCall;->closePrompt()V

    goto :goto_0

    :cond_0
    const v3, 0x7f09034f

    if-ne v0, v3, :cond_1

    .line 750
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/dialer/app/DialtactsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f110504

    .line 754
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 756
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v1, 0x7f090138

    if-ne v0, v1, :cond_2

    .line 759
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 761
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected onClick event from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "DialtactsActivity onCreate"

    .line 414
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 415
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFirstLaunch:Z

    .line 418
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v1

    const-string v2, "last_tab_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->isLastTabEnabled:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070050

    .line 421
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarHeight:I

    const-string v1, "DialtactsActivity setContentView"

    .line 423
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const v1, 0x7f0c007a

    .line 424
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/DialtactsActivity;->setContentView(I)V

    .line 425
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 426
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "DialtactsActivity setup Views"

    .line 428
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->getActionBarSafely()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const v4, 0x7f0c00f9

    .line 430
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 431
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 432
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f09029a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/widget/SearchEditTextLayout;

    .line 436
    iget-object v4, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v4}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setPreImeKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 438
    new-instance v4, Lcom/android/dialer/app/widget/ActionBarController;

    invoke-direct {v4, p0, v1}, Lcom/android/dialer/app/widget/ActionBarController;-><init>(Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    iput-object v4, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    const v4, 0x7f090299

    .line 440
    invoke-virtual {v1, v4}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    .line 441
    iget-object v5, p0, Lcom/android/dialer/app/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v4, 0x7f09034f

    .line 442
    invoke-virtual {v1, v4}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/app/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    const v4, 0x7f09028c

    .line 444
    invoke-virtual {v1, v4}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 445
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    new-instance v4, Lcom/android/dialer/app/DialtactsActivity$6;

    invoke-direct {v4, p0}, Lcom/android/dialer/app/DialtactsActivity$6;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    invoke-virtual {v1, v4}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setCallback(Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsLandscape:Z

    .line 462
    iput v3, p0, Lcom/android/dialer/app/DialtactsActivity;->mPreviouslySelectedTabIndex:I

    const v0, 0x7f090169

    .line 464
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 465
    invoke-virtual {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    new-instance v3, Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    iput-object v3, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const v3, 0x7f090138

    .line 470
    invoke-virtual {v1, v3}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 471
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/DialtactsActivity;->buildOptionsMenu(Landroid/view/View;)Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/app/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 473
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-nez p1, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f090136

    new-instance v3, Lcom/android/dialer/app/list/ListsFragment;

    invoke-direct {v3}, Lcom/android/dialer/app/list/ListsFragment;-><init>()V

    const-string v4, "favorites"

    .line 480
    invoke-virtual {p1, v1, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1

    :cond_1
    const-string v1, "search_query"

    .line 483
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    const-string v1, "in_regular_search_ui"

    .line 484
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mInRegularSearch:Z

    const-string v1, "in_dialpad_search_ui"

    .line 485
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mInDialpadSearch:Z

    const-string v1, "first_launch"

    .line 486
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFirstLaunch:Z

    const-string/jumbo v1, "was_configuration_change"

    .line 487
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mWasConfigurationChange:Z

    const-string v1, "is_dialpad_shown"

    .line 488
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mShowDialpadOnResume:Z

    .line 489
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    invoke-virtual {v1, p1}, Lcom/android/dialer/app/widget/ActionBarController;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 492
    :goto_1
    invoke-static {}, Lcom/android/dialer/util/ViewUtil;->isRtl()Z

    move-result p1

    .line 493
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsLandscape:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_2

    const v1, 0x7f010021

    goto :goto_2

    :cond_2
    const v1, 0x7f010022

    .line 495
    :goto_2
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz p1, :cond_3

    const p1, 0x7f010024

    goto :goto_3

    :cond_3
    const p1, 0x7f010025

    .line 498
    :goto_3
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto :goto_4

    :cond_4
    const p1, 0x7f010020

    .line 501
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    const p1, 0x7f010023

    .line 502
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    .line 505
    :goto_4
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/dialer/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 506
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 508
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideInListener:Lcom/android/dialer/animation/AnimationListenerAdapter;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 509
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOutListener:Lcom/android/dialer/animation/AnimationListenerAdapter;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p1, 0x7f090137

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 512
    new-instance v1, Lcom/android/dialer/app/DialtactsActivity$LayoutOnDragListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/app/DialtactsActivity$LayoutOnDragListener;-><init>(Lcom/android/dialer/app/DialtactsActivity;Lcom/android/dialer/app/DialtactsActivity$1;)V

    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 513
    new-instance p1, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$qspPHQuAMMKLS5_020asvyo84cA;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/-$$Lambda$DialtactsActivity$qspPHQuAMMKLS5_020asvyo84cA;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    invoke-static {v0, p1}, Lcom/android/dialer/util/ViewUtil;->doOnGlobalLayout(Landroid/view/View;Lcom/android/dialer/util/ViewUtil$ViewRunnable;)V

    .line 521
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "DialtactsActivity initialize smart dialing"

    .line 523
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 524
    invoke-static {p0}, Lcom/android/dialer/database/Database;->get(Landroid/content/Context;)Lcom/android/dialer/database/DatabaseBindings;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/dialer/database/DatabaseBindings;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 525
    invoke-static {p0}, Lcom/android/dialer/smartdial/SmartDialPrefix;->initializeNanpSettings(Landroid/content/Context;)V

    .line 526
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 528
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/p13n/logging/P13nLogging;->get(Landroid/content/Context;)Lcom/android/dialer/p13n/logging/P13nLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mP13nLogger:Lcom/android/dialer/p13n/logging/P13nLogger;

    .line 529
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/p13n/inference/P13nRanking;->get(Landroid/content/Context;)Lcom/android/dialer/p13n/inference/protocol/P13nRanker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mP13nRanker:Lcom/android/dialer/p13n/inference/protocol/P13nRanker;

    .line 530
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1053
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 1055
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    .line 1057
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    if-eqz p1, :cond_1

    .line 1058
    invoke-virtual {p1}, Lcom/android/dialer/app/widget/ActionBarController;->restoreActionBarOffset()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onDialpadQueryChanged(Ljava/lang/String;)V
    .locals 1

    .line 1361
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadQuery:Ljava/lang/String;

    .line 1362
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->setAddToContactNumber(Ljava/lang/String;)V

    .line 1365
    :cond_0
    sget-object v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/smartdial/SmartDialMap;

    .line 1366
    invoke-static {p1, v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/smartdial/SmartDialMap;)Ljava/lang/String;

    move-result-object p1

    .line 1368
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1372
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1378
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1379
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    :cond_3
    return-void

    .line 1387
    :cond_4
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1388
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->process_quote_emergency_unquote(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public onDialpadShown()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialtactsActivity.onDialpadShown"

    const-string v2, ""

    .line 898
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 906
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->updateSearchFragmentPosition()V

    return-void
.end method

.method public onDialpadSpacerTouchWithEmptyQuery()Z
    .locals 1

    .line 1397
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInDialpadSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v0, :cond_0

    .line 1399
    invoke-virtual {v0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->isShowingPermissionRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDisambigDialogDismissed()V
    .locals 0

    return-void
.end method

.method public onDragFinished(II)V
    .locals 0

    .line 1445
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/ListsFragment;->showRemoveView(Z)V

    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V
    .locals 0

    return-void
.end method

.method public onDragStarted(IILcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V
    .locals 0

    .line 1436
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/ListsFragment;->showRemoveView(Z)V

    return-void
.end method

.method public onDroppedOnRemove()V
    .locals 0

    return-void
.end method

.method public onHomeInActionBarSelected()V
    .locals 0

    .line 1511
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 1705
    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 1709
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/dialer/util/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 1694
    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 1698
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/dialer/util/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onListFragmentScroll(III)V
    .locals 0

    return-void
.end method

.method public onListFragmentScrollStateChange(I)V
    .locals 1

    .line 1409
    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordScrollStateChange(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1412
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {p1}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 767
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isSafeToCommitTransactions()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 771
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901f4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 773
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->OPEN_CALL_HISTORY:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 774
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0901f3

    if-ne p1, v0, :cond_2

    .line 777
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    .line 778
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CLEAR_FREQUENTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {p1, v0, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    return v1

    :cond_2
    const v0, 0x7f0901ef

    if-ne p1, v0, :cond_3

    .line 781
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->handleMenuSettings()V

    .line 782
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->SETTINGS:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {p1, v0, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    return v1

    :cond_3
    const v0, 0x7f0901e6

    if-ne p1, v0, :cond_4

    .line 786
    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->openConferenceUriDialerOr4gConferenceDialer(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "DialtactsActivity.onMenuItemClick"

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity not found. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v1

    :cond_4
    const v0, 0x7f0901f6

    if-ne p1, v0, :cond_5

    .line 793
    invoke-static {p0}, Lcom/android/dialer/main/MainComponent;->get(Landroid/content/Context;)Lcom/android/dialer/main/MainComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/main/MainComponent;->getMain()Lcom/android/dialer/main/Main;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/dialer/main/Main;->createNewUiLauncherShortcut(Landroid/content/Context;)V

    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1144
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 1145
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFirstLaunch:Z

    const/4 v0, 0x0

    .line 1147
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mStateSaved:Z

    .line 1148
    invoke-direct {p0, p1}, Lcom/android/dialer/app/DialtactsActivity;->displayFragment(Landroid/content/Intent;)V

    .line 1150
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1516
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/ListsFragment;->getCurrentTabIndex()I

    move-result p1

    .line 1521
    invoke-static {}, Lcom/android/dialer/util/ViewUtil;->isRtl()Z

    move-result p3

    if-nez p3, :cond_0

    if-nez p1, :cond_0

    .line 1522
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsLandscape:Z

    if-nez v0, :cond_0

    .line 1523
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->onPageScrolled(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 1524
    iget-boolean p3, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsLandscape:Z

    if-nez p3, :cond_1

    .line 1525
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->onPageScrolled(F)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1527
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->onPageScrolled(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1533
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->updateMissedCalls()V

    .line 1534
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/ListsFragment;->getCurrentTabIndex()I

    move-result p1

    .line 1535
    iput p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mPreviouslySelectedTabIndex:I

    .line 1536
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 1537
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/app/DialtactsActivity;->timeTabSelected:J

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 642
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mClearSearchOnPause:Z

    if-eqz v0, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->hideDialpadAndSearchUi()V

    const/4 v0, 0x0

    .line 644
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mClearSearchOnPause:Z

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->commitDialpadFragmentHide()V

    .line 649
    :cond_1
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onPause()V

    return-void
.end method

.method public onPickDataUri(Landroid/net/Uri;ZLcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 1

    const/4 v0, 0x1

    .line 1487
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mClearSearchOnPause:Z

    .line 1488
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mUri:Landroid/net/Uri;

    .line 1489
    invoke-static {p0, p1, p2, p3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/dialer/util/TransactionSafeActivity;Landroid/net/Uri;ZLcom/android/dialer/callintent/CallSpecificAppData;)Lcom/android/dialer/interactions/PhoneNumberInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mPhoneNumberInteraction:Lcom/android/dialer/interactions/PhoneNumberInteraction;

    return-void
.end method

.method public onPickPhoneNumber(Ljava/lang/String;ZLcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1502
    :cond_0
    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    invoke-direct {v0, p1, p3}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    .line 1503
    invoke-virtual {v0, p2}, Lcom/android/dialer/callintent/CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 1505
    invoke-static {p0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 1506
    iput-boolean p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mClearSearchOnPause:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1611
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 1615
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mPhoneNumberInteraction:Lcom/android/dialer/interactions/PhoneNumberInteraction;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_1

    .line 1616
    invoke-virtual {p1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 636
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onRestart()V

    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsRestarting:Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DialtactsActivity.onResume"

    const-string v3, ""

    .line 540
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "DialtactsActivity onResume"

    .line 541
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 542
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onResume()V

    .line 546
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->restartPerformanceRecordingIfARecentCallExist(Landroid/content/Context;)V

    .line 547
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->startRecording()V

    .line 551
    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mStateSaved:Z

    .line 552
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFirstLaunch:Z

    if-eqz v1, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dialer/app/DialtactsActivity;->displayFragment(Landroid/content/Intent;)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mInCallDialpadUp:Z

    if-eqz v1, :cond_2

    .line 556
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInCallDialpadUp:Z

    goto :goto_0

    .line 557
    :cond_2
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mShowDialpadOnResume:Z

    if-eqz v1, :cond_3

    .line 558
    invoke-direct {p0, v0}, Lcom/android/dialer/app/DialtactsActivity;->showDialpadFragment(Z)V

    .line 559
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mShowDialpadOnResume:Z

    goto :goto_0

    .line 561
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mParentLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {p0, v1}, Lcom/android/dialer/postcall/PostCall;->promptUserForMessageIfNecessary(Landroid/app/Activity;Landroid/view/View;)V

    .line 567
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mVoiceSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 568
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    invoke-virtual {v1}, Lcom/android/dialer/app/widget/ActionBarController;->onSearchBoxTapped()V

    .line 569
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/dialer/app/DialtactsActivity;->mVoiceSearchQuery:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 570
    iput-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mVoiceSearchQuery:Ljava/lang/String;

    .line 573
    :cond_4
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsRestarting:Z

    if-eqz v1, :cond_6

    .line 576
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v1, :cond_5

    .line 577
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    sget-object v3, Lcom/android/dialer/logging/ScreenEvent$Type;->DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {v1, v3, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    .line 579
    :cond_5
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsRestarting:Z

    .line 582
    :cond_6
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->prepareVoiceSearchButton()V

    .line 583
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mWasConfigurationChange:Z

    if-nez v1, :cond_7

    .line 584
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/dialer/database/DialerDatabaseHelper;->startSmartDialUpdateThread()V

    .line 586
    :cond_7
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->getFabAlignment()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 588
    iget-boolean v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mFirstLaunch:Z

    if-eqz v1, :cond_b

    .line 590
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "vnd.android.cursor.dir/calls"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 593
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v3, "android.provider.extra.CALL_TYPE_FILTER"

    .line 594
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    .line 595
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/dialer/app/list/ListsFragment;->showTab(I)V

    .line 596
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    sget-object v3, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v1, v3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_1

    .line 598
    :cond_8
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/dialer/app/list/ListsFragment;->showTab(I)V

    goto :goto_1

    .line 600
    :cond_9
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "EXTRA_SHOW_TAB"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 602
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 603
    iget-object v3, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v3}, Lcom/android/dialer/app/list/ListsFragment;->getTabCount()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 607
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->exitSearchUi()V

    .line 608
    iget-object v3, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v3, v1}, Lcom/android/dialer/app/list/ListsFragment;->showTab(I)V

    .line 612
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "EXTRA_CLEAR_NEW_VOICEMAILS"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "clearing all new voicemails"

    .line 613
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->markAllNewVoicemailsAsOld(Landroid/content/Context;)V

    .line 618
    :cond_b
    iput-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFirstLaunch:Z

    .line 620
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->setSearchBoxHint()V

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/app/DialtactsActivity;->timeTabSelected:J

    .line 623
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mP13nLogger:Lcom/android/dialer/p13n/logging/P13nLogger;

    invoke-interface {v0}, Lcom/android/dialer/p13n/logging/P13nLogger;->reset()V

    .line 624
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mP13nRanker:Lcom/android/dialer/p13n/inference/protocol/P13nRanker;

    new-instance v1, Lcom/android/dialer/app/DialtactsActivity$7;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/DialtactsActivity$7;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/p13n/inference/protocol/P13nRanker;->refresh(Lcom/android/dialer/p13n/inference/protocol/P13nRanker$P13nRefreshCompleteListener;)V

    .line 631
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 673
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 674
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    const-string v1, "search_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInRegularSearch:Z

    const-string v1, "in_regular_search_ui"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 676
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mInDialpadSearch:Z

    const-string v1, "in_dialpad_search_ui"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 677
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mFirstLaunch:Z

    const-string v1, "first_launch"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 678
    iget-boolean v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mIsDialpadShown:Z

    const-string v1, "is_dialpad_shown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 679
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isChangingConfigurations()Z

    move-result v0

    const-string/jumbo v1, "was_configuration_change"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 680
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mActionBarController:Lcom/android/dialer/app/widget/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/widget/ActionBarController;->saveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 681
    iput-boolean p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mStateSaved:Z

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 654
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onStop()V

    .line 656
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/dialer/app/DialtactsActivity;->timeTabSelected:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/dialer/app/DialtactsActivity;->HISTORY_TAB_SEEN_TIMEOUT:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 657
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    .line 658
    invoke-virtual {v3}, Lcom/android/dialer/app/list/ListsFragment;->getCurrentTabIndex()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Landroid/app/KeyguardManager;

    .line 662
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/DialtactsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->markMissedCallsAsReadAndRemoveNotifications()V

    .line 665
    :cond_2
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 666
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    .line 667
    invoke-virtual {v1}, Lcom/android/dialer/app/list/ListsFragment;->getCurrentTabIndex()I

    move-result v1

    const-string v2, "last_tab"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 668
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 1

    .line 1563
    invoke-direct {p0}, Lcom/android/dialer/app/DialtactsActivity;->getActionBarSafely()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHideOffset(I)V

    return-void
.end method

.method public setDragDropController(Lcom/android/dialer/app/list/DragDropController;)V
    .locals 1

    .line 1457
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    .line 1458
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->getRemoveView()Lcom/android/dialer/app/list/RemoveView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/RemoveView;->setDragDropController(Lcom/android/dialer/app/list/DragDropController;)V

    return-void
.end method

.method public showAllContactsTab()V
    .locals 2

    .line 1464
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1465
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/ListsFragment;->showTab(I)V

    :cond_0
    return-void
.end method

.method public showDialpad()V
    .locals 1

    const/4 v0, 0x1

    .line 1472
    invoke-direct {p0, v0}, Lcom/android/dialer/app/DialtactsActivity;->showDialpadFragment(Z)V

    return-void
.end method

.method public updateTabUnreadCounts()V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity;->mListsFragment:Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->updateTabUnreadCounts()V

    return-void
.end method
