.class public Lcom/android/dialer/app/calllog/CallLogFragment;
.super Landroid/app/Fragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/database/CallLogQueryHandler$Listener;
.implements Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;
.implements Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;,
        Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;,
        Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;,
        Lcom/android/dialer/app/calllog/CallLogFragment$HostInterface;
    }
.end annotation


# static fields
.field private static final EVENT_UPDATE_DISPLAY:I = 0x1

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

.field private static final PHONE_PERMISSIONS_REQUEST_CODE:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field public hasCursor:Z

.field public isVisible:Z

.field private listterner:Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;

.field private mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

.field private mCallTypeFilter:I

.field private mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mDateLimit:J

.field private final mDisplayUpdateHandler:Landroid/os/Handler;

.field private mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

.field private final mHandler:Landroid/os/Handler;

.field private mHasReadCallLogPermission:Z

.field private mHost:Lcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;

.field private mIsCallLogActivity:Z

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLogLimit:I

.field private mMenuVisible:Z

.field protected mModalAlertManager:Lcom/android/dialer/app/calllog/CallLogModalAlertManager;

.field private mModalAlertView:Landroid/view/ViewGroup;

.field private mMultiSelectUnSelectAllViewContent:Landroid/view/View;

.field private final mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

.field public mPosition:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRefreshDataRequired:Z

.field private mScrollToTop:Z

.field private mSelectUnselectAllIcon:Landroid/widget/ImageView;

.field private mSelectUnselectAllViewText:Landroid/widget/TextView;

.field private mcontext:Landroid/content/Context;

.field private selectAllMode:Z

.field public swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public view:Landroid/view/View;

.field private viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 200
    invoke-direct {p0, v0, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 213
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IIJ)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 3

    .line 235
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "CallLogFragment"

    .line 93
    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 122
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 135
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogFragment$1;-><init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mMenuVisible:Z

    const/4 v1, -0x1

    .line 149
    iput v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 152
    iput v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mLogLimit:I

    const-wide/16 v1, 0x0

    .line 155
    iput-wide v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDateLimit:J

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->hasCursor:Z

    .line 171
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogFragment$2;-><init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    .line 236
    iput p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 237
    iput p2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mLogLimit:I

    .line 238
    iput-wide p3, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDateLimit:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    const/4 v0, -0x1

    .line 224
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IIJ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, -0x1

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(II)V

    .line 209
    iput-boolean p2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    return-void
.end method

.method public constructor <init>(IZLcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;)V
    .locals 1

    const/4 v0, -0x1

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(II)V

    .line 244
    iput-boolean p2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    .line 245
    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHost:Lcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/calllog/CallLogFragment;)Lcom/android/dialer/app/calllog/CallLogAdapter;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/calllog/CallLogFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->refreshData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/app/calllog/CallLogFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->rescheduleDisplayUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/app/calllog/CallLogFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/dialer/app/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/dialer/app/calllog/CallLogFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method private cancelDisplayUpdate()V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private refreshData()V
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "refreshData: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->invalidate()V

    .line 771
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->setLoading(Z)V

    .line 773
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->fetchCalls()V

    .line 774
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 775
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchMissedCallsUnreadCount()V

    const/4 v0, 0x0

    .line 776
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private rescheduleDisplayUpdate()V
    .locals 6

    .line 819
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "rescheduleDisplayUpdate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    .line 824
    rem-long/2addr v2, v4

    sub-long/2addr v4, v2

    .line 825
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private updateEmptyMessage(I)V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEmptyMessage: filterType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.permission.READ_CALL_LOG"

    .line 714
    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v0, 0x7f11039a

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 716
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v0, 0x7f1103a0

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const v1, 0x7f110346

    goto :goto_0

    .line 734
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected filter type in CallLogFragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const v1, 0x7f1100d1

    .line 737
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v2, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 738
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 739
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v0, 0x7f080182

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 740
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p1, v2}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    .line 742
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v0, 0x7f1100cd

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    goto :goto_1

    .line 744
    :cond_5
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p1, v2}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    :goto_1
    return-void
.end method

.method private updateSelectAllIcon()V
    .locals 3

    .line 907
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->selectAllMode:Z

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    .line 909
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 908
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 910
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onAllSelected()V

    goto :goto_0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    .line 913
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 912
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;

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

    .line 579
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->updateSelectAllIcon()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 4

    .line 700
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "fetchCalls: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    iget-wide v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDateLimit:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchCalls(IJ)V

    return-void
.end method

.method public getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getContentView()Lcom/android/dialer/widget/EmptyContentView;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected getVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 572
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->setupData()V

    .line 573
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->updateSelectAllState(Landroid/os/Bundle;)V

    .line 574
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 393
    instance-of v0, p1, Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;

    if-eqz v0, :cond_0

    .line 394
    check-cast p1, Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->listterner:Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;

    .line 395
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v0, "onAttach: instanceof"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "activity must implements FragmentInteraction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 5

    .line 289
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCallsFetched: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getView()Landroid/view/View;

    .line 292
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->invalidatePositions()V

    .line 300
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->setLoading(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 305
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallsFetched: cursor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->listterner:Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;

    iget-boolean v3, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->hasCursor:Z

    iget v4, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-interface {v2, v3, v4}, Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;->hasCursor(ZI)V

    .line 319
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->listterner:Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;

    invoke-interface {v2, p1}, Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;->convertCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCallsFetched: mEmptyListView--"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {p1, v1}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->listterner:Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;

    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->hasCursor:Z

    xor-int/2addr v2, v0

    iget v3, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-interface {p1, v2, v3}, Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;->hasCursor(ZI)V

    .line 340
    :goto_0
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz p1, :cond_3

    .line 348
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_2

    .line 350
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/dialer/app/calllog/CallLogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/calllog/CallLogFragment$3;-><init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mScrollToTop:Z

    :cond_3
    return v0

    .line 294
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCallsFetched: return false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 897
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->selectAllMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->selectAllMode:Z

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_UNSELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 903
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->updateSelectAllIcon()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 250
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CallLogFragment.onCreate"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz p1, :cond_0

    .line 254
    iget v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    const-string v4, "filter_type"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 255
    iget v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mLogLimit:I

    const-string v4, "log_limit"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mLogLimit:I

    .line 256
    iget-wide v4, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDateLimit:J

    const-string v2, "date_limit"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDateLimit:J

    .line 257
    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    const-string v4, "is_call_log_activity"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    const-string v2, "has_read_call_log_permission"

    .line 258
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHasReadCallLogPermission:Z

    .line 259
    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    const-string v4, "refresh_data_required"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    const-string v2, "select_all_mode_checked"

    .line 260
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->selectAllMode:Z

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 265
    new-instance v4, Lcom/android/dialer/database/CallLogQueryHandler;

    iget v5, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mLogLimit:I

    invoke-direct {v4, p1, v2, p0, v5}, Lcom/android/dialer/database/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;I)V

    iput-object v4, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    .line 267
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasCallLogReadPermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    sget-object p1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, p1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v4, "call log permission not available"

    .line 270
    invoke-static {v3, v4, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 273
    sget-object p1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "contacts permission not available."

    .line 276
    invoke-static {v3, v1, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 466
    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView: "

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0c0044

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->setupView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 667
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 668
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallLogFragment.onDestroy"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 673
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 675
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 676
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->isVisible:Z

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->listterner:Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;

    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 4

    .line 787
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/util/PermissionsUtil;->allPhoneGroupPermissionsUsedInDialer:Ljava/util/List;

    .line 793
    invoke-static {v1, v2}, Lcom/android/dialer/util/PermissionsUtil;->getPermissionsCurrentlyDenied(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 795
    array-length v2, v1

    if-lez v2, :cond_1

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting permissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CallLogFragment.onEmptyViewActionButtonClicked"

    .line 796
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 799
    invoke-static {p0, v1, v0}, Landroidx/legacy/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    goto :goto_0

    .line 800
    :cond_1
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    if-nez v1, :cond_2

    .line 802
    check-cast v0, Lcom/android/dialer/app/calllog/CallLogFragment$HostInterface;

    invoke-interface {v0}, Lcom/android/dialer/app/calllog/CallLogFragment$HostInterface;->showDialpad()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMenuBarChangeAfterBlock()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHost:Lcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;->updateMenuBarWhenBlockNumber()V

    :cond_0
    return-void
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onNotVisible()V
    .locals 1

    const-string v0, "CallLogFragment.onPageUnselected"

    .line 845
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 637
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallLogFragment.onPause"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onNotVisible()V

    .line 641
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 642
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->cancelDisplayUpdate()V

    .line 643
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 810
    array-length p1, p3

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 812
    iput-boolean p2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 606
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallLogFragment.onResume"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 609
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 610
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHasReadCallLogPermission:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 614
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 615
    iget v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/CallLogFragment;->updateEmptyMessage(I)V

    .line 618
    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHasReadCallLogPermission:Z

    .line 624
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->clearFilteredNumbersCache()V

    .line 625
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->refreshData()V

    .line 626
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onResume()V

    .line 628
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->rescheduleDisplayUpdate()V

    .line 630
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onVisible()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 684
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    const-string v1, "filter_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 685
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mLogLimit:I

    const-string v1, "log_limit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 686
    iget-wide v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mDateLimit:J

    const-string v2, "date_limit"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 687
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    const-string v1, "is_call_log_activity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 688
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mHasReadCallLogPermission:Z

    const-string v1, "has_read_call_log_permission"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 689
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRefreshDataRequired:Z

    const-string v1, "refresh_data_required"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 690
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->selectAllMode:Z

    const-string v1, "select_all_mode_checked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 692
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    return-void

    .line 695
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onShowModalAlert(Z)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 853
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 855
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getUserVisibleHint()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "CallLogFragment.onShowModalAlert"

    const-string v4, "show: %b, fragment: %s, isVisible: %b"

    .line 850
    invoke-static {v3, v4, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 857
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogFragment$HostInterface;

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    .line 859
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 860
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mModalAlertView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 862
    invoke-interface {v0, v2}, Lcom/android/dialer/app/calllog/CallLogFragment$HostInterface;->enableFloatingButton(Z)V

    goto :goto_0

    .line 865
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 866
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mModalAlertView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 868
    invoke-interface {v0, v1}, Lcom/android/dialer/app/calllog/CallLogFragment$HostInterface;->enableFloatingButton(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart: --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 651
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/oem/CequintCallerIdManager;->isCequintCallerIdEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-static {}, Lcom/android/dialer/oem/CequintCallerIdManager;->createInstanceForCallLog()Lcom/android/dialer/oem/CequintCallerIdManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 654
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v1, v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->setCequintCallerIdManager(Lcom/android/dialer/oem/CequintCallerIdManager;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 661
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->onStop()V

    .line 662
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->stop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->isVisible:Z

    .line 599
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 600
    iget p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->updateEmptyMessage(I)V

    return-void
.end method

.method public onVisible()V
    .locals 1

    const-string v0, "CallLogFragment.onPageSelected"

    .line 836
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

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

.method public scroolChange(Landroidx/recyclerview/widget/RecyclerView;ZZ)V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "scroolChange: ------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 413
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 414
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 415
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    if-eqz p3, :cond_2

    .line 418
    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v3, "scroolChange: tolast"

    invoke-static {p3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 421
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 423
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_2
    :goto_0
    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    .line 429
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 431
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 432
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 433
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 435
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_5
    :goto_1
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 754
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 755
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 756
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->refreshData()V

    :cond_0
    return-void
.end method

.method public setSelectAllModeToFalse()V
    .locals 3

    const/4 v0, 0x0

    .line 883
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->selectAllMode:Z

    .line 884
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    .line 885
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 884
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserVisibleHint: isVisibleToUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 377
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 380
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->isVisible:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 383
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->isVisible:Z

    :goto_0
    return-void
.end method

.method protected setupData()V
    .locals 13

    .line 526
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "setupData: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v12, v0

    goto :goto_0

    :cond_0
    move v12, v1

    .line 532
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 534
    new-instance v2, Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    .line 536
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v3}, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;->attach(Landroidx/appcompat/app/AppCompatActivity;)Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;

    move-result-object v3

    .line 537
    invoke-virtual {v3}, Lcom/android/dialer/app/contactinfo/ExpirableCacheHeadlessFragment;->getRetainedCache()Lcom/android/dialer/util/ExpirableCache;

    move-result-object v3

    new-instance v4, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    .line 538
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mOnContactInfoChangedListener:Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;-><init>(Lcom/android/dialer/util/ExpirableCache;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;)V

    iput-object v2, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    .line 541
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/app/Bindings;->getLegacy(Landroid/content/Context;)Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    move-result-object v2

    .line 543
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v12, v1, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    new-instance v8, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    .line 550
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    .line 552
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object v10

    new-instance v11, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    .line 553
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    move-object v5, p0

    move-object v6, p0

    .line 542
    invoke-interface/range {v2 .. v12}, Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;->newCallLogAdapter(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/contactinfo/ContactInfoCache;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;I)Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    .line 555
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mIsCallLogActivity:Z

    if-eqz v1, :cond_2

    .line 556
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->setOnMenuBarChangeListener(Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;)V

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 559
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->fetchCalls()V

    return-void
.end method

.method protected setupView(Landroid/view/View;)V
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string v1, "setupView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090260

    .line 474
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 475
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 476
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 477
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 478
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->logOnScrollStateChange(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 479
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const v0, 0x7f090148

    .line 480
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/EmptyContentView;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v0, 0x7f090207

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mModalAlertView:Landroid/view/ViewGroup;

    .line 485
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;

    .line 486
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mModalAlertView:Landroid/view/ViewGroup;

    invoke-direct {v0, v2, v3, p0}, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mModalAlertManager:Lcom/android/dialer/app/calllog/CallLogModalAlertManager;

    const v0, 0x7f09020f

    .line 488
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    const v0, 0x7f0902a4

    .line 489
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mSelectUnselectAllViewText:Landroid/widget/TextView;

    const v0, 0x7f0902a3

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    const v0, 0x7f0902dd

    .line 492
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 493
    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 495
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mSelectUnselectAllIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mSelectUnselectAllViewText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/dialer/app/calllog/CallLogFragment$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogFragment$4;-><init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public showMultiSelectRemoveView(Z)V
    .locals 4

    .line 875
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 877
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->mMultiSelectUnSelectAllViewContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 878
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getParentFragment()Landroid/app/Fragment;

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

    .line 890
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 891
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment;->selectAllMode:Z

    .line 892
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->updateSelectAllIcon()V

    return-void
.end method
