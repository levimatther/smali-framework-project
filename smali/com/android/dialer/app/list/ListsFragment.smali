.class public Lcom/android/dialer/app/list/ListsFragment;
.super Landroid/app/Fragment;
.source "ListsFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/android/dialer/database/CallLogQueryHandler$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListsFragment"


# instance fields
.field private actionTypeList:[Lcom/android/dialer/logging/UiAction$Type;

.field private mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

.field private mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

.field private mCurrentPage:Landroid/app/Fragment;

.field private mHasFetchedVoicemailStatus:Z

.field private final mOnPageChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRemoveView:Lcom/android/dialer/app/list/RemoveView;

.field private mRemoveViewContent:Landroid/view/View;

.field private mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

.field private mTabIndex:I

.field private mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

.field private mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

.field private final mVoicemailStatusObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mTabIndex:I

    .line 87
    new-instance v0, Lcom/android/dialer/app/list/ListsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/list/ListsFragment$1;-><init>(Lcom/android/dialer/app/list/ListsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/list/ListsFragment;)Lcom/android/dialer/database/CallLogQueryHandler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    return-object p0
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getCurrentTabIndex()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mTabIndex:I

    return v0
.end method

.method public getRemoveView()Lcom/android/dialer/app/list/RemoveView;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mRemoveView:Lcom/android/dialer/app/list/RemoveView;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public hasFrequents()Z
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getRtlPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 404
    instance-of v1, v0, Lcom/android/dialer/app/list/OldSpeedDialFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/dialer/app/list/OldSpeedDialFragment;

    .line 405
    invoke-virtual {v0}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->hasFrequents()Z

    move-result v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/dialer/speeddial/SpeedDialFragment;

    .line 406
    invoke-virtual {v0}, Lcom/android/dialer/speeddial/SpeedDialFragment;->hasFrequents()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public markMissedCallsAsReadAndRemoveNotifications()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 387
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->cancelAllMissedCalls(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ListsFragment.onCreate"

    const/4 v2, 0x0

    .line 98
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ListsFragment onCreate"

    .line 99
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 102
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "ListsFragment.onCreateView"

    const/4 v2, 0x0

    .line 149
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ListsFragment onCreateView"

    .line 150
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "ListsFragment inflate view"

    .line 151
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const v0, 0x7f0c00bb

    .line 152
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p2, "ListsFragment setup views"

    .line 154
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p2, 0x4

    new-array v0, p2, [Lcom/android/dialer/logging/UiAction$Type;

    .line 156
    iput-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->actionTypeList:[Lcom/android/dialer/logging/UiAction$Type;

    .line 157
    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_FAVORITE:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v0, p3

    .line 158
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->actionTypeList:[Lcom/android/dialer/logging/UiAction$Type;

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_CALL_LOG:Lcom/android/dialer/logging/UiAction$Type;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 159
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->actionTypeList:[Lcom/android/dialer/logging/UiAction$Type;

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_CONTACTS:Lcom/android/dialer/logging/UiAction$Type;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 160
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->actionTypeList:[Lcom/android/dialer/logging/UiAction$Type;

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_VOICEMAIL:Lcom/android/dialer/logging/UiAction$Type;

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v0, p2, [Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f110497

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p3

    .line 164
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f110496

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 165
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f110494

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 166
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f11049c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-array p2, p2, [I

    .line 168
    fill-array-data p2, :array_0

    const v2, 0x7f0901d2

    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/list/DialerViewPager;

    iput-object v2, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    .line 175
    new-instance v2, Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    .line 177
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 178
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/app/list/ListsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "has_active_voicemail_provider"

    .line 180
    invoke-interface {v7, v8, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v2, v4, v6, v0, v7}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;[Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    .line 182
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    invoke-virtual {v0, v2}, Lcom/android/dialer/app/list/DialerViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    invoke-virtual {v0, v5}, Lcom/android/dialer/app/list/DialerViewPager;->setOffscreenPageLimit(I)V

    .line 184
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    invoke-virtual {v0, p0}, Lcom/android/dialer/app/list/DialerViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 185
    invoke-virtual {p0, p3}, Lcom/android/dialer/app/list/ListsFragment;->showTab(I)V

    const v0, 0x7f0901d3

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ViewPagerTabs;

    iput-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    .line 188
    invoke-virtual {v0, p2}, Lcom/android/contacts/common/list/ViewPagerTabs;->configureTabIcons([I)V

    .line 189
    iget-object p2, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 190
    iget-object p2, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {p0, p2}, Lcom/android/dialer/app/list/ListsFragment;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p2, 0x7f090263

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/app/list/RemoveView;

    iput-object p2, p0, Lcom/android/dialer/app/list/ListsFragment;->mRemoveView:Lcom/android/dialer/app/list/RemoveView;

    const p2, 0x7f090264

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/app/list/ListsFragment;->mRemoveViewContent:Landroid/view/View;

    .line 194
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/util/PermissionsUtil;->hasReadVoicemailPermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/util/PermissionsUtil;->hasAddVoicemailPermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 197
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    .line 198
    invoke-virtual {p2, p3, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "no voicemail read permissions"

    .line 201
    invoke-static {v1, p3, p2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 205
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f0801c6
        0x7f0801ec
        0x7f0801dd
        0x7f0801fa
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/ListsFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 143
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    invoke-virtual {v0, p0}, Lcom/android/dialer/app/list/DialerViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 356
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->setUnreadCount(II)V

    .line 357
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->updateTab(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 353
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 354
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getRtlPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mTabIndex:I

    .line 243
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->actionTypeList:[Lcom/android/dialer/logging/UiAction$Type;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ListsFragment.onPageSelected"

    const-string v3, "position: %d"

    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getRtlPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mTabIndex:I

    .line 257
    iput-boolean v2, p0, Lcom/android/dialer/app/list/ListsFragment;->mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

    .line 259
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/dialer/app/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->sendScreenViewForCurrentPosition()V

    .line 265
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCurrentPage:Landroid/app/Fragment;

    instance-of v1, v0, Lcom/android/dialer/app/calllog/CallLogFragment;

    if-eqz v1, :cond_1

    .line 266
    check-cast v0, Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onNotVisible()V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mCurrentPage:Landroid/app/Fragment;

    .line 269
    instance-of v0, p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    if-eqz v0, :cond_2

    .line 270
    check-cast p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->onVisible()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ListsFragment.onPause"

    const/4 v2, 0x0

    .line 131
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCurrentPage:Landroid/app/Fragment;

    instance-of v1, v0, Lcom/android/dialer/app/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onNotVisible()V

    .line 135
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ListsFragment.onResume"

    const/4 v3, 0x0

    .line 107
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "ListsFragment onResume"

    .line 108
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 111
    iput-boolean v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mPaused:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->sendScreenViewForCurrentPosition()V

    .line 118
    :cond_0
    new-instance v0, Lcom/android/dialer/database/CallLogQueryHandler;

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/dialer/database/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    .line 120
    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 121
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchMissedCallsUnreadCount()V

    .line 122
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 123
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    iget-object v1, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    invoke-virtual {v1}, Lcom/android/dialer/app/list/DialerViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCurrentPage:Landroid/app/Fragment;

    .line 124
    instance-of v1, v0, Lcom/android/dialer/app/calllog/CallLogFragment;

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onVisible()V

    :cond_1
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mHasFetchedVoicemailStatus:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/dialer/app/list/ListsFragment;->mPaused:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->Activity:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    .line 290
    invoke-static {v1, p1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler;->maybeFixVoicemailStatus(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;)V

    .line 295
    invoke-static {p1}, Lcom/android/dialer/voicemailstatus/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 296
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider()Z

    move-result p1

    const/4 v2, 0x3

    if-eq v0, p1, :cond_3

    .line 297
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->setHasActiveVoicemailProvider(Z)V

    .line 298
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->notifyDataSetChanged()V

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v3, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TAB_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 302
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->updateTab(I)V

    goto :goto_1

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->removeTab(I)V

    .line 305
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->removeVoicemailFragment(Landroid/app/FragmentManager;)V

    .line 308
    :goto_1
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 309
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "has_active_voicemail_provider"

    .line 310
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 313
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    if-eqz v0, :cond_4

    .line 317
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {p1}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailUnreadCount()V

    .line 320
    :cond_4
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

    if-eqz p1, :cond_5

    .line 321
    iput-boolean v1, p0, Lcom/android/dialer/app/list/ListsFragment;->mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

    .line 322
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/list/ListsFragment;->showTab(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 339
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->setUnreadCount(II)V

    .line 340
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->updateTab(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 337
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public sendScreenViewForCurrentPosition()V
    .locals 3

    .line 418
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getCurrentTabIndex()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 434
    :cond_1
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->VOICEMAIL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

    goto :goto_0

    .line 431
    :cond_2
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->ALL_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    goto :goto_0

    .line 428
    :cond_3
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

    goto :goto_0

    .line 425
    :cond_4
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->SPEED_DIAL:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 439
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    return-void
.end method

.method public showMultiSelectRemoveView(Z)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/DialerViewPager;->setEnableSwipingPages(Z)V

    return-void
.end method

.method public showRemoveView(Z)V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mRemoveViewContent:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mRemoveView:Lcom/android/dialer/app/list/RemoveView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/dialer/app/list/RemoveView;->setAlpha(F)V

    .line 394
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mRemoveView:Lcom/android/dialer/app/list/RemoveView;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/RemoveView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public showTab(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 228
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    iget-object v1, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getRtlPosition(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/list/DialerViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-boolean p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mHasFetchedVoicemailStatus:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Lcom/android/dialer/app/list/ListsFragment;->mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/list/ListsFragment;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mViewPager:Lcom/android/dialer/app/list/DialerViewPager;

    iget-object v1, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->getRtlPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/DialerViewPager;->setCurrentItem(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateTabUnreadCounts()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchMissedCallsUnreadCount()V

    .line 377
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mAdapter:Lcom/android/dialer/app/list/DialtactsPagerAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/DialtactsPagerAdapter;->hasActiveVoicemailProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/dialer/app/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailUnreadCount()V

    :cond_0
    return-void
.end method
