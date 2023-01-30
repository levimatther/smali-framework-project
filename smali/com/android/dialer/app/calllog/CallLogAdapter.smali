.class public Lcom/android/dialer/app/calllog/CallLogAdapter;
.super Lcom/android/dialer/app/calllog/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;
.implements Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;
.implements Lcom/android/dialer/lightbringer/LightbringerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;,
        Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;,
        Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;,
        Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# static fields
.field public static final ACTIVITY_TYPE_CALL_LOG:I = 0x1

.field public static final ACTIVITY_TYPE_DIALTACTS:I = 0x2

.field public static final ALERT_POSITION:I = 0x0

.field public static final ENABLE_CALL_LOG_MULTI_SELECT:Ljava/lang/String; = "enable_call_log_multiselect"

.field public static final ENABLE_CALL_LOG_MULTI_SELECT_FLAG:Z = true

.field private static final KEY_ACTION_MODE:Ljava/lang/String; = "action_mode_selected_items"

.field private static final KEY_EXPANDED_POSITION:Ljava/lang/String; = "expanded_position"

.field private static final KEY_EXPANDED_ROW_ID:Ljava/lang/String; = "expanded_row_id"

.field public static final LOAD_DATA_TASK_IDENTIFIER:Ljava/lang/String; = "load_data"

.field private static final NO_EXPANDED_LIST_ITEM:I = -0x1

.field private static final VIEW_TYPE_ALERT:I = 0x1

.field private static final VIEW_TYPE_CALLLOG:I = 0x2

.field public static isUnknown:Z = false


# instance fields
.field private TAG:Ljava/lang/String;

.field public deselectAllMode:Z

.field flag:Z

.field public mActionMode:Landroid/view/ActionMode;

.field private final mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private final mActionModeStateChangedListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

.field protected final mActivity:Landroid/app/Activity;

.field private final mActivityType:I

.field private final mAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

.field private mBlockReportSpamListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

.field private mBlockedNumberId:J

.field private final mCallFetcher:Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogAlertManager:Lcom/android/dialer/app/calllog/CallLogAlertManager;

.field protected final mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

.field private final mCallLogGroupBuilder:Lcom/android/dialer/app/calllog/CallLogGroupBuilder;

.field private final mCallLogListItemHelper:Lcom/android/dialer/app/calllog/CallLogListItemHelper;

.field private mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field public mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurrentlyExpandedPosition:I

.field private mCurrentlyExpandedRowId:J

.field private mDayGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpandCollapseListener:Landroid/view/View$OnClickListener;

.field private final mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field private final mHiddenItemUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenRowIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSimpleMode:Z

.field private mIsSpamEnabled:Z

.field private mLoading:Z

.field private final mLongPressListener:Landroid/view/View$OnLongClickListener;

.field private mMenuBarChangeListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;

.field private final mMultiSelectRemoveView:Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;

.field protected final mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

.field public selectAllMode:Z

.field private final selectedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/contactinfo/ContactInfoCache;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;I)V
    .locals 5

    .line 544
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/GroupingListAdapter;-><init>()V

    const-string v0, "CallLogAdapter"

    .line 117
    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 135
    iput v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCount:I

    .line 161
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    const/4 v1, -0x1

    .line 164
    iput v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    const-wide/16 v1, -0x1

    .line 167
    iput-wide v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    const/4 v3, 0x0

    .line 171
    iput-object v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    const/4 v3, 0x0

    .line 172
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectAllMode:Z

    .line 173
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->deselectAllMode:Z

    .line 174
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    .line 179
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->flag:Z

    .line 181
    iput-wide v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mBlockedNumberId:J

    .line 194
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogAdapter$1;-><init>(Lcom/android/dialer/app/calllog/CallLogAdapter;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 315
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogAdapter$5;-><init>(Lcom/android/dialer/app/calllog/CallLogAdapter;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    .line 350
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogAdapter$6;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogAdapter$6;-><init>(Lcom/android/dialer/app/calllog/CallLogAdapter;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    .line 500
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenRowIds:Ljava/util/Set;

    .line 510
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenItemUris:Ljava/util/Set;

    .line 526
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mDayGroups:Ljava/util/Map;

    .line 528
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mLoading:Z

    .line 546
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 547
    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;

    .line 548
    iput-object p5, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionModeStateChangedListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    .line 549
    iput-object p4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mMultiSelectRemoveView:Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;

    .line 550
    iput-object p8, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-eqz p8, :cond_0

    .line 552
    invoke-virtual {p8, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->setOnVoicemailDeletedListener(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;)V

    .line 555
    :cond_0
    iput p10, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivityType:I

    .line 557
    iput-object p7, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    .line 559
    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 560
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {p1}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->disableRequestProcessing()V

    .line 563
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 565
    iput-object p6, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    .line 567
    new-instance p3, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

    iget-object p4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    iget-object p5, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    invoke-direct {p3, p4, p1, p5}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;)V

    .line 569
    new-instance p4, Lcom/android/dialer/app/calllog/CallLogListItemHelper;

    iget-object p5, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    invoke-direct {p4, p3, p1, p5}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;-><init>(Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;Landroid/content/res/Resources;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;)V

    iput-object p4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/android/dialer/app/calllog/CallLogListItemHelper;

    .line 571
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;-><init>(Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/app/calllog/CallLogGroupBuilder;

    .line 572
    invoke-static {p9}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    .line 574
    new-instance p1, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p3}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 576
    new-instance p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 579
    invoke-virtual {p3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p4

    iget-object p5, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {p1, p3, p4, p0, p5}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mBlockReportSpamListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    .line 582
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->setHasStableIds(Z)V

    .line 584
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogAlertManager;

    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 585
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-direct {p1, p0, p3, p2}, Lcom/android/dialer/app/calllog/CallLogAlertManager;-><init>(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogAlertManager:Lcom/android/dialer/app/calllog/CallLogAlertManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->announceforAccessibility(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mMultiSelectRemoveView:Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->checkMarkCallLogEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/enrichedcall/EnrichedCallManager;
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/dialer/app/calllog/CallLogAdapter;Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)Ljava/util/Map;
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;Ljava/util/Map;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 0

    .line 112
    invoke-static {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->generateAndMapNewCallDetailsEntriesHistoryResults(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;Ljava/util/Map;)Lcom/android/dialer/calldetails/CallDetailsEntries;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/dialer/app/calllog/CallLogAdapter;)J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/dialer/app/calllog/CallLogAdapter;J)J
    .locals 0

    .line 112
    iput-wide p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/android/dialer/app/calllog/CallLogAdapter;I)I
    .locals 0

    .line 112
    iput p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/dialer/app/calllog/CallLogAdapter;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivityType:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->expandViewHolderActions(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/dialer/app/calllog/CallLogAdapter;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mIsSpamEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionModeStateChangedListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;JLcom/android/dialer/calllogutils/PhoneCallDetails;)Z
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dialer/app/calllog/CallLogAdapter;->loadData(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;JLcom/android/dialer/calllogutils/PhoneCallDetails;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/dialer/app/calllog/CallLogAdapter;J)I
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getDayGroupForCall(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/dialer/app/calllog/CallLogAdapter;I)Ljava/lang/CharSequence;
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getGroupDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Lcom/android/dialer/calllogutils/PhoneCallDetails;J)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dialer/app/calllog/CallLogAdapter;->render(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Lcom/android/dialer/calllogutils/PhoneCallDetails;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/calllog/CallLogAdapter;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->showDeleteSelectedItemsDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/util/SparseArray;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->deleteSelectedItems(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/view/ActionMode$Callback;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;)I
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getVoicemailId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->uncheckMarkCallLogEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;I)V

    return-void
.end method

.method private announceforAccessibility(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 458
    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private bindCallLogListViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 856
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->TAG:Ljava/lang/String;

    const-string v1, "bindCallLogListViewHolder: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-void

    .line 861
    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 862
    iget-object p1, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    .line 864
    invoke-direct {p0, v2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->updateCheckMarkedStatusOfEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    const/4 p1, 0x0

    .line 866
    iput-boolean p1, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isLoaded:Z

    .line 867
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getGroupSize(I)I

    move-result p2

    .line 868
    invoke-static {v0, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->createCallDetailsEntries(Landroid/database/Cursor;I)Lcom/android/dialer/calldetails/CallDetailsEntries;

    move-result-object v6

    .line 869
    invoke-direct {p0, v0, p2, v2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->createPhoneCallDetails(Landroid/database/Cursor;ILcom/android/dialer/app/calllog/CallLogListItemViewHolder;)Lcom/android/dialer/calllogutils/PhoneCallDetails;

    move-result-object v5

    .line 870
    iget-object p2, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->isHiddenRow(Ljava/lang/String;J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 871
    iget-object p1, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callLogEntryView:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    iget-object p1, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeader:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 878
    :cond_1
    iget-object p2, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callLogEntryView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 884
    iget-wide p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    iget-wide v0, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    .line 885
    invoke-virtual {v2}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->inflateActionViewStub()V

    .line 887
    :cond_2
    iget-wide v3, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/app/calllog/CallLogAdapter;->loadAndRender(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;JLcom/android/dialer/calllogutils/PhoneCallDetails;Lcom/android/dialer/calldetails/CallDetailsEntries;)V

    return-void
.end method

.method private checkMarkCallLogEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 447
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1101b6

    .line 448
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-direct {p0, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->announceforAccessibility(Landroid/view/View;Ljava/lang/String;)V

    .line 450
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setVisibility(I)V

    .line 451
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBoxView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getVoicemailId(Ljava/lang/String;)I

    move-result v1

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->updateActionBar()V

    return-void
.end method

.method private collapseExpandedCard()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1367
    iput-wide v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    const/4 v0, -0x1

    .line 1368
    iput v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    return-void
.end method

.method private static createCallDetailsEntries(Landroid/database/Cursor;I)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 8

    .line 1111
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 1112
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/16 v1, 0x13

    .line 1113
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1114
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries;->newBuilder()Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    .line 1117
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->newBuilder()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v5

    .line 1118
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->setCallId(J)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v5

    const/4 v6, 0x4

    .line 1119
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->setCallType(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v5

    const/16 v6, 0x15

    .line 1120
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->setDataUsage(J)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 1121
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->setDate(J)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v5

    const/4 v6, 0x3

    .line 1122
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->setDuration(J)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v5

    const/16 v6, 0x14

    .line 1123
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->setFeatures(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v5

    if-nez v1, :cond_0

    const-string v6, ""

    goto :goto_1

    :cond_0
    move-object v6, v1

    .line 1124
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->setAccountId(Ljava/lang/String;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v5

    .line 1125
    invoke-virtual {v5}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v2, v5}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    .line 1126
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1128
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1129
    invoke-virtual {v2}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method private createCallLogEntryViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 745
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 748
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/dialer/app/calllog/BlockNumberActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0c0033

    .line 749
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0045

    .line 751
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 753
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mIsSimpleMode:Z

    if-eqz p1, :cond_1

    const p1, 0x7f080094

    .line 754
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f080093

    .line 756
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 759
    :goto_1
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mBlockReportSpamListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionModeStateChangedListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/android/dialer/app/calllog/CallLogListItemHelper;

    iget-object v8, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    .line 760
    invoke-static/range {v0 .. v8}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->create(Landroid/view/View;Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/calllog/CallLogListItemHelper;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object p1

    .line 771
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callLogEntryView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 772
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 773
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private createPhoneCallDetails(Landroid/database/Cursor;ILcom/android/dialer/app/calllog/CallLogListItemViewHolder;)Lcom/android/dialer/calllogutils/PhoneCallDetails;
    .locals 10

    .line 1043
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const/4 v0, 0x1

    .line 1044
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1045
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, ""

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 1046
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1047
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_1

    const/16 v3, 0x19

    .line 1048
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/16 v4, 0x11

    .line 1049
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1050
    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->getContactInfo(Landroid/database/Cursor;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v5

    .line 1051
    new-instance v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;

    invoke-direct {v6, v1, v4, v2}, Lcom/android/dialer/calllogutils/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V

    .line 1053
    iput-object v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    const/4 v2, 0x5

    .line 1054
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->countryIso:Ljava/lang/String;

    const/4 v2, 0x2

    .line 1055
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    const/4 v2, 0x3

    .line 1056
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->duration:J

    .line 1057
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getCallFeatures(Landroid/database/Cursor;I)I

    move-result v3

    iput v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->features:I

    const/4 v3, 0x7

    .line 1058
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->geocode:Ljava/lang/String;

    const/16 v3, 0x16

    .line 1059
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->transcription:Ljava/lang/String;

    .line 1060
    invoke-static {p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v3

    iput-object v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    const/16 v3, 0x12

    .line 1062
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountComponentName:Ljava/lang/String;

    const/16 v3, 0x13

    .line 1063
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountId:Ljava/lang/String;

    .line 1064
    iput-object v5, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->cachedContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    const/16 v3, 0x15

    .line 1066
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1067
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->dataUsage:Ljava/lang/Long;

    :cond_2
    const-string/jumbo v3, "verstat"

    .line 1071
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    const/4 v7, 0x0

    if-eq v3, v5, :cond_3

    .line 1073
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->verstat:I

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verstat:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->verstat:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    const-string v8, "CallLogAdapter.createPhoneCallDetails"

    invoke-static {v8, v3, v5}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    :cond_3
    iget v3, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->verstat:I

    iput v3, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->verstat:I

    .line 1079
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    .line 1081
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getCallIds(Landroid/database/Cursor;I)[J

    move-result-object p2

    iput-object p2, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callIds:[J

    .line 1082
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getPreviousDayGroup(Landroid/database/Cursor;)I

    move-result p2

    iput p2, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->previousGroup:I

    .line 1085
    iput-object v1, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 1086
    iget-object p2, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iput-object p2, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    .line 1087
    iget-object p2, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    iput-object p2, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->postDialDigits:Ljava/lang/String;

    .line 1088
    iput v4, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberPresentation:I

    .line 1092
    iget-object p2, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget p2, p2, v7

    const/4 v1, 0x4

    if-eq p2, v1, :cond_4

    iget-object p2, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget p2, p2, v7

    if-eq p2, v2, :cond_4

    iget-object p2, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget p2, p2, v7

    const/16 v2, 0x3ea

    if-ne p2, v2, :cond_6

    :cond_4
    const/16 p2, 0x10

    .line 1095
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v7

    :goto_1
    iput-boolean v0, v6, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isRead:Z

    .line 1097
    :cond_6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    const/4 p2, 0x6

    .line 1098
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    return-object v6
.end method

.method private deleteSelectedItems(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 308
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 309
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "CallLogAdapter.deleteSelectedItems"

    invoke-static {v5, v3, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private expandViewHolderActions(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 3

    .line 589
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_EXPAND_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 593
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    const/4 v1, 0x1

    .line 595
    invoke-virtual {p1, v1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->showActions(Z)V

    .line 596
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    .line 597
    iget-wide v1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iput-wide v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    .line 602
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private static generateAndMapNewCallDetailsEntriesHistoryResults(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;Ljava/util/Map;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/dialer/calldetails/CallDetailsEntries;",
            "Ljava/util/Map<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            "Ljava/util/List<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;>;)",
            "Lcom/android/dialer/calldetails/CallDetailsEntries;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    .line 1020
    :cond_0
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries;->newBuilder()Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    move-result-object p0

    .line 1021
    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntriesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    .line 1022
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->newBuilder()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    .line 1023
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1025
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->addAllHistoryResults(Ljava/lang/Iterable;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1029
    invoke-virtual {v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->getHistoryResultsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "CallLogAdapter.generateAndMapNewCallDetailsEntriesHistoryResults"

    const-string v3, "mapped %d results"

    .line 1026
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    :cond_1
    invoke-virtual {v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    goto :goto_0

    .line 1033
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method private getAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/dialer/calldetails/CallDetailsEntries;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            "Ljava/util/List<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1001
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1005
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1007
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->requestAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)V

    .line 1008
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getCallFeatures(Landroid/database/Cursor;I)I
    .locals 4

    .line 1466
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 v3, 0x14

    .line 1468
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 1469
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1471
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    return v2
.end method

.method private getCallIds(Landroid/database/Cursor;I)[J
    .locals 6

    .line 1525
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 1526
    new-array v1, p2, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_0

    .line 1529
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 1530
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1532
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-object v1
.end method

.method private static getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4

    .line 1447
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 1448
    new-array v1, p1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v3, 0x4

    .line 1450
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v1, v2

    .line 1451
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-object v1
.end method

.method private getDayGroupForCall(J)I
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mDayGroups:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 1434
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    return-object v0
.end method

.method private getGroupDescription(I)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    .line 1544
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1546
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1548
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/lightbringer/LightbringerComponent;->get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/lightbringer/LightbringerComponent;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v0

    return-object v0
.end method

.method private static getNumberType(Landroid/content/res/Resources;Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/String;
    .locals 3

    .line 1243
    iget-object v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    sget-object v1, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_CNAP:Lcom/android/dialer/logging/ContactSource$Type;

    const-string v2, ""

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    sget-object v1, Lcom/android/dialer/logging/ContactSource$Type;->SOURCE_TYPE_CEQUINT_CALLER_ID:Lcom/android/dialer/logging/ContactSource$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1248
    :cond_0
    iget v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberType:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    .line 1251
    :cond_1
    iget v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberType:I

    iget-object p1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {p0, v0, p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    return-object v2
.end method

.method private getPreviousDayGroup(Landroid/database/Cursor;)I
    .locals 3

    .line 1407
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 1408
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->moveToPreviousNonHiddenRow(Landroid/database/Cursor;)V

    .line 1409
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1410
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 1413
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getDayGroupForCall(J)I

    move-result v1

    .line 1414
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    return v1
.end method

.method private static getVoicemailId(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 490
    :goto_0
    invoke-static {v2}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 492
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private isCallComposerCapable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 989
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    move-result-object v1

    if-nez v1, :cond_1

    .line 991
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->requestCapabilities(Ljava/lang/String;)V

    return v0

    .line 994
    :cond_1
    invoke-virtual {v1}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->supportsCallComposer()Z

    move-result p1

    return p1
.end method

.method private isHiddenRow(Ljava/lang/String;J)Z
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenRowIds:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 897
    :cond_0
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/operatorutils/IOperatorManager;->isHiddenRowInCallLog(Ljava/lang/String;J)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private loadAndRender(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;JLcom/android/dialer/calllogutils/PhoneCallDetails;Lcom/android/dialer/calldetails/CallDetailsEntries;)V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 920
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CallLogAdapter.loadAndRender"

    const-string v3, "position: %d"

    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    iput-boolean v2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    const/4 v0, 0x0

    .line 924
    iput-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    .line 925
    iput-boolean v2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpamFeatureEnabled:Z

    .line 926
    iget-boolean v0, p4, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isRead:Z

    iput-boolean v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isRead:Z

    .line 931
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->isCallComposerCapable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isCallComposerCapable:Z

    .line 932
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 936
    invoke-direct {p0, v1, p5}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)Ljava/util/Map;

    move-result-object v1

    .line 933
    invoke-static {v0, p5, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->generateAndMapNewCallDetailsEntriesHistoryResults(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;Ljava/util/Map;)Lcom/android/dialer/calldetails/CallDetailsEntries;

    move-result-object p5

    .line 937
    invoke-virtual {p1, p5}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->setDetailedPhoneDetails(Lcom/android/dialer/calldetails/CallDetailsEntries;)V

    .line 938
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object p5

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-interface {p5, v0, v1}, Lcom/android/dialer/lightbringer/Lightbringer;->isReachable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p5

    iput-boolean p5, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->lightbringerReady:Z

    .line 939
    new-instance p5, Lcom/android/dialer/app/calllog/CallLogAdapter$7;

    move-object v3, p5

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/app/calllog/CallLogAdapter$7;-><init>(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Lcom/android/dialer/calllogutils/PhoneCallDetails;J)V

    .line 979
    iput-object p5, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->asyncTask:Landroid/os/AsyncTask;

    .line 980
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    new-array p2, v2, [Ljava/lang/Void;

    const-string p3, "load_data"

    invoke-interface {p1, p3, p5, p2}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadData(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;JLcom/android/dialer/calllogutils/PhoneCallDetails;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1139
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->TAG:Ljava/lang/String;

    const-string v4, "loadData: ------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 1141
    iget-wide v3, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    cmp-long v3, p2, v3

    const-string v4, "CallLogAdapter.loadData"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "rowId of viewHolder changed after load task is issued, aborting load"

    .line 1142
    invoke-static {v4, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 1147
    :cond_0
    iget-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1149
    sget v6, Lcom/android/dialer/app/calllog/CallLogActivity;->loadCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1152
    sput-boolean v7, Lcom/android/dialer/app/calllog/CallLogAdapter;->isUnknown:Z

    goto :goto_0

    .line 1155
    :cond_1
    sput-boolean v5, Lcom/android/dialer/app/calllog/CallLogAdapter;->isUnknown:Z

    .line 1157
    :goto_0
    sget v6, Lcom/android/dialer/app/calllog/CallLogActivity;->loadCount:I

    add-int/2addr v6, v7

    sput v6, Lcom/android/dialer/app/calllog/CallLogActivity;->loadCount:I

    :cond_2
    const-string v6, "[,;]"

    .line 1160
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1161
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 1162
    iget-object v10, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    .line 1163
    invoke-static {v3, v10}, Lcom/android/dialer/util/DialerUtils;->isConferenceURICallLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v15, v3

    goto :goto_2

    :cond_3
    array-length v8, v6

    if-lez v8, :cond_4

    aget-object v8, v6, v5

    goto :goto_1

    :cond_4
    const-string v8, ""

    :goto_1
    move-object v15, v8

    .line 1165
    :goto_2
    iget-object v8, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountComponentName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountId:Ljava/lang/String;

    .line 1166
    invoke-static {v8, v9}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v14

    .line 1168
    iget-object v8, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v9, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 1169
    invoke-virtual {v8, v14, v9}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v13

    .line 1174
    sget-object v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->EMPTY:Lcom/android/dialer/phonenumbercache/ContactInfo;

    .line 1175
    iget-object v9, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v11, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberPresentation:I

    invoke-static {v9, v11}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v13, :cond_8

    .line 1179
    invoke-virtual/range {p1 .. p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result v8

    if-eqz v6, :cond_5

    .line 1182
    array-length v6, v6

    if-le v6, v7, :cond_5

    .line 1183
    invoke-static {v3, v10}, Lcom/android/dialer/util/DialerUtils;->isConferenceURICallLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_3

    :cond_5
    move v6, v5

    :goto_3
    if-eqz v6, :cond_6

    move-object v9, v3

    goto :goto_4

    :cond_6
    move-object v9, v15

    .line 1185
    :goto_4
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    iget-object v11, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->cachedContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    int-to-long v7, v8

    iget-object v5, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 1192
    invoke-static {v5}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v5

    move/from16 v17, v13

    move-object/from16 v16, v14

    const-wide/16 v13, 0x5

    move-object/from16 v18, v15

    const-string v15, "number_of_call_to_do_remote_lookup"

    .line 1193
    invoke-interface {v5, v15, v13, v14}, Lcom/android/dialer/configprovider/ConfigProvider;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v5, v7, v13

    if-gez v5, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    move-object v8, v3

    move/from16 v3, v17

    move-object/from16 v5, v16

    move v14, v6

    .line 1186
    invoke-virtual/range {v8 .. v14}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;ZZ)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v8

    goto :goto_6

    :cond_8
    move v3, v13

    move-object v5, v14

    move-object/from16 v18, v15

    .line 1196
    :goto_6
    iget-object v6, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    if-nez v6, :cond_9

    const/4 v6, 0x0

    goto :goto_7

    :cond_9
    iget-object v6, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1199
    invoke-static {v6}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1200
    :goto_7
    iget-object v7, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v7, v6, v3}, Lcom/android/dialer/calllogutils/PhoneCallDetails;->updateDisplayNumber(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 1202
    iget-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    .line 1203
    iput-object v5, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1204
    iput-object v5, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1205
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v5}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccountIcon(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountIcon:Landroid/graphics/drawable/Drawable;

    .line 1207
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->nameAlternative:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1208
    :cond_a
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 1209
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    .line 1210
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->nameAlternative:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->nameAlternative:Ljava/lang/CharSequence;

    .line 1211
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v3

    iput v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->nameDisplayOrder:I

    .line 1212
    iget v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    iput v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberType:I

    .line 1213
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 1214
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 1215
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    .line 1216
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->objectId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->objectId:Ljava/lang/String;

    .line 1217
    iget-wide v5, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->userType:J

    iput-wide v5, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->contactUserType:J

    :cond_b
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 1222
    invoke-virtual/range {p1 .. p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    iget-object v5, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->geocode:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    iget-object v6, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->geoDescription:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    aput-object v6, v3, v5

    const-string v5, "position:%d, update geo info: %s, cequint caller id geo: %s, photo uri: %s <- %s"

    .line 1219
    invoke-static {v4, v5, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1227
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1228
    iget-object v3, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->geoDescription:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 1231
    :cond_c
    iput-object v8, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    .line 1232
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getNumberType(Landroid/content/res/Resources;Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberType:Ljava/lang/String;

    move-object/from16 v8, v18

    .line 1233
    iput-object v8, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 1236
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/android/dialer/app/calllog/CallLogListItemHelper;

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->updatePhoneCallDetails(Lcom/android/dialer/calllogutils/PhoneCallDetails;)V

    const/4 v1, 0x1

    return v1
.end method

.method private moveToPreviousNonHiddenRow(Landroid/database/Cursor;)V
    .locals 3

    .line 1419
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenRowIds:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private render(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Lcom/android/dialer/calllogutils/PhoneCallDetails;J)V
    .locals 4

    .line 1260
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 1261
    iget-wide v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    cmp-long p3, p3, v0

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    new-array p1, p4, [Ljava/lang/Object;

    const-string p2, "CallLogAdapter.render"

    const-string p3, "rowId of viewHolder changed after load task is issued, aborting render"

    .line 1262
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1269
    :cond_0
    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 1270
    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->workIconView:Landroid/widget/ImageView;

    iget-wide v0, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->contactUserType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/16 v1, 0x8

    if-nez v0, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1273
    iget-boolean p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectAllMode:Z

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 1274
    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getVoicemailId(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1276
    :cond_2
    iget-boolean p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->deselectAllMode:Z

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 1277
    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getVoicemailId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 1279
    :cond_3
    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    .line 1280
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getVoicemailId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 1281
    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBoxView:Landroid/widget/ImageView;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1283
    :cond_4
    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 1284
    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBoxView:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1287
    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/android/dialer/app/calllog/CallLogListItemHelper;

    invoke-virtual {p3, p1, p2}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Lcom/android/dialer/calllogutils/PhoneCallDetails;)V

    .line 1288
    iget-wide p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    iget-wide v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_6

    .line 1291
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result p2

    iput p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    const/4 p2, 0x1

    .line 1292
    invoke-virtual {p1, p2}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->showActions(Z)V

    goto :goto_2

    .line 1294
    :cond_6
    invoke-virtual {p1, p4}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->showActions(Z)V

    .line 1296
    :goto_2
    iget-object p2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeader:Landroid/widget/TextView;

    iget p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeaderVisibility:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    iget-object p2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeader:Landroid/widget/TextView;

    iget-object p3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mMenuBarChangeListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;

    if-eqz p2, :cond_7

    iget-wide p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mBlockedNumberId:J

    iget-wide v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_7

    const-wide/16 p1, -0x1

    .line 1300
    iput-wide p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mBlockedNumberId:J

    .line 1301
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mMenuBarChangeListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;

    invoke-interface {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;->onMenuBarChangeAfterBlock()V

    :cond_7
    return-void
.end method

.method private showDeleteSelectedItemsDialog()V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 256
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120008

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    .line 257
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 260
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    .line 262
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const v4, 0x7f0f0002

    .line 261
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/calllog/CallLogAdapter$4;

    invoke-direct {v2, p0, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter$4;-><init>(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/util/SparseArray;)V

    const v0, 0x7f11050f

    .line 263
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/app/calllog/CallLogAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogAdapter$3;-><init>(Lcom/android/dialer/app/calllog/CallLogAdapter;)V

    .line 279
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/app/calllog/CallLogAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogAdapter$2;-><init>(Lcom/android/dialer/app/calllog/CallLogAdapter;)V

    const v2, 0x7f11050e

    .line 290
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 303
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_DISPLAY_DELETE_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 304
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method

.method private uncheckMarkCallLogEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;I)V
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 480
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1101bb

    .line 481
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-direct {p0, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->announceforAccessibility(Landroid/view/View;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 484
    iget-object p2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBoxView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    invoke-virtual {p1, v4}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setVisibility(I)V

    .line 486
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->updateActionBar()V

    return-void
.end method

.method private updateActionBar()V
    .locals 6

    .line 463
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_ROTATE_AND_SHOW_ACTION_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 465
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 466
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 471
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11050d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    .line 474
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 472
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateCheckMarkedStatusOfEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getVoicemailId(Ljava/lang/String;)I

    move-result v0

    .line 907
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 908
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->checkMarkCallLogEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    goto :goto_0

    .line 910
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->uncheckMarkCallLogEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addGroup(II)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->addGroup(II)V

    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/app/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public clearDayGroups()V
    .locals 1

    .line 1513
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mDayGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearFilteredNumbersCache()V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->clearCache()V

    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->disableRequestProcessing()V

    return-void
.end method

.method public getAlertManager()Lcom/android/dialer/app/calllog/CallLogAlertManager;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogAlertManager:Lcom/android/dialer/app/calllog/CallLogAlertManager;

    return-object v0
.end method

.method public getExpandCollapseListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getGroupSize(I)I
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogAlertManager:Lcom/android/dialer/app/calllog/CallLogAlertManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAlertManager;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->getGroupSize(I)I

    move-result p1

    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogAlertManager:Lcom/android/dialer/app/calllog/CallLogAlertManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAlertManager;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1307
    invoke-super {p0}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogAlertManager:Lcom/android/dialer/app/calllog/CallLogAlertManager;

    invoke-virtual {v1}, Lcom/android/dialer/app/calllog/CallLogAlertManager;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1331
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1333
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 1312
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogAlertManager:Lcom/android/dialer/app/calllog/CallLogAlertManager;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogAlertManager;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;)V
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/phonenumbercache/ContactInfo;)V

    return-void
.end method

.method public invalidatePositions()V
    .locals 1

    const/4 v0, -0x1

    .line 1375
    iput v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    return-void
.end method

.method protected isCallLogActivity()Z
    .locals 2

    .line 1345
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivityType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 680
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mLoading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onAllDeselected()V
    .locals 1

    const/4 v0, 0x0

    .line 1584
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectAllMode:Z

    const/4 v0, 0x1

    .line 1585
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->deselectAllMode:Z

    .line 1586
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1587
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->updateActionBar()V

    .line 1588
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAllSelected()V
    .locals 6

    const/4 v0, 0x1

    .line 1568
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectAllMode:Z

    const/4 v1, 0x0

    .line 1569
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->deselectAllMode:Z

    .line 1570
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    move v2, v1

    .line 1571
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1572
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_1

    const-string/jumbo v4, "voicemail_uri"

    .line 1574
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v5, v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-static {v4}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 1575
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1576
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getVoicemailId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1579
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->updateActionBar()V

    .line 1580
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 808
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 817
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->bindCallLogListViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 820
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 733
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogAlertManager:Lcom/android/dialer/app/calllog/CallLogAlertManager;

    invoke-virtual {p2, p1}, Lcom/android/dialer/app/calllog/CallLogAlertManager;->createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 735
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->createCallLogEntryViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onLightbringerStateChanged()V
    .locals 0

    .line 1564
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 704
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/lightbringer/Lightbringer;->unregisterListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->pauseCache()V

    .line 706
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenItemUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 707
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    const-string v1, "expanded_position"

    .line 633
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    const-wide/16 v0, -0x1

    const-string v2, "expanded_row_id"

    .line 635
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    const-string v0, "action_mode_selected_items"

    .line 638
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 643
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CallLogAdapter.onRestoreInstanceState"

    const-string v4, "restored selectedItemsList:%d"

    .line 640
    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 646
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 647
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 648
    invoke-static {v4}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getVoicemailId(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 652
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 653
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const-string v7, "restoring selected index %d, id=%d, uri=%s "

    .line 649
    invoke-static {v2, v7, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    .line 661
    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "CallLogAdapter.onRestoreInstance"

    const-string v1, "restored selectedItems %s"

    .line 658
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->updateActionBar()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->start()V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isSpamEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mIsSpamEnabled:Z

    .line 698
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/lightbringer/Lightbringer;->registerListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 700
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mIsSimpleMode:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10

    .line 607
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    const-string v1, "expanded_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    iget-wide v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    const-string v2, "expanded_row_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "CallLogAdapter.onSaveInstanceState"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v1, :cond_0

    move v1, v5

    .line 613
    :goto_0
    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 614
    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 615
    iget-object v7, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 617
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v4

    aput-object v7, v8, v2

    const-string v6, "index %d, id=%d, uri=%s "

    .line 616
    invoke-static {v3, v6, v8}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "action_mode_selected_items"

    .line 621
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 626
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectedItems:Landroid/util/SparseArray;

    .line 627
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "saved: %d, selectedItemsSize:%d"

    .line 623
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 712
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->clearCachedData()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 837
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 838
    check-cast p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isAttachedToWindow:Z

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 844
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 845
    check-cast p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isAttachedToWindow:Z

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 825
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 826
    check-cast p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 827
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->updateCheckMarkedStatusOfEntry(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 829
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->asyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 830
    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->asyncTask:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onVoicemailDeleteUndo(JILandroid/net/Uri;)V
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenItemUris:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1384
    iget-object p4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenRowIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1385
    invoke-virtual {p0, p3}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyItemChanged(I)V

    add-int/lit8 p3, p3, 0x1

    .line 1387
    invoke-virtual {p0, p3}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onVoicemailDeleted(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Landroid/net/Uri;)V
    .locals 3

    .line 1356
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenRowIds:Ljava/util/Set;

    iget-wide v1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1358
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenItemUris:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1360
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->collapseExpandedCard()V

    .line 1361
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyItemChanged(I)V

    .line 1363
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onVoicemailDeletedInDatabase(JLandroid/net/Uri;)V
    .locals 0

    .line 1395
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mHiddenItemUris:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method pauseCache()V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->stop()V

    .line 722
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->reset()V

    return-void
.end method

.method setBlockViewId(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mBlockedNumberId:J

    return-void
.end method

.method public setDayGroup(JI)V
    .locals 2

    .line 1502
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mDayGroups:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mDayGroups:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mLoading:Z

    return-void
.end method

.method public setOnMenuBarChangeListener(Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mMenuBarChangeListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnMenuBarChangeListener;

    return-void
.end method
