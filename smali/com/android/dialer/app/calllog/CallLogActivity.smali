.class public Lcom/android/dialer/app/calllog/CallLogActivity;
.super Lcom/android/dialer/util/TransactionSafeActivity;
.source "CallLogActivity.java"

# interfaces
.implements Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;
.implements Lcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;,
        Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field public static ACTION_SHOW_CALL_LOG:Ljava/lang/String; = "show call log"

.field public static final EXTRA_HAS_ENRICHED_CALL_DATA:Ljava/lang/String; = "has_enriched_call_data"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final TAB_INDEX_ALL:I = 0x0

.field private static final TAB_INDEX_ANSWERED:I = 0x1

.field private static final TAB_INDEX_COUNT:I = 0x4

.field private static final TAB_INDEX_DIALED:I = 0x2

.field private static final TAB_INDEX_MISSED:I = 0x3

.field public static TAG:Ljava/lang/String; = "CallLogActivity"

.field private static final TASK_DELETE:Ljava/lang/String; = "task_delete"

.field public static loadCount:I = 0x0

.field private static final menu_add_to_exsit_contact:I = 0x2

.field private static final menu_block_number:I = 0x4

.field private static final menu_clear_call_history:I = 0x7

.field private static final menu_recentCalls_removeFromRecentList:I = 0x6

.field private static final menu_save_as_new_contact:I = 0x1

.field private static final menu_send_to_message:I = 0x3

.field private static final menu_test_block:I = 0x8

.field private static final menu_unblock_number:I = 0x5


# instance fields
.field add_to_exsit_contact:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field block_number:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field clear_call_history:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contact:Lcom/android/dialer/dialercontact/DialerContact;

.field private contentView:Lcom/android/dialer/widget/EmptyContentView;

.field private currentPosition:I

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

.field private mCallLogAdapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDialogMenuBar:Landroid/widget/MenuBar;

.field private mFragment:Landroid/util/SparseArray;

.field private mFragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mIsResumed:Z

.field private mIsSimpleMode:Z

.field private mListener:Landroid/util/SparseArray;

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mTabTitles:[Ljava/lang/String;

.field private mViewPager:Lcom/android/dialer/app/calllog/CallLogViewPager;

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

.field private menu_blocked_hascontacts:Ljava/util/ArrayList;
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

.field private menu_blocked_withoutcontacts:Ljava/util/ArrayList;
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

.field private menu_unknown:Ljava/util/ArrayList;
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

.field private menu_without_contacts:Ljava/util/ArrayList;
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

.field recentCalls_removeFromRecentList:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private rttCallDialog:Lcom/android/incallui/RttCallDialog;

.field save_as_new_contact:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tab_all:Landroid/widget/TextView;

.field private tab_dialed:Landroid/widget/TextView;

.field private tab_missed:Landroid/widget/TextView;

.field private tab_received:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;

.field unblock_number:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

.field private view:Landroid/view/View;

.field private viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/android/dialer/util/TransactionSafeActivity;-><init>()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->currentPosition:I

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menuInit:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_without_contacts:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_hascontacts:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_withoutcontacts:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_unknown:Ljava/util/ArrayList;

    .line 146
    iput-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->flag:Z

    .line 165
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110418

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->save_as_new_contact:Landroid/util/Pair;

    .line 166
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f11005b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->add_to_exsit_contact:Landroid/util/Pair;

    .line 167
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110074

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->block_number:Landroid/util/Pair;

    .line 168
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1104b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->unblock_number:Landroid/util/Pair;

    .line 169
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1103dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recentCalls_removeFromRecentList:Landroid/util/Pair;

    .line 170
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f11013a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->clear_call_history:Landroid/util/Pair;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragment:Landroid/util/SparseArray;

    .line 182
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogActivity$1;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/calllog/CallLogActivity;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/calllog/CallLogActivity;)Landroid/widget/MenuBar;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/dialer/app/calllog/CallLogActivity;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->entries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/incallui/RttCallDialog;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/dialer/app/calllog/CallLogActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menuInit:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/app/calllog/CallLogActivity;I)I
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/dialer/app/calllog/CallLogActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/dialer/app/calllog/CallLogActivity;)[Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/dialer/app/calllog/CallLogActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragment:Landroid/util/SparseArray;

    return-object p0
.end method

.method private alertCallLogDialog()V
    .locals 3

    .line 831
    new-instance v0, Landroid/app/TctDialog;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110139

    .line 832
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 833
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogActivity$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogActivity$4;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V

    const v2, 0x7f110006

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 839
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogActivity$5;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogActivity$5;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V

    const v2, 0x7f110007

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 883
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    return-void
.end method

.method private getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 5

    .line 430
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 434
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragment:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 435
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragment:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/calllog/CallLogFragment;

    if-eqz v2, :cond_1

    .line 437
    invoke-virtual {v2}, Lcom/android/dialer/app/calllog/CallLogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_1
    sget-object v2, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v3, "mFragment is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    sget-object v2, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFragmentList is error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private getRtlPosition(I)I
    .locals 3

    .line 987
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

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

.method public static getShowTabIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 1067
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    sget-object v1, Lcom/android/dialer/app/calllog/CallLogActivity;->ACTION_SHOW_CALL_LOG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "intent"

    .line 1071
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1072
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    sget-object v1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    .line 1073
    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1074
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 1069
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private sendScreenViewForChildFragment()V
    .locals 2

    .line 980
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "sendScreenViewForChildFragment: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG_FILTER:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {v0, v1, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    return-void
.end method

.method private upDateViewAndData()V
    .locals 3

    .line 1227
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "initViewAndData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mViewPager:Lcom/android/dialer/app/calllog/CallLogViewPager;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogViewPager;->getCurrentItem()I

    move-result v0

    .line 1229
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1258
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->textView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1261
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public callHistoryDeleted()V
    .locals 3

    .line 1042
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "callHistoryDeleted: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menuInit:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1053
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {p0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public convertCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4

    .line 423
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 424
    sget-object v1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 777
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 778
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1103d9

    invoke-virtual {p0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public hasCursor(ZI)V
    .locals 3

    .line 301
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "convertCursor: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getContentView()Lcom/android/dialer/widget/EmptyContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->contentView:Lcom/android/dialer/widget/EmptyContentView;

    .line 303
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mViewPager:Lcom/android/dialer/app/calllog/CallLogViewPager;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogViewPager;->getCurrentItem()I

    move-result p1

    .line 305
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    array-length p2, p2

    rem-int p2, p1, p2

    .line 306
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 321
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v2, "hasCursor: missed"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 325
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No fragment at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 317
    :cond_1
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v2, "hasCursor: dialed"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 313
    :cond_2
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "hasCursor: answered"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 309
    :cond_3
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "hasCursor: all"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_4

    .line 331
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->flag:Z

    .line 332
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v0, "convertCursor: hascursor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    .line 344
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 347
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->flag:Z

    .line 348
    sget-object v1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v2, "convertCursor: !hascursor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->contentView:Lcom/android/dialer/widget/EmptyContentView;

    if-nez v1, :cond_5

    return-void

    .line 355
    :cond_5
    invoke-virtual {v1}, Lcom/android/dialer/widget/EmptyContentView;->requestFocus()Z

    .line 356
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->contentView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v1, v0}, Lcom/android/dialer/widget/EmptyContentView;->setFocusable(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menuInit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p1, p1, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->onOptionMenuDismiss()V

    .line 364
    :cond_6
    :goto_1
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->currentPosition:I

    if-eq p1, p2, :cond_8

    .line 365
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 366
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 368
    :cond_7
    iput p2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->currentPosition:I

    :cond_8
    return-void
.end method

.method public synthetic lambda$onActivityResult$0$CallLogActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1168
    invoke-static {p1}, Lcom/android/dialer/app/calllog/IntentProvider;->getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1159
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    const-string v1, "has_enriched_call_data"

    .line 1163
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone_number"

    .line 1164
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900b8

    .line 1165
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110212

    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f1104f5

    new-instance v3, Lcom/android/dialer/app/calllog/-$$Lambda$CallLogActivity$efWjqn_dOHM91N-e5E7cyxjOPEo;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/app/calllog/-$$Lambda$CallLogActivity$efWjqn_dOHM91N-e5E7cyxjOPEo;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 1169
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 1173
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/util/TransactionSafeActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1060
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->PRESS_ANDROID_BACK_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 1062
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onBackPressed()V

    return-void
.end method

.method public onClickCSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 3

    .line 520
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->flag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 521
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 523
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 529
    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public onClickRSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 216
    invoke-super/range {p0 .. p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 217
    sput v1, Lcom/android/dialer/app/calllog/CallLogActivity;->loadCount:I

    .line 218
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/dialer/app/calllog/CallLogFragment;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IZLcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-direct {v4, v1, v1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IZLcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/dialer/app/calllog/CallLogFragment;

    const/4 v6, 0x2

    .line 254
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 222
    invoke-direct {v4, v6, v1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IZLcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/dialer/app/calllog/CallLogFragment;

    const/4 v8, 0x3

    invoke-direct {v4, v8, v1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(IZLcom/android/dialer/app/calllog/CallLogFragment$CallLogFragmentHost;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    .line 231
    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 232
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v9, 0x500

    invoke-virtual {v4, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v4, -0x80000000

    .line 233
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0600b2

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    const v3, 0x7f0c0042

    .line 242
    invoke-virtual {v0, v3}, Lcom/android/dialer/app/calllog/CallLogActivity;->setContentView(I)V

    .line 243
    sget-object v3, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate2:----- "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v3, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 252
    invoke-virtual {v3, v0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 253
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const v9, 0x7f110418

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const v10, 0x7f11005b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v5, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f110074

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/4 v14, 0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f1103dc

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v5, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v16, 0x7f11013a

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_without_contacts:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_without_contacts:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_without_contacts:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_hascontacts:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_hascontacts:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_hascontacts:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v7, 0x7f1104b8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_hascontacts:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_hascontacts:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_withoutcontacts:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_withoutcontacts:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_withoutcontacts:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_unknown:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_unknown:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getIntent()Landroid/content/Intent;

    new-array v2, v11, [Ljava/lang/String;

    .line 278
    iput-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    const v3, 0x7f1100ce

    .line 279
    invoke-virtual {v0, v3}, Lcom/android/dialer/app/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 280
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    const v3, 0x7f1100fe

    invoke-virtual {v0, v3}, Lcom/android/dialer/app/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 281
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    const v2, 0x7f1100ff

    invoke-virtual {v0, v2}, Lcom/android/dialer/app/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 282
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    const v2, 0x7f1100d9

    invoke-virtual {v0, v2}, Lcom/android/dialer/app/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v1, 0x7f090215

    .line 283
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->textView:Landroid/widget/TextView;

    const v1, 0x7f0902e0

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->tab_all:Landroid/widget/TextView;

    const v1, 0x7f0902e4

    .line 285
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->tab_received:Landroid/widget/TextView;

    const v1, 0x7f0902e3

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->tab_missed:Landroid/widget/TextView;

    const v1, 0x7f0902e1

    .line 287
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->tab_dialed:Landroid/widget/TextView;

    const v1, 0x7f0900a3

    .line 289
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/calllog/CallLogViewPager;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mViewPager:Lcom/android/dialer/app/calllog/CallLogViewPager;

    .line 290
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/dialer/app/calllog/CallLogActivity$ViewPagerAdapter;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity;Landroid/app/FragmentManager;)V

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mViewPagerAdapter:Landroidx/legacy/app/FragmentPagerAdapter;

    .line 291
    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mViewPager:Lcom/android/dialer/app/calllog/CallLogViewPager;

    invoke-virtual {v2, v1}, Lcom/android/dialer/app/calllog/CallLogViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 293
    sget-object v1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate: setadapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mViewPager:Lcom/android/dialer/app/calllog/CallLogViewPager;

    invoke-virtual {v1, v0}, Lcom/android/dialer/app/calllog/CallLogViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 295
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mViewPager:Lcom/android/dialer/app/calllog/CallLogViewPager;

    const v2, 0x5f5e100

    invoke-virtual {v1, v2, v4}, Lcom/android/dialer/app/calllog/CallLogViewPager;->setCurrentItem(IZ)V

    .line 296
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/calllog/CallLogFragment;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1081
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1}, Landroid/widget/MenuBar;->refreshMenuBar()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 1281
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1283
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1284
    sget-boolean v1, Lcom/android/dialer/app/calllog/CallLogAdapter;->isUnknown:Z

    const/4 v2, 0x2

    const v3, 0x7f11000c

    const v4, 0x7f11000b

    const v5, 0x7f11000f

    const/4 v6, 0x0

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_3

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    if-eqz v0, :cond_2

    .line 1293
    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1294
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_withoutcontacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v4, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1296
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_2

    .line 1299
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f11000a

    iget-boolean v7, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1302
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v6, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 1304
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :goto_2
    return-void

    .line 1285
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v4, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1287
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x5

    if-ne v0, p1, :cond_4

    .line 665
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->flag:Z

    if-eqz v0, :cond_4

    .line 666
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    .line 668
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 671
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 672
    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    return p2

    .line 677
    :cond_1
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 678
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogActivity$3;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/CallLogActivity$3;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V

    .line 700
    new-instance v0, Lcom/android/incallui/RttCallDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/RttCallDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    .line 701
    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->show()V

    goto :goto_0

    .line 704
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 705
    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 703
    invoke-static {p1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 713
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->flag:Z

    if-eqz v0, :cond_5

    .line 714
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    .line 716
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 717
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 718
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->prepareOptionMenu(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 723
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/dialer/util/TransactionSafeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 453
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onKeyup: KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-super {p0, p1, p2}, Lcom/android/dialer/util/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 479
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 480
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 481
    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const v2, 0x7f11000b

    const v3, 0x7f11000c

    const v4, 0x7f11000f

    const/4 v5, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v6, 0x7f11000a

    iget-boolean v7, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 492
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p0, v0, v5, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 494
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_3

    .line 482
    :cond_4
    :goto_1
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasCursor: 2 viewHolder.number is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v7, v7, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v6, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_unknown:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 486
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 513
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 12

    .line 559
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onOptionMenuClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getCurrentRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 563
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 570
    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->buildContactNew()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 571
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntriesList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->entries:Ljava/util/List;

    .line 574
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionMenuClick: viewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {v2}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionMenuClick: viewHolder.displayNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v2, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 583
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->alertCallLogDialog()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->intent:Landroid/content/Intent;

    .line 593
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->intent:Landroid/content/Intent;

    .line 598
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 603
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    new-instance v1, Lcom/android/dialer/app/calllog/CallLogActivity$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogActivity$2;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->maybeShowBlockNumberMigrationDialogNew(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 622
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget v5, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-boolean v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v8, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-wide v9, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iget-object v11, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    invoke-interface/range {v1 .. v11}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;->onUnblockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;ZLjava/lang/Integer;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 635
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogActivity$DeleteCallsTask;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    const-string v2, "task_delete"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    :goto_0
    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 2

    .line 652
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

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

    .line 975
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

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

    .line 952
    sget-object p2, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

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

    .line 958
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsResumed:Z

    if-eqz p1, :cond_0

    .line 960
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->sendScreenViewForChildFragment()V

    .line 963
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->upDateViewAndData()V

    .line 964
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mViewPager:Lcom/android/dialer/app/calllog/CallLogViewPager;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogViewPager;->getCurrentItem()I

    move-result p1

    .line 965
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 967
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogFragment;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/app/calllog/CallLogFragment;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 818
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsResumed:Z

    .line 820
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    .line 823
    :cond_0
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 786
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    .line 788
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->cancelAllMissedCalls(Landroid/content/Context;)V

    .line 791
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->restartPerformanceRecordingIfARecentCallExist(Landroid/content/Context;)V

    .line 792
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->startRecording()V

    :cond_0
    const/4 v0, 0x1

    .line 795
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsResumed:Z

    .line 796
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onResume()V

    .line 797
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->refreshMenuBar()V

    .line 799
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mDialogMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f110006

    const/4 v2, 0x0

    const v3, 0x7f110007

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 806
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->sendScreenViewForChildFragment()V

    .line 807
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogActivity;->upDateViewAndData()V

    .line 809
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.dialer"

    .line 810
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.dialer.finish"

    .line 811
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public prepareOptionMenu(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 11

    .line 727
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    const v4, 0x7f11000c

    const v5, 0x7f11000b

    const v6, 0x7f11000f

    if-eqz v0, :cond_2

    .line 730
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFocusChange1: isBlocked = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_blocked_withoutcontacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v5, v4, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 734
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/2addr v0, v2

    invoke-static {p0, p1, v3, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_5

    .line 739
    :cond_2
    iget-object v7, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 740
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareOptionMenu: 2 viewHolder.number is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_unknown:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v5, v4, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 744
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/2addr v0, v2

    invoke-static {p0, p1, v3, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_5

    :cond_4
    const v7, 0x7f11000a

    if-nez v0, :cond_6

    .line 748
    iget-object v8, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v8, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v8}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 749
    sget-object p1, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onFocusChange4: isBlocked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v5, v4, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 754
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/2addr v0, v2

    invoke-static {p0, p1, v1, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 756
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/2addr v0, v2

    invoke-static {p0, p1, v3, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_5

    :cond_6
    if-nez v0, :cond_8

    .line 760
    iget-object v8, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v8, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v8}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 761
    sget-object v8, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onFocusChange5: isBlocked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onFocusChange5:UriUtils.isEncodedContactUri(viewHolder.info.lookupUri) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    :goto_4
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->menu_without_contacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v5, v4, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 766
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/2addr v0, v2

    invoke-static {p0, p1, v1, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 768
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/2addr v0, v2

    invoke-static {p0, p1, v3, v0}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_8
    :goto_5
    return-void
.end method

.method public updateMenuBarWhenBlockNumber()V
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->viewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v1, v1}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v2, 0x7f11000a

    invoke-virtual {v0, v1, v2}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 1274
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity;->mIsSimpleMode:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :goto_0
    return-void
.end method
