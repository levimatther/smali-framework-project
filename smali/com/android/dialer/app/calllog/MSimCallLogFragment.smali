.class public Lcom/android/dialer/app/calllog/MSimCallLogFragment;
.super Landroid/app/Fragment;
.source "MSimCallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/database/CallLogQueryHandler$Listener;
.implements Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;
.implements Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/MSimCallLogFragment$CustomContentObserver;,
        Lcom/android/dialer/app/calllog/MSimCallLogFragment$HostInterface;
    }
.end annotation


# static fields
.field private static final CALL:I = 0x1

.field private static final EVENT_UPDATE_DISPLAY:I = 0x1

.field private static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field private static final KEY_DATE_LIMIT:Ljava/lang/String; = "date_limit"

.field private static final KEY_FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final KEY_HAS_READ_CALL_LOG_PERMISSION:Ljava/lang/String; = "has_read_call_log_permission"

.field private static final KEY_IS_CALL_LOG_ACTIVITY:Ljava/lang/String; = "is_call_log_activity"

.field private static final KEY_LOG_LIMIT:Ljava/lang/String; = "log_limit"

.field private static final KEY_REFRESH_DATA_REQUIRED:Ljava/lang/String; = "refresh_data_required"

.field private static final KEY_SELECT_ALL_MODE:Ljava/lang/String; = "select_all_mode_checked"

.field private static final MILLIS_IN_MINUTE:J = 0xea60L

.field private static final NO_DATE_LIMIT:I = 0x0

.field private static final NO_LOG_LIMIT:I = -0x1

.field private static final PREFERENCE_KEY_CALLLOG_SLOT:Ljava/lang/String; = "call_log_slot"

.field private static final READ_CALL_LOG_PERMISSION_REQUEST_CODE:I = 0x1


# instance fields
.field private mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

.field private mCallSlotFilter:I

.field private mCallTypeFilter:I

.field private mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mDateLimit:J

.field private final mDisplayUpdateHandler:Landroid/os/Handler;

.field private mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

.field private mFilterSlotSpinnerView:Landroid/widget/Spinner;

.field private mFilterStatusSpinnerView:Landroid/widget/Spinner;

.field private final mHandler:Landroid/os/Handler;

.field private mHasReadCallLogPermission:Z

.field private mIsCallLogActivity:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLogLimit:I

.field private mMenuVisible:Z

.field protected mModalAlertManager:Lcom/android/dialer/app/calllog/CallLogModalAlertManager;

.field private mModalAlertView:Landroid/view/ViewGroup;

.field private mMultiSelectUnSelectAllViewContent:Landroid/view/View;

.field private final mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRefreshDataRequired:Z

.field private mScrollToTop:Z

.field private mSelectUnselectAllIcon:Landroid/widget/ImageView;

.field private mSelectUnselectAllViewText:Landroid/widget/TextView;

.field private mSlotSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mStatusSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private selectAllMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 177
    invoke-direct {p0, v0, v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;-><init>(IIJ)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 2

    .line 212
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance p1, Lcom/android/dialer/app/calllog/MSimCallLogFragment$CustomContentObserver;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 113
    new-instance p1, Lcom/android/dialer/app/calllog/MSimCallLogFragment$CustomContentObserver;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 125
    new-instance p1, Lcom/android/dialer/app/calllog/MSimCallLogFragment$1;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$1;-><init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mMenuVisible:Z

    const/4 p1, -0x1

    .line 139
    iput p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    .line 142
    iput p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mLogLimit:I

    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDateLimit:J

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    .line 151
    new-instance v0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$2;-><init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    .line 174
    iput p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallSlotFilter:I

    .line 710
    new-instance p1, Lcom/android/dialer/app/calllog/MSimCallLogFragment$4;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$4;-><init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSlotSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 728
    new-instance p1, Lcom/android/dialer/app/calllog/MSimCallLogFragment$5;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$5;-><init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mStatusSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 213
    iput p2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mLogLimit:I

    .line 214
    iput-wide p3, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDateLimit:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    const/4 v0, -0x1

    .line 201
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;-><init>(IIJ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, -0x1

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;-><init>(II)V

    .line 186
    iput-boolean p2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)Lcom/android/dialer/app/calllog/CallLogAdapter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->refreshData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->rescheduleDisplayUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)Landroid/os/Handler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/dialer/app/calllog/MSimCallLogFragment;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallSlotFilter:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/dialer/app/calllog/MSimCallLogFragment;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallSlotFilter:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/dialer/app/calllog/MSimCallLogFragment;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->setSelectedSlotId(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/dialer/app/calllog/MSimCallLogFragment;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    return p1
.end method

.method private cancelDisplayUpdate()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getSelectedSlotId()I
    .locals 3

    .line 786
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "call_log_slot"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private refreshData()V
    .locals 2

    .line 548
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->invalidate()V

    .line 552
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->setLoading(Z)V

    .line 554
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->fetchCalls()V

    .line 555
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 556
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchMissedCallsUnreadCount()V

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private rescheduleDisplayUpdate()V
    .locals 6

    .line 593
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    .line 597
    rem-long/2addr v2, v4

    sub-long/2addr v4, v2

    .line 598
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setSelectedSlotId(I)V
    .locals 2

    .line 795
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "call_log_slot"

    .line 796
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateEmptyMessage(I)V
    .locals 3

    .line 490
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 495
    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v0, 0x7f11039a

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 497
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v0, 0x7f1103a0

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const v1, 0x7f1100df

    goto :goto_0

    .line 519
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected filter type in MSimCallLogFragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const v1, 0x7f1100d7

    goto :goto_0

    :cond_4
    const v1, 0x7f1103de

    goto :goto_0

    :cond_5
    const v1, 0x7f1103dd

    goto :goto_0

    :cond_6
    const v1, 0x7f1100cc

    .line 522
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v2, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 523
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    if-eqz v1, :cond_7

    .line 524
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    goto :goto_1

    :cond_7
    if-ne p1, v0, :cond_8

    .line 526
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v0, 0x7f1100cd

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private updateFilterSpinnerViews()V
    .locals 6

    .line 749
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterSlotSpinnerView:Landroid/widget/Spinner;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    goto :goto_1

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x8

    const v4, 0x7f0c00c3

    if-ge v0, v2, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterSlotSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0

    .line 760
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 761
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 762
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/dialer/app/calllog/SpinnerContent;->setupSlotFilterContent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 763
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v5, 0x1

    if-gt v2, v5, :cond_2

    .line 764
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterSlotSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0

    .line 766
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getSelectedSlotId()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallSlotFilter:I

    .line 767
    iget-object v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterSlotSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 768
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterSlotSpinnerView:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSlotSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 769
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterSlotSpinnerView:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallSlotFilter:I

    invoke-static {v0, v2}, Lcom/android/dialer/app/calllog/SpinnerContent;->setSpinnerContentValue(Landroid/widget/Spinner;I)V

    .line 773
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 774
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 775
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/dialer/app/calllog/SpinnerContent;->setupStatusFilterContent(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 776
    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 777
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mStatusSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 778
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-static {v0, v1}, Lcom/android/dialer/app/calllog/SpinnerContent;->setSpinnerContentValue(Landroid/widget/Spinner;I)V

    return-void

    .line 751
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The filter spinner view is null!"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateSelectAllIcon()V
    .locals 3

    .line 680
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->selectAllMode:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    .line 682
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 681
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onAllSelected()V

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    .line 686
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 685
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onAllDeselected()V

    :goto_0
    return-void
.end method

.method private updateSelectAllState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "select_all_mode_checked"

    .line 390
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->updateSelectAllIcon()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 5

    .line 469
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterSlotSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallSlotFilter:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallSlotFilter:I

    .line 472
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    iget v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    iget-wide v3, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDateLimit:J

    .line 475
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchCalls(IJLjava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    iget-wide v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDateLimit:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchCalls(IJ)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    iget-wide v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDateLimit:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchCalls(IJ)V

    .line 483
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    if-nez v0, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/ListsFragment;->updateTabUnreadCounts()V

    .line 486
    :cond_3
    iget v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->updateEmptyMessage(I)V

    return-void
.end method

.method public getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    return-object v0
.end method

.method protected getVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 382
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->setupData()V

    .line 384
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->updateSelectAllState(Landroid/os/Bundle;)V

    .line 385
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->invalidatePositions()V

    .line 258
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->setLoading(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    if-eqz p1, :cond_1

    .line 263
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingStart()I

    move-result v0

    iget-object v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 268
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    .line 264
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 269
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingStart()I

    move-result v0

    iget-object v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingEnd()I

    move-result v2

    .line 271
    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 273
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p1, v1}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 275
    :goto_0
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mScrollToTop:Z

    if-eqz p1, :cond_3

    .line 282
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_2

    .line 284
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 288
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$3;-><init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mScrollToTop:Z

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 670
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->selectAllMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->selectAllMode:Z

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_UNSELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 676
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->updateSelectAllIcon()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 219
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MSimCallLogFragment.onCreate"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    if-eqz p1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getSelectedSlotId()I

    move-result v2

    const-string v3, "filter_type"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    .line 224
    iget v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mLogLimit:I

    const-string v3, "log_limit"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mLogLimit:I

    .line 225
    iget-wide v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDateLimit:J

    const-string v4, "date_limit"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDateLimit:J

    .line 226
    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    const-string v3, "is_call_log_activity"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    const-string v2, "has_read_call_log_permission"

    .line 227
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mHasReadCallLogPermission:Z

    .line 228
    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    const-string v3, "refresh_data_required"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 233
    new-instance v3, Lcom/android/dialer/database/CallLogQueryHandler;

    iget v4, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mLogLimit:I

    invoke-direct {v3, p1, v2, p0, v4}, Lcom/android/dialer/database/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;I)V

    iput-object v3, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    const-string v3, "keyguard"

    .line 234
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 236
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasCallLogReadPermissions(Landroid/content/Context;)Z

    move-result p1

    const-string v3, "CallLogFragment.onCreate"

    if-eqz p1, :cond_1

    .line 237
    sget-object p1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, p1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v4, "call log permission not available"

    .line 239
    invoke-static {v3, v4, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    sget-object p1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "contacts permission not available."

    .line 245
    invoke-static {v3, v1, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00c1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->setupView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 446
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MSimCallLogFragment.onDestroy"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 451
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 3

    .line 566
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 571
    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 572
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/legacy/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    goto :goto_0

    .line 574
    :cond_1
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    if-nez v1, :cond_2

    .line 576
    check-cast v0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$HostInterface;

    invoke-interface {v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$HostInterface;->showDialpad()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onNotVisible()V
    .locals 1

    const-string v0, "CallLogFragment.onPageUnselected"

    .line 618
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 431
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MSimCallLogFragment.onPause"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->cancelDisplayUpdate()V

    .line 433
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onPause()V

    .line 434
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 584
    array-length p1, p3

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 586
    iput-boolean p2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 404
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MSimCallLogFragment.onResume"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 407
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 408
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mHasReadCallLogPermission:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 412
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    .line 413
    iget v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->updateEmptyMessage(I)V

    .line 416
    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mHasReadCallLogPermission:Z

    .line 422
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->clearFilteredNumbersCache()V

    .line 423
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->refreshData()V

    .line 424
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onResume()V

    .line 426
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->rescheduleDisplayUpdate()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 456
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 457
    iget v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    const-string v1, "filter_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    iget v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mLogLimit:I

    const-string v1, "log_limit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    iget-wide v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mDateLimit:J

    const-string v2, "date_limit"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 460
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    const-string v1, "is_call_log_activity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mHasReadCallLogPermission:Z

    const-string v1, "has_read_call_log_permission"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    const-string v1, "refresh_data_required"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 463
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->selectAllMode:Z

    const-string v1, "select_all_mode_checked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onShowModalAlert(Z)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 626
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 628
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getUserVisibleHint()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "MSimCallLogFragment.onShowModalAlert"

    const-string v4, "show: %b, fragment: %s, isVisible: %b"

    .line 623
    invoke-static {v3, v4, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 630
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$HostInterface;

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    .line 632
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 633
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mModalAlertView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 635
    invoke-interface {v0, v2}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$HostInterface;->enableFloatingButton(Z)V

    goto :goto_0

    .line 638
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 639
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mModalAlertView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 641
    invoke-interface {v0, v1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$HostInterface;->enableFloatingButton(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 439
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 440
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onStop()V

    .line 441
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->stop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 398
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 399
    iget p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->updateEmptyMessage(I)V

    return-void
.end method

.method public onVisible()V
    .locals 2

    const-string v0, "CallLogFragment.onPageSelected"

    .line 609
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 611
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$HostInterface;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mModalAlertManager:Lcom/android/dialer/app/calllog/CallLogModalAlertManager;

    if-eqz v1, :cond_1

    .line 612
    invoke-virtual {v1}, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment$HostInterface;->enableFloatingButton(Z)V

    :cond_2
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public setFilterType(I)V
    .locals 0

    .line 800
    iput p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 536
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 537
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 538
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->refreshData()V

    :cond_0
    return-void
.end method

.method public setSelectAllModeToFalse()V
    .locals 3

    const/4 v0, 0x0

    .line 656
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->selectAllMode:Z

    .line 657
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    .line 658
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setupData()V
    .locals 13

    .line 343
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->updateFilterSpinnerViews()V

    .line 344
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mIsCallLogActivity:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v12, v0

    goto :goto_0

    :cond_0
    move v12, v1

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v2, Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    .line 352
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v3}, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;->attach(Landroidx/appcompat/app/AppCompatActivity;)Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;

    move-result-object v3

    .line 353
    invoke-virtual {v3}, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;->getRetainedCache()Lcom/android/dialer/util/ExpirableCache;

    move-result-object v3

    new-instance v4, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    .line 354
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;-><init>(Lcom/android/dialer/util/ExpirableCache;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;)V

    iput-object v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    .line 357
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/app/Bindings;->getLegacy(Landroid/content/Context;)Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    move-result-object v2

    .line 359
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v12, v1, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    new-instance v8, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    .line 366
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    .line 368
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object v10

    new-instance v11, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    .line 369
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    move-object v5, p0

    move-object v6, p0

    .line 358
    invoke-interface/range {v2 .. v12}, Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;->newCallLogAdapter(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/contactinfo/ContactInfoCache;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;I)Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    .line 371
    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->fetchCalls()V

    return-void
.end method

.method protected setupView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090260

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 322
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 323
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 324
    iget-object v1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f090148

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/EmptyContentView;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0800c2

    .line 326
    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 327
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    const v0, 0x7f090207

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mModalAlertView:Landroid/view/ViewGroup;

    .line 329
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;

    .line 330
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mModalAlertView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mModalAlertManager:Lcom/android/dialer/app/calllog/CallLogModalAlertManager;

    const v0, 0x7f09020f

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    const v0, 0x7f0902a4

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSelectUnselectAllViewText:Landroid/widget/TextView;

    const v0, 0x7f0902a3

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    .line 335
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mSelectUnselectAllViewText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090166

    .line 338
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterSlotSpinnerView:Landroid/widget/Spinner;

    const v0, 0x7f090165

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    return-void
.end method

.method public showMultiSelectRemoveView(Z)V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 650
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 651
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/list/ListsFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/list/ListsFragment;->showMultiSelectRemoveView(Z)V

    return-void
.end method

.method public tapSelectAll()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallLogFragment.tapSelectAll"

    const-string v2, "imitating select all"

    .line 663
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->selectAllMode:Z

    .line 665
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->updateSelectAllIcon()V

    return-void
.end method
