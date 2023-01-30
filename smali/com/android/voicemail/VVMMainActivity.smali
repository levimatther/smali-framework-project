.class public Lcom/android/voicemail/VVMMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VVMMainActivity.java"

# interfaces
.implements Lcom/android/dialer/app/calllog/CallLogFragment$FragmentInteraction;
.implements Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;
.implements Lcom/android/dialer/app/calllog/CallLogFragment$HostInterface;
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final BLOCKNUMBER_TYPE:I = 0x1

.field private static final KEY_IS_VVM_REFRESH_TIME:Ljava/lang/String; = "is_vvm_refresh_time"

.field private static final TAG:Ljava/lang/String; = "VVMMainActivity"

.field public static final UNBLOCKNUMBER_TYPE:I = 0x2

.field private static final VVM_REFRESH_GAP_TIME:J = 0x2bf20L

.field public static VoicemailActivities:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final menu_add_to_exsit_contact:I = 0x8

.field private static final menu_block_number:I = 0x9

.field private static final menu_call:I = 0x5

.field private static final menu_delete:I = 0x1

.field private static final menu_mark_read:I = 0x3

.field private static final menu_mark_unread:I = 0x2

.field private static final menu_save_as_new_contact:I = 0x7

.field private static final menu_send_message:I = 0x6

.field private static final menu_settings:I = 0xc

.field private static final menu_share:I = 0xb

.field private static final menu_unblock_number:I = 0xa

.field private static final menu_view_as_text:I = 0x4


# instance fields
.field private flag:Z

.field private isFirst:Z

.field private mCallLogFragment:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

.field private mContact:Lcom/android/dialer/dialercontact/DialerContact;

.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mMenuOptions:Ljava/util/ArrayList;
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

.field mPreferences:Landroid/content/SharedPreferences;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

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

.field private menu_setting:Ljava/util/ArrayList;
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

.field private rttCallDialog:Lcom/android/incallui/RttCallDialog;

.field private updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/voicemail/VVMMainActivity;->VoicemailActivities:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mMenuOptions:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu_setting:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/voicemail/VVMMainActivity;->flag:Z

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/voicemail/VVMMainActivity;->isFirst:Z

    .line 447
    new-instance v0, Lcom/android/voicemail/VVMMainActivity$4;

    invoke-direct {v0, p0}, Lcom/android/voicemail/VVMMainActivity$4;-><init>(Lcom/android/voicemail/VVMMainActivity;)V

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/voicemail/VVMMainActivity;->updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/incallui/RttCallDialog;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/voicemail/VVMMainActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/voicemail/VVMMainActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/voicemail/VVMMainActivity;)Landroid/widget/MenuBar;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/voicemail/VVMMainActivity;->mMenuBar:Landroid/widget/MenuBar;

    return-object p0
.end method

.method public static getShowIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 502
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/voicemail/VVMMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private initMenuBar()V
    .locals 6

    .line 158
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mMenuBar:Landroid/widget/MenuBar;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1102fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110302

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110301

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1102f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110308

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110418

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f11005b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110074

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110304

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f110309

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->menu_setting:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private optionForCall()V
    .locals 4

    const-string v0, "VVMMainActivity"

    const-string v1, "optionForCall"

    .line 407
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phone number is null"

    .line 409
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    new-instance v0, Lcom/android/voicemail/VVMMainActivity$3;

    invoke-direct {v0, p0}, Lcom/android/voicemail/VVMMainActivity$3;-><init>(Lcom/android/voicemail/VVMMainActivity;)V

    .line 435
    new-instance v1, Lcom/android/incallui/RttCallDialog;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/RttCallDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V

    iput-object v1, p0, Lcom/android/voicemail/VVMMainActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    .line 436
    invoke-virtual {v1}, Lcom/android/incallui/RttCallDialog;->show()V

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v2, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v2, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    sget-object v3, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v1, v2, v3}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 440
    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 438
    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static shutdown()V
    .locals 3

    .line 117
    sget-object v0, Lcom/android/voicemail/VVMMainActivity;->VoicemailActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 118
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicemailActivities:size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/voicemail/VVMMainActivity;->VoicemailActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VVMMainActivity"

    invoke-static {v2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/android/voicemail/VVMMainActivity;->VoicemailActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/voicemail/VVMMainActivity;->VoicemailActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convertCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public enableFloatingButton(Z)V
    .locals 0

    return-void
.end method

.method public hasCursor(ZI)V
    .locals 5

    const-string p2, "VVMMainActivity"

    const-string v0, "hasCursor"

    .line 199
    invoke-static {p2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const v0, 0x7f09016f

    invoke-virtual {p2, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    iput-object p2, p0, Lcom/android/voicemail/VVMMainActivity;->mCallLogFragment:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    .line 201
    invoke-virtual {p2}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/voicemail/VVMMainActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f11000c

    const v2, 0x7f110010

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p0, Lcom/android/voicemail/VVMMainActivity;->flag:Z

    .line 205
    sget-boolean p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->isUnknown:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v3, 0x7f11000d

    iget-object v4, p0, Lcom/android/voicemail/VVMMainActivity;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/voicemail/VVMMainActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v1, v0, p2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v3, 0x7f11000b

    iget-object v4, p0, Lcom/android/voicemail/VVMMainActivity;->menu_setting:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/voicemail/VVMMainActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v1, v0, p2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isActionModeStateEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onClickCSK()Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mCallLogFragment:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "VVMMainActivity"

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 277
    sget-object v2, Lcom/android/voicemail/VoiceMailCommon;->VOICE_MAIL_QUEUE:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/voicemail/VoiceMailPlayActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/voicemail/VVMMainActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "getExpandCollapseListener"

    .line 281
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "recyclerView is NULL"

    .line 273
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 6

    const-string v0, "VVMMainActivity"

    const-string v1, "onClickLSK Refresh"

    .line 243
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 247
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "is_vvm_refresh_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x2bf20

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    const v0, 0x7f11055a

    const/4 v2, 0x0

    .line 251
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mCallLogFragment:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.action.SYNC_DELTA_VOICEMAIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lcom/android/voicemail/impl/sync/OmtpVvmDeltaSyncReceiver;

    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 259
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/voicemail/VVMMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1
.end method

.method public onClickRSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    sget-object p1, Lcom/android/voicemail/VVMMainActivity;->VoicemailActivities:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 129
    iput-object p0, p0, Lcom/android/voicemail/VVMMainActivity;->mContext:Landroid/content/Context;

    .line 130
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    const-string v1, "VVMMainActivity"

    if-nez v0, :cond_0

    const-string v2, "onCreate:phoneAccountHandle:null"

    .line 132
    invoke-static {v1, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/voicemail/VVMMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "onCreate:phoneAccountHandle"

    .line 135
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VVMMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/android/voicemail/VVMMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onCreate:NUT"

    .line 141
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->isNut()Z

    move-result v0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:NUT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 146
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/voicemail/impl/VoicemailAddPinActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VVMMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v0, "onCreate"

    .line 151
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c0029

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VVMMainActivity;->setContentView(I)V

    .line 154
    invoke-direct {p0}, Lcom/android/voicemail/VVMMainActivity;->initMenuBar()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "VVMMainActivity"

    const-string v1, "onFocusChange"

    .line 513
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object p2, p0, Lcom/android/voicemail/VVMMainActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    if-eqz p1, :cond_1

    .line 519
    iget-object p2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 520
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "viewHolder.block_id = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;->updateCallLogMenubar(I)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;->updateCallLogMenubar(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VVMMainActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 491
    invoke-static {}, Lcom/android/voicemail/VVMMainActivity;->shutdown()V

    .line 492
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 11

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionMenuClick menuId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VVMMainActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 300
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VVMMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mCallLogFragment:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 311
    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->buildContactNew()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mContact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 312
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntriesList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mEntries:Ljava/util/List;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionMenuClick:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v2, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz v0, :cond_2

    .line 393
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getmVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object p1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->shareVoicemail(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo p1, "voicemailUri is null"

    .line 395
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "menu_unblock_number"

    .line 383
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v3, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget v4, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v5, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-boolean v6, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v7, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-wide v8, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iget-object v10, p0, Lcom/android/voicemail/VVMMainActivity;->updateBlockMenubar:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    invoke-interface/range {v0 .. v10}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;->onUnblockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;ZLjava/lang/Integer;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "menu_block_number"

    .line 367
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    new-instance v0, Lcom/android/voicemail/VVMMainActivity$2;

    invoke-direct {v0, p0}, Lcom/android/voicemail/VVMMainActivity$2;-><init>(Lcom/android/voicemail/VVMMainActivity;)V

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->maybeShowBlockNumberMigrationDialogNew(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "menu_add_to_exsit_contact"

    .line 362
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 364
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "menu_save_as_new_contact"

    .line 357
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 359
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "menu_send_message"

    .line 353
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "menu_call"

    .line 349
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/android/voicemail/VVMMainActivity;->optionForCall()V

    goto :goto_0

    .line 346
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "menu_view_as_text:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    if-eqz v0, :cond_3

    .line 342
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_9
    if-eqz v0, :cond_3

    .line 337
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markVoicemailAsUnread(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 318
    :pswitch_a
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getmVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    .line 319
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getmVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/voicemail/VVMMainActivity;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {p1, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onVoicemailDeleted(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 321
    new-instance p1, Lcom/android/voicemail/VVMMainActivity$1;

    invoke-direct {p1, p0, v0}, Lcom/android/voicemail/VVMMainActivity$1;-><init>(Lcom/android/voicemail/VVMMainActivity;Ljava/lang/String;)V

    .line 332
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 333
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "mRecyclerView is NULL"

    .line 307
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 183
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/android/voicemail/VVMMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CLEAR_NEW_VOICEMAILS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VVMMainActivity"

    const-string v1, ".onResume.clearing all new voicemails"

    .line 186
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->markAllNewVoicemailsAsOld(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public showDialpad()V
    .locals 0

    return-void
.end method
