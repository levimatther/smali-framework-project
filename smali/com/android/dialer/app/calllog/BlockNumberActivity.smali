.class public Lcom/android/dialer/app/calllog/BlockNumberActivity;
.super Lcom/android/dialer/util/TransactionSafeActivity;
.source "BlockNumberActivity.java"

# interfaces
.implements Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;
.implements Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final TAB_INDEX_ALL:I = 0x0

.field private static final TAB_INDEX_ANSWERED:I = 0x1

.field private static final TAB_INDEX_COUNT:I = 0x4

.field private static final TAB_INDEX_DIALED:I = 0x2

.field private static final TAB_INDEX_MISSED:I = 0x3


# instance fields
.field private final MENU_ACTION_DESELECT_ALL:I

.field private final MENU_OPTION_SELECT_ALL:I

.field private TAG:Ljava/lang/String;

.field private contact:Lcom/android/dialer/dialercontact/DialerContact;

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private flag:Z

.field private fragmentManager:Landroid/app/FragmentManager;

.field private intent:Landroid/content/Intent;

.field private mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

.field private mBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallLogAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsResumed:Z

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mTabTitles:[Ljava/lang/String;

.field private mViewPager:Lcom/android/dialer/app/calllog/BlockNumberViewPager;

.field private mViewPagerAdapter:Landroidx/legacy/app/FragmentPagerAdapter;

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

.field private menuInit:Ljava/util/ArrayList;
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

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private tab_all:Landroid/widget/TextView;

.field private tab_dialed:Landroid/widget/TextView;

.field private tab_missed:Landroid/widget/TextView;

.field private tab_received:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/dialer/util/TransactionSafeActivity;-><init>()V

    const-string v0, "BlockNumberActivity"

    .line 65
    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menuInit:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menu:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->flag:Z

    .line 96
    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->MENU_OPTION_SELECT_ALL:I

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->MENU_ACTION_DESELECT_ALL:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mBlockList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/calllog/BlockNumberActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/calllog/BlockNumberActivity;I)I
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/calllog/BlockNumberActivity;)[Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mTabTitles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/dialer/app/calllog/BlockNumberActivity;Lcom/android/dialer/app/calllog/CallLogFragment;)Lcom/android/dialer/app/calllog/CallLogFragment;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    return-object p1
.end method

.method private getRtlPosition(I)I
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRtlPosition: position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private sendScreenViewForChildFragment()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "sendScreenViewForChildFragment: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG_FILTER:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {v0, v1, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public callHistoryDeleted()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "callHistoryDeleted: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menuInit:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void
.end method

.method public convertCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertCursor: cursor.getposition()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public hasCursor(ZI)V
    .locals 3

    .line 135
    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v0, "convertCursor: "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->flag:Z

    .line 139
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v0, "convertCursor: hascursor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v0, 0x7f110009

    const v1, 0x7f11000d

    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    .line 143
    :cond_0
    iput-boolean p2, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->flag:Z

    .line 144
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v0, "convertCursor: !hascursor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menuInit:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p2, p2, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->onOptionMenuDismiss()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onActivityResult$0$BlockNumberActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 446
    invoke-static {p1}, Lcom/android/dialer/app/calllog/IntentProvider;->getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    const-string v1, "has_enriched_call_data"

    .line 441
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone_number"

    .line 442
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900b8

    .line 443
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110212

    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f1104f5

    new-instance v3, Lcom/android/dialer/app/calllog/-$$Lambda$BlockNumberActivity$rjXAC3CuqIcU8JY3kBf-Itr1n3I;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/app/calllog/-$$Lambda$BlockNumberActivity$rjXAC3CuqIcU8JY3kBf-Itr1n3I;-><init>(Lcom/android/dialer/app/calllog/BlockNumberActivity;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 451
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/util/TransactionSafeActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->PRESS_ANDROID_BACK_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 360
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onBackPressed()V

    return-void
.end method

.method public onClickCSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickRSK: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 105
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v0, 0xe

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c0035

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->setContentView(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate2:----- "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 113
    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getIntent()Landroid/content/Intent;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mTabTitles:[Ljava/lang/String;

    const v0, 0x7f1100ce

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 117
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mTabTitles:[Ljava/lang/String;

    const v0, 0x7f1100fe

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 118
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mTabTitles:[Ljava/lang/String;

    const v0, 0x7f1100ff

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    .line 119
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mTabTitles:[Ljava/lang/String;

    const v0, 0x7f1100d9

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p1, v2

    const p1, 0x7f090215

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->textView:Landroid/widget/TextView;

    const p1, 0x7f0900a3

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mViewPager:Lcom/android/dialer/app/calllog/BlockNumberViewPager;

    .line 122
    new-instance p1, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity$ViewPagerAdapter;-><init>(Lcom/android/dialer/app/calllog/BlockNumberActivity;Landroid/app/FragmentManager;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mViewPagerAdapter:Landroidx/legacy/app/FragmentPagerAdapter;

    .line 123
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mViewPager:Lcom/android/dialer/app/calllog/BlockNumberViewPager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 125
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: setadapter"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mViewPager:Lcom/android/dialer/app/calllog/BlockNumberViewPager;

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setOnPageChangeListener(Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mViewPager:Lcom/android/dialer/app/calllog/BlockNumberViewPager;

    const v0, 0x5f5e100

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 159
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "onKeyUp: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->finish()V

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->flag:Z

    if-eqz v0, :cond_11

    .line 168
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 173
    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const v2, 0x7f11000d

    const/16 v3, 0x17

    const/16 v4, 0x42

    const v5, 0x7f110009

    if-eq v4, p1, :cond_2

    if-ne v3, p1, :cond_4

    :cond_2
    if-eqz v0, :cond_4

    .line 179
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v7, "onKeyUp: ischecked 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v6, v6, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->performClick()Z

    .line 181
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v6, v6, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 182
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mBlockList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v7, v7, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mBlockList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v7, v7, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 186
    :cond_3
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v2, v1, v7}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :cond_4
    const v6, 0x7f110008

    const/16 v7, 0x13

    const/16 v8, 0x14

    if-ne v8, p1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    if-ne v7, p1, :cond_7

    if-eqz v0, :cond_7

    .line 191
    :cond_6
    iget-object v9, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v10, "onKeyUp 2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v9, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v10, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {v9, v5, v6, v1, v10}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :cond_7
    if-eq v4, p1, :cond_8

    if-ne v3, p1, :cond_a

    :cond_8
    if-nez v0, :cond_a

    .line 199
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v4, "onKeyUp: !ischecked 3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v3, v3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->performClick()Z

    .line 201
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v3, v3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 202
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mBlockList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v4, v4, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 203
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mBlockList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v4, v4, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_9
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v6, v1, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :cond_a
    if-ne v8, p1, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    if-ne v7, p1, :cond_d

    if-nez v0, :cond_d

    .line 209
    :cond_c
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v3, "onKeyUp: 4"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v2, v1, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :cond_d
    const/4 v0, 0x1

    if-ne v0, p1, :cond_f

    .line 213
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp: mBlockList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mBlockList:Ljava/util/ArrayList;

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 218
    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->finish()V

    .line 225
    :cond_f
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_10
    :goto_1
    return v1

    .line 222
    :cond_11
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 1

    .line 256
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v0, "onOptionMenuClick: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 258
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 260
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->buildContactNew()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 261
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntriesList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->entries:Ljava/util/List;

    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "onOptionMenuDismiss: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged: state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 309
    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageScrolled: position= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mIsResumed:Z

    if-eqz p1, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->sendScreenViewForChildFragment()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mIsResumed:Z

    .line 302
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->restartPerformanceRecordingIfARecentCallExist(Landroid/content/Context;)V

    .line 289
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->startRecording()V

    :cond_0
    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mIsResumed:Z

    .line 293
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->refreshMenuBar()V

    .line 295
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberActivity;->sendScreenViewForChildFragment()V

    return-void
.end method
