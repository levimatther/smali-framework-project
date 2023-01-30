.class public Lcom/android/incallui/rtt/impl/RttChatFragment;
.super Landroidx/fragment/app/Fragment;
.source "RttChatFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;
.implements Lcom/android/incallui/rtt/protocol/RttCallScreen;
.implements Lcom/android/incallui/incall/protocol/InCallScreen;
.implements Lcom/android/incallui/incall/protocol/InCallButtonUi;
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;,
        Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;
    }
.end annotation


# static fields
.field private static final ARG_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final MENU_OPTIONS_ADD_CALL:I = 0x2

.field private static final MENU_OPTIONS_HIDE_RTT_INTERFACE:I = 0x4

.field private static final MENU_OPTIONS_HOLD_CALL:I = 0x3

.field private static final MENU_OPTIONS_MERGE:I = 0xc

.field private static final MENU_OPTIONS_MUTE:I = 0x1

.field private static final MENU_OPTIONS_SOUND:I = 0x7

.field private static final MENU_OPTIONS_SPEAKER:I = 0x6

.field private static final MENU_OPTIONS_SWAP_CALL:I = 0x9

.field private static final MENU_OPTIONS_SWITCH_TO_VOICE_CALL:I = 0x5

.field private static final MENU_OPTIONS_UNMUTE:I = 0x8

.field private static final MENU_OPTIONS_VOICE:I = 0xb

.field private static final RTT_MESSAGE_SEND_DELAY:I = 0x3e8

.field private static final RTT_REQUEST_DIALOG:Ljava/lang/String; = "tag_rtt_request_dialog"

.field private static final SHOW_RTT_INTERFACE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RttChatFragment"

.field private static final mInputMethodReceiveArray:[Ljava/lang/String;

.field public static oldrb:Landroid/widget/RadioButton;

.field private static rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# instance fields
.field private adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

.field private call:Lcom/android/incallui/call/DialerCall;

.field private chronometer:Landroid/widget/Chronometer;

.field private editText:Landroid/widget/EditText;

.field private emergencyMenu:Ljava/util/ArrayList;
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

.field private endCallButton:Landroid/widget/ImageView;

.field private holdCall:Lcom/android/incallui/call/DialerCall;

.field private holdCallNameOrNumber:Landroid/widget/TextView;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field private inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

.field private isClearingInput:Z

.field private isKT9InputMethod:Z

.field private isTimerStarted:Z

.field private lastMessage:Ljava/lang/CharSequence;

.field public lastitem:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

.field private mAudioState:Landroid/telecom/CallAudioState;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogMenuBar:Landroid/widget/MenuBar;

.field private mInputMethodBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSimpleMode:Z

.field private mMoreRoute:Z

.field private mRttHandler:Landroid/os/Handler;

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

.field private menuBar:Landroid/widget/MenuBar;

.field private nameTextView:Landroid/widget/TextView;

.field private newRoute:I

.field private onHoldNumber:Ljava/lang/String;

.field private overflowMenu:Lcom/android/incallui/rtt/impl/RttOverflowMenu;

.field private pendingMessage:Ljava/lang/CharSequence;

.field private primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

.field private rb:Landroid/widget/RadioButton;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

.field private rttHold:Landroid/widget/TextView;

.field private shouldAutoScrolling:Z

.field private submitButton:Landroid/widget/ImageButton;

.field private supportBluetooth:Z

.field private supportDowngrade:Z

.field private supportHeadset:Z

.field private supportHold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "kika.ime.state.on.kt9"

    const-string v1, "kika.ime.state.on.Kt9"

    const-string v2, "kika.ime.state.on.KT9"

    const-string v3, "kika.ime.state.on.abc"

    const-string v4, "kika.ime.state.on.Abc"

    const-string v5, "kika.ime.state.on.ABC"

    const-string v6, "kika.ime.state.on.123"

    const-string v7, "kika.ime.state.on.Symbols"

    .line 206
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mInputMethodReceiveArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 189
    iput v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    .line 199
    invoke-static {}, Lcom/android/incallui/incall/protocol/PrimaryCallState;->createEmptyPrimaryCallState()Lcom/android/incallui/incall/protocol/PrimaryCallState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    const-string v0, ""

    .line 204
    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastMessage:Ljava/lang/CharSequence;

    .line 205
    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->pendingMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isKT9InputMethod:Z

    .line 1659
    new-instance v0, Lcom/android/incallui/rtt/impl/RttChatFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/rtt/impl/RttChatFragment$5;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;)V

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mInputMethodBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/widget/EditText;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/rtt/impl/RttChatFragment;)Lcom/android/incallui/rtt/impl/RttChatAdapter;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isKT9InputMethod:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/incallui/rtt/impl/RttChatFragment;Z)Z
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isKT9InputMethod:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/incallui/rtt/impl/RttChatFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/rtt/impl/RttChatFragment;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->resumeInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/rtt/impl/RttChatFragment;)Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/incallui/rtt/impl/RttChatFragment;Z)Z
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->shouldAutoScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rb:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/incallui/rtt/impl/RttChatFragment;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rb:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/incallui/rtt/impl/RttChatFragment;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->newRoute:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I
    .locals 0

    .line 126
    iput p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->newRoute:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/app/Dialog;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mIsSimpleMode:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    return p0
.end method

.method private addCallClick()V
    .locals 10

    .line 1675
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c002b

    const/4 v2, 0x0

    .line 1676
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0901ee

    .line 1677
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1678
    iget-boolean v4, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mIsSimpleMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f11000b

    goto :goto_0

    :cond_0
    const v4, 0x7f110058

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1680
    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1681
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    const v4, 0x7f090042

    .line 1682
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1684
    iget-boolean v5, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mIsSimpleMode:Z

    if-eqz v5, :cond_1

    .line 1685
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1688
    :cond_1
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1689
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1690
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1691
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1692
    invoke-virtual {v3, v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1693
    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1694
    new-instance v4, Lcom/android/incallui/rtt/impl/RttChatFragment$6;

    invoke-direct {v4, p0, v3}, Lcom/android/incallui/rtt/impl/RttChatFragment$6;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f110057

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1716
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f110173

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1717
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f110055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1718
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1719
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1720
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    new-instance v4, Lcom/android/incallui/rtt/impl/RttChatFragment$7;

    invoke-direct {v4, p0, v8, v0}, Lcom/android/incallui/rtt/impl/RttChatFragment$7;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Ljava/util/List;Landroid/content/Context;)V

    const v0, 0x7f0901df

    .line 1760
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1761
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1762
    new-instance v1, Lcom/android/incallui/rtt/impl/RttChatFragment$8;

    invoke-direct {v1, p0, v3}, Lcom/android/incallui/rtt/impl/RttChatFragment$8;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1780
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    .line 1781
    invoke-virtual {v0, v1, v5}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x50

    .line 1783
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1784
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1785
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method

.method private freezeRttConvUI(Z)V
    .locals 4

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freeze :- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RttChatFragment.freezeRttConvUI"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 786
    :try_start_0
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 787
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 789
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 790
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    .line 596
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 597
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/incallui/rtt/impl/RttChatFragment;
    .locals 2

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "call_id"

    .line 228
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance p0, Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-direct {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;-><init>()V

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private resumeInput(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 649
    iput-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isClearingInput:Z

    .line 650
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x0

    .line 652
    iput-boolean p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isClearingInput:Z

    return-void
.end method

.method private showRouteDialog(Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1390
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1391
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00f2

    const/4 v3, 0x0

    .line 1392
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090301

    .line 1393
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1394
    iget-boolean v4, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mIsSimpleMode:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    .line 1395
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v2, 0x7f090314

    .line 1397
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f09026e

    .line 1398
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1399
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1102a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-boolean v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mIsSimpleMode:Z

    if-eqz v2, :cond_1

    .line 1401
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f11000b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1402
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f1102f6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1400
    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090126

    .line 1403
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1405
    new-instance v4, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6, p1}, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1406
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1407
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1408
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1409
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    .line 1410
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {p1, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne p2, v4, :cond_4

    .line 1412
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 1414
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1415
    :cond_2
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 1417
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1419
    :cond_3
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1422
    :cond_4
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 1424
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1425
    :cond_5
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v4

    if-ne v4, v9, :cond_6

    .line 1427
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1429
    :cond_6
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 1432
    :goto_1
    new-instance v4, Lcom/android/incallui/rtt/impl/RttChatFragment$3;

    invoke-direct {v4, p0, p2}, Lcom/android/incallui/rtt/impl/RttChatFragment$3;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1474
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    .line 1475
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 1476
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x400

    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1477
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1478
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1479
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1480
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 1481
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2, v1, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1483
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    new-instance p2, Lcom/android/incallui/rtt/impl/RttChatFragment$4;

    invoke-direct {p2, p0, v2}, Lcom/android/incallui/rtt/impl/RttChatFragment$4;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Landroid/widget/ListView;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1507
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    .line 1508
    invoke-virtual {p1, p2, v6}, Landroid/view/Window;->setLayout(II)V

    const/16 p2, 0x50

    .line 1510
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 1511
    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x3f000000    # 0.5f

    .line 1512
    invoke-virtual {p1, p2}, Landroid/view/Window;->setDimAmount(F)V

    .line 1516
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->removeMenuBar()V

    return-void
.end method


# virtual methods
.method public addMenu()V
    .locals 19

    move-object/from16 v0, p0

    .line 1314
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    .line 1315
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->holdCall:Lcom/android/incallui/call/DialerCall;

    .line 1316
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_9

    .line 1317
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v1

    const v2, 0x7f11020e

    const/16 v3, 0xb

    const v4, 0x7f0601af

    const v5, 0x7f11040a

    const v6, 0x7f11040b

    const/4 v7, 0x0

    const v8, 0x7f11040c

    const/4 v9, 0x6

    const v10, 0x7f110406

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    .line 1318
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v14, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v14, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v10, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v10, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportDowngrade:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isTMOFamilySimCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1323
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v8, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    :cond_0
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v7, v6, v5, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1327
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v13}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v2, v12, v13}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    return-void

    .line 1332
    :cond_1
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->holdCall:Lcom/android/incallui/call/DialerCall;

    const v14, 0x7f110414

    const/4 v15, 0x3

    const v16, 0x7f110279

    const/16 v17, 0x8

    const v18, 0x7f1102a9

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1334
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1335
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v12, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v12, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1337
    :cond_2
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v4, v5, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    :goto_0
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v8, 0x7f11028e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportDowngrade:Z

    if-eqz v1, :cond_3

    .line 1345
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_3
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHold:Z

    if-eqz v1, :cond_4

    .line 1350
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    :cond_4
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    const v3, 0x7f11040a

    invoke-virtual {v1, v7, v6, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1354
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v13}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v13}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    return-void

    .line 1358
    :cond_5
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->holdCall:Lcom/android/incallui/call/DialerCall;

    if-nez v1, :cond_9

    .line 1360
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1361
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v4, v5, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1363
    :cond_6
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v4, v5, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    :goto_1
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v5, 0x7f1102a2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportDowngrade:Z

    if-eqz v1, :cond_7

    .line 1371
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_7
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHold:Z

    if-eqz v1, :cond_8

    .line 1376
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    :cond_8
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    const v3, 0x7f11040a

    invoke-virtual {v1, v7, v6, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1380
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v13}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v13}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_9
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 541
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 459
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastMessage:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public enableButton(IZ)V
    .locals 0

    return-void
.end method

.method public getAnswerAndDialpadContainerResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 667
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "call_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInCallButtonUiFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getInCallScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getRttCallScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getRttTranscriptMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->getRttTranscriptMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowingLocationUi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onTextChanged$0$RttChatFragment(Ljava/lang/CharSequence;)V
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send message handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttChatFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->pendingMessage:Ljava/lang/CharSequence;

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->sendRttMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAudioRouteSelected(I)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->setAudioRoute(I)V

    return-void
.end method

.method public onAudioRouteSelectorDismiss()V
    .locals 0

    return-void
.end method

.method public onClickCSK()Z
    .locals 4

    .line 1090
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1097
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mRttHandler:Landroid/os/Handler;

    const-string v2, ""

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isKT9InputMethod:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastMessage:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mRttHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1099
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->pendingMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RttChatFragment"

    const-string v3, "onClickRSK has message to send in handler, send it before send line breaker..."

    .line 1100
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->sendRttMessage(Ljava/lang/CharSequence;)V

    .line 1103
    :cond_0
    iput-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->pendingMessage:Ljava/lang/CharSequence;

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->submitLocalMessage()V

    const/4 v0, 0x1

    .line 1107
    iput-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isClearingInput:Z

    .line 1108
    iget-object v3, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    iput-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isClearingInput:Z

    .line 1111
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/operatorutils/OperatorConfig;->isSendCRLF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1112
    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    const-string v3, "\r"

    invoke-interface {v2, v3}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;->onLocalMessage(Ljava/lang/String;)V

    .line 1115
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    const-string v3, "\n"

    invoke-interface {v2, v3}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;->onLocalMessage(Ljava/lang/String;)V

    .line 1116
    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1117
    iput-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->shouldAutoScrolling:Z

    :cond_3
    return v1
.end method

.method public onClickLSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 2

    const-string v0, "RttChatFragment"

    const-string v1, "onClickRSK"

    .line 1132
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 260
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RttChatFragment.onCreate"

    const/4 v3, 0x0

    .line 261
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const-class v1, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;

    .line 263
    invoke-static {p0, v1}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;

    .line 264
    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;->newInCallButtonUiDelegate()Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    if-eqz p1, :cond_0

    .line 266
    invoke-interface {v1, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 270
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mRttHandler:Landroid/os/Handler;

    .line 271
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    :goto_0
    sget-object v1, Lcom/android/incallui/rtt/impl/RttChatFragment;->mInputMethodReceiveArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 273
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mInputMethodBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mInputMethodBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mIsSimpleMode:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "RttChatFragment"

    const-string v0, "onCreateView"

    .line 316
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0c008b

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090273

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    .line 322
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 323
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 324
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 326
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 327
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    new-instance v0, Lcom/android/incallui/rtt/impl/RttChatFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/rtt/impl/RttChatFragment$1;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    .line 357
    invoke-virtual {p2, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 359
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    .line 360
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    .line 361
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

    .line 362
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->addMenu()V

    const p2, 0x7f09027c

    .line 365
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    sput-object p2, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 367
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 368
    sget-object p2, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 370
    sget-object p2, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 372
    new-instance p2, Lcom/android/incallui/rtt/impl/RttChatAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2, p0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;-><init>(Landroid/content/Context;Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;)V

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    .line 373
    sget-object v2, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 375
    sget-object p2, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->shouldAutoScrolling:Z

    .line 376
    sget-object p2, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/incallui/rtt/impl/RttChatFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/rtt/impl/RttChatFragment$2;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const p2, 0x7f090277

    .line 397
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->endCallButton:Landroid/widget/ImageView;

    const p2, 0x7f09027a

    .line 403
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->nameTextView:Landroid/widget/TextView;

    const p2, 0x7f09027d

    .line 404
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Chronometer;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->chronometer:Landroid/widget/Chronometer;

    const p2, 0x7f090278

    .line 405
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttHold:Landroid/widget/TextView;

    .line 408
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isSimpleMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 409
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->nameTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 410
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->chronometer:Landroid/widget/Chronometer;

    invoke-virtual {p2, v1, v3}, Landroid/widget/Chronometer;->setTextSize(IF)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->nameTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p2, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 413
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->chronometer:Landroid/widget/Chronometer;

    invoke-virtual {p2, v2, v3}, Landroid/widget/Chronometer;->setTextSize(IF)V

    :goto_0
    const p2, 0x7f090084

    .line 417
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->holdCallNameOrNumber:Landroid/widget/TextView;

    const p2, 0x7f09027b

    .line 419
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 425
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mAudioState:Landroid/telecom/CallAudioState;

    .line 426
    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p2

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    .line 429
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p2

    const/4 v2, 0x4

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    .line 431
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCreateView supportBluetooth = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , supportHeadset = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/OperatorConfig;->isDefDialerSupportRttDowngrade()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportDowngrade:Z

    .line 435
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/OperatorConfig;->isDefDialerDisplayRttHoldButton()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHold:Z

    .line 436
    iget-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    if-eqz p2, :cond_3

    goto :goto_3

    .line 439
    :cond_3
    iput-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    goto :goto_4

    .line 437
    :cond_4
    :goto_3
    iput-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    :goto_4
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 306
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "RttChatFragment"

    const-string v1, "  onDestroy  "

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->dismissOptionMenu()V

    .line 309
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tct/common/RttManager;->setPrimaryInfo(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 513
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string v0, "RttChatFragment.onDestroyView"

    .line 514
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onInCallButtonUiUnready()V

    .line 516
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenUnready()V

    .line 518
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 519
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 520
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mRttHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 530
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 531
    iput-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mRttHandler:Landroid/os/Handler;

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mInputMethodBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mInputMethodBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onEditorAction actionId  ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "RttChatFragment"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->submitButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    const-string p1, "RttChatFragment"

    if-eqz p2, :cond_0

    const-string p2, "onFocusChange--focused"

    .line 1649
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->setFocusForEditText()V

    goto :goto_0

    :cond_0
    const-string p2, "onFocusChange--unfocused"

    .line 1652
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 8

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHiddenChanged hidden = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttChatFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v0

    const/4 v1, 0x2

    const v2, 0x7f0601af

    const v3, 0x7f11040a

    const v4, 0x7f11040b

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RttChatFragment onHiddenChanged call.isEmergencyCall() = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v7}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "yang"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v7, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v4, v3, v7}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 243
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v0, v2, v1, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 244
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v7, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v4, v3, v7}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 248
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 249
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v0, v2, v1, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 250
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 255
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onInCallScreenDialpadVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onInCallShowDialpad(Z)V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v1, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_1
    return v0
.end method

.method public onOptionMenuClick(I)V
    .locals 13

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1154
    invoke-direct {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->addCallClick()V

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x4

    const-string v2, "RttChatFragment"

    if-ne p1, v1, :cond_1

    const-string p1, "onOptionMenuClick  menuId =4"

    .line 1157
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/InCallActivity;

    .line 1159
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->hideOrShowRttInterface()V

    goto/16 :goto_4

    :cond_1
    const v1, 0x7f0601af

    const v3, 0x7f11040a

    const v4, 0x7f11040b

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_10

    if-ne p1, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v8, 0x5

    if-ne p1, v8, :cond_3

    const-string p1, "switch to voice call"

    .line 1183
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->stopRttCall()V

    goto/16 :goto_4

    :cond_3
    const/4 v8, 0x3

    const/4 v9, 0x7

    const/4 v10, 0x6

    if-eq p1, v10, :cond_8

    if-ne p1, v9, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    const-string p1, "onClick MENU_OPTIONS_SWAP_CALL"

    .line 1263
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, v7}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->holdClicked(Z)V

    goto/16 :goto_4

    :cond_5
    const/16 v0, 0xb

    if-ne p1, v0, :cond_6

    const-string p1, "onClick MENU_OPTIONS_VOICE"

    .line 1267
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, v0}, Lcom/android/tct/common/RttManager;->rttDowngradeClicked(Lcom/android/incallui/call/DialerCall;)V

    goto/16 :goto_4

    :cond_6
    if-ne p1, v8, :cond_7

    const-string p1, "onClick MENU_OPTIONS_HOLD_CALL"

    .line 1272
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, v7}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->holdClicked(Z)V

    goto/16 :goto_4

    :cond_7
    const/16 v0, 0xc

    if-ne p1, v0, :cond_13

    .line 1277
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->mergeClicked()V

    goto/16 :goto_4

    .line 1190
    :cond_8
    :goto_0
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    .line 1194
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onOptionMenuClick  mMoreRoute = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " ,  supportHeadset = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-boolean v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    if-eqz v2, :cond_b

    .line 1196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    iget-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    const v2, 0x7f110281

    const v3, 0x7f11028d

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    if-nez v1, :cond_9

    .line 1198
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1199
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1200
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110282

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1201
    invoke-direct {p0, p1, v7}, Lcom/android/incallui/rtt/impl/RttChatFragment;->showRouteDialog(Ljava/util/ArrayList;I)V

    goto/16 :goto_4

    .line 1202
    :cond_9
    iget-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    const v4, 0x7f110284

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    if-eqz v1, :cond_a

    .line 1203
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1204
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1205
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->showRouteDialog(Ljava/util/ArrayList;I)V

    goto/16 :goto_4

    .line 1206
    :cond_a
    iget-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    if-eqz v1, :cond_13

    .line 1207
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1208
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1209
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1210
    invoke-direct {p0, p1, v8}, Lcom/android/incallui/rtt/impl/RttChatFragment;->showRouteDialog(Ljava/util/ArrayList;I)V

    goto/16 :goto_4

    .line 1213
    :cond_b
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    const v8, 0x7f1100ec

    const v11, 0x7f11040c

    if-ne v2, v5, :cond_d

    .line 1214
    iput v7, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->newRoute:I

    .line 1216
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    if-eqz p1, :cond_f

    .line 1217
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1218
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v2, v5, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1219
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v2, v5, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1220
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1221
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    invoke-virtual {p1, v6, v4, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1222
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1, v7}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1223
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v1, v0, v7}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_1

    .line 1226
    :cond_c
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v2, v5, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1227
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v2, v5, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1228
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1229
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v6, v4, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1230
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1, v7}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1231
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v1, v0, v7}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_1

    .line 1235
    :cond_d
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    if-ne p1, v7, :cond_f

    .line 1236
    iput v5, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->newRoute:I

    .line 1237
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    if-eqz p1, :cond_f

    .line 1238
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1239
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v2, v5, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1240
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1241
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1242
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    invoke-virtual {p1, v6, v4, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1243
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1, v7}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1244
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v1, v0, v7}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_1

    .line 1247
    :cond_e
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v2, v5, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1248
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1249
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1250
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v6, v4, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1251
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1, v7}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1252
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v1, v0, v7}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 1259
    :cond_f
    :goto_1
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    iget v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->newRoute:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    goto/16 :goto_4

    .line 1162
    :cond_10
    :goto_2
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

    const v2, 0x7f1102a9

    const v8, 0x7f110279

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1163
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, v6, v7}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->muteClicked(ZZ)V

    .line 1166
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1167
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v9, v10, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1168
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1172
    :cond_11
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, v7, v7}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->muteClicked(ZZ)V

    .line 1173
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1174
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v9, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1175
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1179
    :cond_12
    :goto_3
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p1, v6, v4, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1180
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1, v7}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1181
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {p1, v1, v0, v7}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_13
    :goto_4
    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public onRemoteMessage(Ljava/lang/String;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->addRemoteMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreRttChat(Lcom/android/dialer/rtt/RttTranscript;)V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->onRestoreRttChat(Lcom/android/dialer/rtt/RttTranscript;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RttChatFragment.onRestoreRttChat"

    .line 642
    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 644
    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->resumeInput(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 563
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 565
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/operatorutils/IOperatorManager;->showRttHelpInfo(Landroid/content/Context;)Z

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v0

    const/4 v1, 0x2

    const v2, 0x7f0601af

    const v3, 0x7f11040a

    const v4, 0x7f11040b

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v7, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v4, v3, v7}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 572
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 573
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v0, v2, v1, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v7, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v4, v3, v7}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 577
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 578
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v0, v2, v1, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 581
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onRttScreenStart()V
    .locals 2

    const-string v0, "RttChatFragment"

    const-string v1, "onRttScreenStart"

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->refreshMuteState()V

    .line 625
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;->onRttCallScreenUiReady()V

    .line 626
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 627
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onRttScreenStop()V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;->onRttCallScreenUiUnready()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, "RttChatFragment.onStart"

    .line 555
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 556
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 557
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->onRttScreenStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "RttChatFragment.onStop"

    .line 587
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 588
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 592
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->onRttScreenStop()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 466
    iget-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isClearingInput:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 474
    :cond_1
    iget-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isKT9InputMethod:Z

    const-string p3, "RttChatFragment"

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastMessage:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-le p2, p4, :cond_2

    goto :goto_0

    .line 481
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget-object p4, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastMessage:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_3

    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastMessage:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->pendingMessage:Ljava/lang/CharSequence;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 482
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Send message normal: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastMessage:Ljava/lang/CharSequence;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/android/incallui/rtt/impl/RttChatFragment;->sendRttMessage(Ljava/lang/CharSequence;)V

    .line 485
    :cond_3
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mRttHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    const/4 p3, 0x0

    .line 486
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 488
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mRttHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/incallui/rtt/impl/-$$Lambda$RttChatFragment$Pcw6OJuPRCE1r2LRW-bvcpLDlFw;

    invoke-direct {p3, p0, p1}, Lcom/android/incallui/rtt/impl/-$$Lambda$RttChatFragment$Pcw6OJuPRCE1r2LRW-bvcpLDlFw;-><init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p2, "KT9 or delete, send directly..."

    .line 475
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->sendRttMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUpdateLocalMessage(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 1310
    :cond_0
    sget-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onUpdateRemoteMessage(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 1299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateRemoteMessage shouldAutoScrolling = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->shouldAutoScrolling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttChatFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->shouldAutoScrolling:Z

    if-eqz v0, :cond_1

    .line 1301
    sget-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 285
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "RttChatFragment.onViewCreated"

    const/4 v0, 0x0

    .line 286
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    const-class p1, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 289
    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 290
    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;->newInCallScreenDelegate()Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    .line 291
    const-class p1, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegateFactory;

    .line 292
    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegateFactory;

    .line 293
    invoke-interface {p1, p0}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegateFactory;->newRttCallScreenDelegate(Lcom/android/incallui/rtt/protocol/RttCallScreen;)Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    .line 295
    invoke-interface {p1, p0}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;->initRttCallScreenDelegate(Lcom/android/incallui/rtt/protocol/RttCallScreen;)V

    .line 297
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p1, p0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenDelegateInit(Lcom/android/incallui/incall/protocol/InCallScreen;)V

    .line 298
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenReady()V

    .line 299
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, p0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onInCallButtonUiReady(Lcom/android/incallui/incall/protocol/InCallButtonUi;)V

    .line 300
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p1

    .line 301
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;->getCurrentCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    .line 300
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tct/common/RttManager;->rttChatFragment_onViewCreated(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Landroid/widget/EditText;)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->computeChangeOfLocalMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->adapter:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->addLocalMessage(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttCallScreenDelegate:Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;->onLocalMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAudioState(Landroid/telecom/CallAudioState;)V
    .locals 18

    move-object/from16 v0, p0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  ,audioState.isMuted=  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "RttChatFragment"

    invoke-static {v5, v1, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v1}, Landroid/widget/MenuBar;->dismissOptionMenu()V

    .line 902
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    const/4 v4, 0x2

    and-int/2addr v1, v4

    const/4 v6, 0x1

    .line 999
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-ne v1, v4, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v3

    .line 902
    :goto_0
    iput-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    const/4 v8, 0x4

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHeadset:Z

    .line 906
    iget-boolean v9, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportBluetooth:Z

    if-nez v9, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 909
    :cond_2
    iput-boolean v3, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    goto :goto_3

    .line 907
    :cond_3
    :goto_2
    iput-boolean v6, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    .line 912
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    const/16 v9, 0x8

    const v10, 0x7f0601af

    const v11, 0x7f11040a

    const v12, 0x7f11040b

    const v13, 0x7f1100ec

    const v14, 0x7f11040c

    const/4 v15, 0x6

    const v16, 0x7f1102a3

    const/16 v17, 0x7

    if-ne v1, v9, :cond_7

    .line 913
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_7

    .line 915
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 916
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v9, v8, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 917
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v8, v9, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 918
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v8, v9, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 919
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    if-eqz v1, :cond_4

    .line 920
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v8, v9, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 922
    :cond_4
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v8, v9, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 925
    :goto_4
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v8, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12, v11, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 926
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v1, v8, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v8, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v8, v4, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_6

    .line 929
    :cond_5
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v15, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 930
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v8, v9, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 931
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v8, v9, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 932
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    if-eqz v1, :cond_6

    .line 933
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v8, v9, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 935
    :cond_6
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v8, v9, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 937
    :goto_5
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v8, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12, v11, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 938
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v1, v8, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v8, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v8, v4, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 944
    :cond_7
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    if-eq v1, v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_8

    goto/16 :goto_9

    .line 966
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    if-ne v1, v6, :cond_e

    const-string v1, "audioState.getRoute() == CallAudioState.ROUTE_EARPIECE"

    .line 967
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_e

    .line 969
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 970
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 971
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 972
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 973
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    if-eqz v1, :cond_9

    .line 974
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 976
    :cond_9
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 978
    :goto_7
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v5, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12, v11, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 979
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v1, v5, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v5, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v5, v4, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_a

    .line 982
    :cond_a
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 983
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 984
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 985
    iget-boolean v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    if-eqz v1, :cond_b

    .line 986
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    .line 988
    :cond_b
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 990
    :goto_8
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v5, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12, v11, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 991
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v1, v5, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v5, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v5, v4, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_a

    :cond_c
    :goto_9
    const-string v1, "ROUTE_BLUETOOTH  or ROUTE_WIRED_HEADSET "

    .line 945
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_e

    .line 947
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 948
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 949
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 950
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 951
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 952
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v5, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->emergencyMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12, v11, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 953
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v1, v5, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v5, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v5, v4, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_a

    .line 956
    :cond_d
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 957
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 958
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 959
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 960
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v5, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12, v11, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 961
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v1, v5, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v5, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v5, v4, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 998
    :cond_e
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    const v2, 0x7f1102a9

    const v5, 0x7f110279

    if-eqz v1, :cond_10

    .line 999
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1000
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1001
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1002
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1004
    :cond_f
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12, v11, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1005
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v2, v4, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_b

    .line 1009
    :cond_10
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v13, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1010
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1011
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v8, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1013
    :cond_11
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1014
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12, v11, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1015
    iget-object v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v1, v2, v4, v6}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_12
    :goto_b
    return-void
.end method

.method public setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V
    .locals 12

    .line 703
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryCallState;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RttChatFragment.setCallState"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;

    if-nez v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 711
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isTimerStarted:Z

    const/4 v2, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-ne v0, v2, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    .line 712
    iget-object v5, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->chronometer:Landroid/widget/Chronometer;

    .line 713
    invoke-virtual {v5}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v1

    const-string v5, "starting timer with base: %d"

    .line 712
    invoke-static {v3, v5, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->chronometer:Landroid/widget/Chronometer;

    iget-wide v5, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectTimeMillis:J

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 714
    invoke-virtual {v0, v5, v6}, Landroid/widget/Chronometer;->setBase(J)V

    .line 718
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->chronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 719
    iput-boolean v4, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->isTimerStarted:Z

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->call:Lcom/android/incallui/call/DialerCall;

    const/16 v5, 0x8

    if-eqz v0, :cond_7

    .line 722
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-ne v0, v2, :cond_7

    .line 724
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v6, 0x2

    const v7, 0x7f11020e

    const/16 v8, 0xb

    if-nez v0, :cond_5

    .line 726
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 728
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mAudioModeProvider:Lcom/android/incallui/audiomode/AudioModeProvider;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f110279

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f1102a9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    :goto_0
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->mMoreRoute:Z

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f1102a3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f11040c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f1102a2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f110406

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportDowngrade:Z

    if-eqz v0, :cond_4

    .line 745
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v9, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_4
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportHold:Z

    if-eqz v0, :cond_6

    .line 750
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v8, 0x7f110414

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 755
    :cond_5
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->supportDowngrade:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 756
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    const v2, 0x7f11040b

    const v7, 0x7f11040a

    iget-object v8, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 763
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0601af

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 764
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {v0, v2, v6, v4}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 768
    :cond_7
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRemotelyHeld:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-boolean v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRemotelyHeld:Z

    if-nez v0, :cond_8

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "RTT call held by peer, notify conversation UI"

    .line 769
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    invoke-direct {p0, v4}, Lcom/android/incallui/rtt/impl/RttChatFragment;->freezeRttConvUI(Z)V

    goto :goto_3

    .line 771
    :cond_8
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRemotelyHeld:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-boolean v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRemotelyHeld:Z

    if-eqz v0, :cond_a

    .line 772
    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-eq v0, v5, :cond_9

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "RTT call unheld by peer, notify conversation UI"

    .line 773
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    invoke-direct {p0, v1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->freezeRttConvUI(Z)V

    goto :goto_3

    :cond_9
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "RTT call unheld by peer, but state is onHold"

    .line 776
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    :cond_a
    :goto_3
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    return-void
.end method

.method public setCameraSwitched(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0

    return-void
.end method

.method public setFocusForEditText()V
    .locals 3

    .line 1634
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1635
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1636
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1637
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1638
    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public setHold(Z)V
    .locals 0

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V
    .locals 3

    .line 672
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RttChatFragment.setPrimary"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/incallui/incall/protocol/PrimaryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tct/common/RttManager;->setPrimaryInfo(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    return-void
.end method

.method public setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V
    .locals 5

    .line 679
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/SecondaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RttChatFragment.setSecondary"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 681
    iget-boolean v2, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    const/16 v3, 0x46

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 683
    sget-object v2, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v4, 0x48

    invoke-virtual {v2, v1, v4, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    if-eqz v0, :cond_3

    .line 685
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isConference:Z

    if-eqz v0, :cond_0

    .line 686
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->holdCallNameOrNumber:Landroid/widget/TextView;

    const v0, 0x7f110153

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 688
    :cond_0
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->nameIsNumber:Z

    if-eqz v0, :cond_1

    .line 689
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->holdCallNameOrNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->onHoldNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->holdCallNameOrNumber:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 696
    :cond_2
    sget-object p1, Lcom/android/incallui/rtt/impl/RttChatFragment;->rttRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 697
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->relativeLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSecondaryNumber(Ljava/lang/String;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->onHoldNumber:Ljava/lang/String;

    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 0

    return-void
.end method

.method public showAudioRouteSelector()V
    .locals 3

    .line 1032
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->getCurrentAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->newInstance(Landroid/telecom/CallAudioState;)Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    move-result-object v0

    .line 1033
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showButton(IZ)V
    .locals 11

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    const v0, 0x7f0601af

    const v1, 0x7f11040a

    const v2, 0x7f11040b

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f110416

    const/16 v6, 0xc

    if-eqz p2, :cond_0

    .line 858
    iget-object v7, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 859
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v5, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p2, v3, v2, v1, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 862
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p2, v0, v4}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 863
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {p2, v0, p1, v4}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 864
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 865
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 867
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    iget-object v5, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {p2, v3, v2, v1, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 868
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p2, v0, v4}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 869
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment;->menuBar:Landroid/widget/MenuBar;

    invoke-static {p2, v0, p1, v4}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showLocationUi(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0

    return-void
.end method

.method public showNoteSentToast()V
    .locals 0

    return-void
.end method

.method public showVbButton(Z)V
    .locals 0

    return-void
.end method

.method public updataMenu(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public updateButtonStates()V
    .locals 0

    return-void
.end method

.method public updateInCallButtonUiColors()V
    .locals 0

    return-void
.end method

.method public updateInCallScreenColors()V
    .locals 0

    return-void
.end method

.method public updateVbByAudioMode(Landroid/telecom/CallAudioState;)V
    .locals 0

    return-void
.end method
