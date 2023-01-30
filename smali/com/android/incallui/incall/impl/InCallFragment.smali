.class public Lcom/android/incallui/incall/impl/InCallFragment;
.super Landroidx/fragment/app/Fragment;
.source "InCallFragment.java"

# interfaces
.implements Lcom/android/incallui/incall/protocol/InCallScreen;
.implements Lcom/android/incallui/incall/protocol/InCallButtonUi;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;
.implements Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;
.implements Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;,
        Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;
    }
.end annotation


# static fields
.field private static final ADD_CODE:I = 0x3

.field private static final HOLD_CODE:I = 0x1

.field private static final MANAGE_CODE:I = 0x6

.field private static final MAX_PARTICIPANTS_LIMIT:I = 0x6

.field private static final MERGE_CODE:I = 0x5

.field private static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field private static final SHOW_RTT_INTERFACE:I = 0x8

.field private static final SWAP_CODE:I = 0x4

.field private static final SWITCH_RTT_CALL:I = 0x7

.field private static final TAG:Ljava/lang/String; = "InCallFragment"

.field private static final TTY_MODE_HCO:I = 0x2

.field private static final TTY_MODE_OFF:I = 0x0

.field private static final UNHOLD_CODE:I = 0x2

.field private static final VOLUME_BOOST:Ljava/lang/String; = "volume_boost"

.field public static oldrb:Landroid/widget/RadioButton;


# instance fields
.field private adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

.field private buttonChooser:Lcom/android/incallui/incall/impl/ButtonChooser;

.field private buttonControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/incall/impl/ButtonController;",
            ">;"
        }
    .end annotation
.end field

.field private contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

.field private context:Landroid/content/Context;

.field private endCallButton:Landroid/view/View;

.field private final handler:Landroid/os/Handler;

.field private inCallButtonGridFragment:Lcom/android/incallui/incall/impl/InCallButtonGridFragment;

.field private inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field private inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

.field private isChecked:Z

.field private isConferenceCall:Z

.field private isVisible:Z

.field public lastitem:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioState:Landroid/telecom/CallAudioState;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mDialerCall:Lcom/android/incallui/call/DialerCall;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogMenuBar:Landroid/widget/MenuBar;

.field private mIsSimpleMode:Z

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mMoreRoute:Z

.field private mMutedStringId:I

.field private mSpeakerStringId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTtyMode:I

.field private mVbButton:Landroid/widget/ImageButton;

.field private mVolumeBoostEnabled:Z

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

.field private moreOptionsMenuButton:Landroid/view/View;

.field private newRoute:I

.field private numberString:Ljava/lang/String;

.field private onHoldNumber:Ljava/lang/String;

.field private pager:Lcom/android/dialer/widget/LockableViewPager;

.field private final pagerRunnable:Ljava/lang/Runnable;

.field private paginator:Lcom/android/incallui/incall/impl/InCallPaginator;

.field private phoneType:I

.field private rb:Landroid/widget/RadioButton;

.field private savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

.field private shouldShow:Z

.field private stateRestored:Z

.field private supportBluetooth:Z

.field private supportHeadset:Z

.field private voiceNetworkType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->phoneType:I

    const/4 v1, -0x1

    .line 163
    iput v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    .line 166
    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->shouldShow:Z

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    .line 187
    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isVisible:Z

    .line 199
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->handler:Landroid/os/Handler;

    .line 200
    new-instance v1, Lcom/android/incallui/incall/impl/InCallFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/incall/impl/InCallFragment$1;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;)V

    iput-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pagerRunnable:Ljava/lang/Runnable;

    .line 354
    new-instance v1, Lcom/android/incallui/incall/impl/InCallFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/incall/impl/InCallFragment$3;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;)V

    iput-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1312
    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isChecked:Z

    return-void
.end method

.method private StringTransferToImage()V
    .locals 4

    .line 674
    iget v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f11028d

    if-ne v0, v3, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0801fd

    .line 676
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/MenuBar;->setSoftKeyImage(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const v3, 0x7f1100ec

    if-ne v0, v3, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080147

    .line 680
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/MenuBar;->setSoftKeyImage(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/impl/InCallPagerAdapter;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/dialer/widget/LockableViewPager;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/app/Dialog;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/incallui/incall/impl/InCallFragment;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mIsSimpleMode:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/incallui/incall/impl/InCallFragment;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/incallui/incall/impl/InCallFragment;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportHeadset:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/incall/impl/InCallFragment;)Z
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isVbAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/incallui/incall/impl/InCallFragment;)Z
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isVolumeBoostOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/incallui/incall/impl/InCallFragment;Z)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->setVolumeBoost(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/incall/impl/InCallFragment;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateVbButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/incall/impl/InCallFragment;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->showVbNotify()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/contactgrid/ContactGridManager;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->rb:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->rb:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/incallui/incall/impl/InCallFragment;)I
    .locals 0

    .line 122
    iget p0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->newRoute:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/incallui/incall/impl/InCallFragment;I)I
    .locals 0

    .line 122
    iput p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->newRoute:I

    return p1
.end method

.method private addCallClick()V
    .locals 9

    .line 1981
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    const v1, 0x7f0c002b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1982
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1983
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1984
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    const v1, 0x7f0901ee

    .line 1985
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1986
    iget-boolean v4, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mIsSimpleMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f11000b

    goto :goto_0

    :cond_0
    const v4, 0x7f110058

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090042

    .line 1988
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1990
    iget-boolean v4, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mIsSimpleMode:Z

    if-eqz v4, :cond_1

    .line 1991
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1994
    :cond_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1995
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1996
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1997
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1998
    invoke-virtual {v3, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1999
    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2000
    new-instance v1, Lcom/android/incallui/incall/impl/InCallFragment$6;

    invoke-direct {v1, p0, v3}, Lcom/android/incallui/incall/impl/InCallFragment$6;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1. "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110057

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2022
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f110173

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2023
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2024
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2026
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2028
    new-instance v1, Lcom/android/incallui/incall/impl/InCallFragment$7;

    invoke-direct {v1, p0, v7}, Lcom/android/incallui/incall/impl/InCallFragment$7;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;Ljava/util/List;)V

    const v5, 0x7f0901df

    .line 2068
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2069
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2070
    new-instance v1, Lcom/android/incallui/incall/impl/InCallFragment$8;

    invoke-direct {v1, p0, v3}, Lcom/android/incallui/incall/impl/InCallFragment$8;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2088
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    .line 2089
    invoke-virtual {v0, v1, v4}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x50

    .line 2091
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 2092
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2093
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 2094
    invoke-virtual {v3}, Landroid/app/Dialog;->removeMenuBar()V

    return-void
.end method

.method private getLocationFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1061
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private static isSupportedButton(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isVbAvailable()Z
    .locals 3

    .line 1065
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 1067
    iget v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mTtyMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isVolumeBoostOn()Z
    .locals 1

    .line 1149
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVolumeBoostEnabled:Z

    return v0
.end method

.method private setAdapterMedia(Lcom/android/dialer/multimedia/MultimediaData;)V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/android/dialer/multimedia/MultimediaData;)V

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    .line 553
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/LockableViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->setAttachments(Lcom/android/dialer/multimedia/MultimediaData;)V

    .line 558
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0a001c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-le p1, v0, :cond_2

    .line 559
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->paginator:Lcom/android/incallui/incall/impl/InCallPaginator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/InCallPaginator;->setVisibility(I)V

    .line 560
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->paginator:Lcom/android/incallui/incall/impl/InCallPaginator;

    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {p1, v1}, Lcom/android/incallui/incall/impl/InCallPaginator;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 561
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/LockableViewPager;->setSwipingLocked(Z)V

    .line 562
    iget-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->stateRestored:Z

    if-nez p1, :cond_1

    .line 563
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pagerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 565
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->getButtonGridPosition()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/dialer/widget/LockableViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 568
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->paginator:Lcom/android/incallui/incall/impl/InCallPaginator;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/InCallPaginator;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setAllMenuBarTextWhite()V
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 696
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 697
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    return-void
.end method

.method private setPhoneType()V
    .locals 3

    .line 704
    iget v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->phoneType:I

    if-nez v0, :cond_2

    .line 705
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 708
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 711
    :cond_0
    new-instance v1, Lcom/android/voicemail/impl/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 713
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/voicemail/impl/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 715
    invoke-virtual {v1}, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 718
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->phoneType:I

    :cond_2
    return-void
.end method

.method private setVolumeBoost(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "volume_boost=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "volume_boost=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1144
    :goto_0
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVolumeBoostEnabled:Z

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

    .line 1154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1155
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00f2

    const/4 v3, 0x0

    .line 1156
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090301

    .line 1157
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1158
    iget-boolean v4, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mIsSimpleMode:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    .line 1159
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v2, 0x7f090314

    .line 1161
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1162
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1102a3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090126

    .line 1163
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const v4, 0x7f09026e

    .line 1167
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1168
    iget-boolean v6, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mIsSimpleMode:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104000a

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110058

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    new-instance v4, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;

    iget-object v6, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-direct {v4, p0, v6, p1}, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1171
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1172
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1173
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1174
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    .line 1175
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {p1, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne p2, v4, :cond_4

    .line 1178
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 1180
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1181
    :cond_2
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 1183
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1185
    :cond_3
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1188
    :cond_4
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 1190
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1192
    :cond_5
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v4

    if-ne v4, v9, :cond_6

    .line 1194
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 1197
    :cond_6
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 1201
    :goto_1
    new-instance v4, Lcom/android/incallui/incall/impl/InCallFragment$4;

    invoke-direct {v4, p0, p2}, Lcom/android/incallui/incall/impl/InCallFragment$4;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    .line 1260
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 1261
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x400

    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1262
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1263
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1264
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1265
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 1266
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2, v1, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1270
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    new-instance p2, Lcom/android/incallui/incall/impl/InCallFragment$5;

    invoke-direct {p2, p0, v2}, Lcom/android/incallui/incall/impl/InCallFragment$5;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/widget/ListView;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1296
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    .line 1298
    invoke-virtual {p1, p2, v6}, Landroid/view/Window;->setLayout(II)V

    const/16 p2, 0x50

    .line 1301
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 1302
    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x3f000000    # 0.5f

    .line 1303
    invoke-virtual {p1, p2}, Landroid/view/Window;->setDimAmount(F)V

    .line 1304
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->removeMenuBar()V

    return-void
.end method

.method private showVbNotify()V
    .locals 3

    .line 1096
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isVbAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isVolumeBoostOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11057a

    goto :goto_0

    :cond_0
    const v0, 0x7f110579

    goto :goto_0

    :cond_1
    const v0, 0x7f11057b

    .line 1104
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    .line 1105
    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1106
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateVbButton()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1073
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isVbAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isVolumeBoostOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    const v1, 0x7f080244

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    const v1, 0x7f080246

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    const v1, 0x7f080245

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateVbByCall(I)V
    .locals 2

    .line 1110
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateVbButton()V

    const/16 v0, 0x8

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 1113
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1115
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1116
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isVolumeBoostOn()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->setVolumeBoost(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateVoiceNetworkType()V
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 727
    iput v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->voiceNetworkType:I

    goto :goto_1

    .line 729
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 731
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->voiceNetworkType:I

    .line 734
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->voiceNetworkType:I

    .line 735
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallFragment.updateVoiceNetwork"

    .line 734
    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateWindowBackgroundColor(I)V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 426
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 427
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 429
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->setMenuBarBackgroundColor(Landroid/widget/MenuBar;I)V

    .line 433
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget-object v1, Lcom/android/dialer/util/DialerUtils;->menu_line_color_dish:[I

    invoke-static {p1, v0, v1}, Lcom/android/dialer/util/DialerUtils;->setMenuBarMenuLine(Landroid/content/Context;Landroid/widget/MenuBar;[I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public enableButton(IZ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 862
    invoke-static {p1}, Lcom/android/incallui/incall/protocol/InCallButtonIdsExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 863
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "InCallFragment.enableButton"

    const-string v2, "buttonId: %s, enable: %b"

    .line 859
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->isSupportedButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/impl/ButtonController;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAnswerAndDialpadContainerResourceId()I
    .locals 1

    const v0, 0x7f090198

    return v0
.end method

.method public getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;
    .locals 3

    .line 998
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/incall/impl/ButtonController;

    .line 999
    invoke-interface {v1}, Lcom/android/incallui/incall/impl/ButtonController;->getInCallButtonId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 1003
    :cond_1
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallType()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    iget-boolean v0, v0, Lcom/android/incallui/contactgrid/ContactGridManager;->isConnectCall:Z

    return v0
.end method

.method public getInCallButtonUiFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getInCallScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getNumberString()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->numberString:Ljava/lang/String;

    return-object v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    const/16 v0, 0xc

    .line 789
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/incall/impl/ButtonController;->isAllowed()Z

    move-result v0

    return v0
.end method

.method public isShowingLocationUi()Z
    .locals 1

    .line 1024
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getLocationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onCreateView$0$InCallFragment(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 277
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pagerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 222
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 223
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    :cond_0
    return-void
.end method

.method public onAudioRouteSelected(I)V
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->setAudioRoute(I)V

    return-void
.end method

.method public onAudioRouteSelectorDismiss()V
    .locals 0

    return-void
.end method

.method public onButtonGridCreated(Lcom/android/incallui/incall/impl/InCallButtonGridFragment;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallFragment.onButtonGridCreated"

    const-string v2, "InCallUiReady"

    .line 1009
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonGridFragment:Lcom/android/incallui/incall/impl/InCallButtonGridFragment;

    .line 1011
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, p0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onInCallButtonUiReady(Lcom/android/incallui/incall/protocol/InCallButtonUi;)V

    .line 1012
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateButtonStates()V

    return-void
.end method

.method public onButtonGridDestroyed()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallFragment.onButtonGridCreated"

    const-string v2, "InCallUiUnready"

    .line 1017
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onInCallButtonUiUnready()V

    const/4 v0, 0x0

    .line 1019
    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonGridFragment:Lcom/android/incallui/incall/impl/InCallButtonGridFragment;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->endCallButton:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "InCallFragment.onClick"

    if-ne p1, v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "end call button clicked"

    .line 491
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onEndCallClicked()V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "more options button clicked"

    .line 494
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object p1

    .line 496
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/BottomSheetHelper;->showBottomSheet(Landroidx/fragment/app/FragmentManager;)V

    goto :goto_0

    .line 498
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown view: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    :goto_0
    return-void
.end method

.method public onClickCSK()Z
    .locals 8

    .line 1327
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    iget-boolean v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    const v4, 0x7f110281

    const/4 v5, 0x2

    const v6, 0x7f11028d

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportHeadset:Z

    if-nez v3, :cond_0

    .line 1330
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1331
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1333
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    const v4, 0x7f110282

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1334
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/incall/impl/InCallFragment;->showRouteDialog(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 1335
    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    const v7, 0x7f110284

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportHeadset:Z

    if-eqz v3, :cond_1

    .line 1336
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1337
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1338
    invoke-direct {p0, v0, v5}, Lcom/android/incallui/incall/impl/InCallFragment;->showRouteDialog(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 1339
    :cond_1
    iget-boolean v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportHeadset:Z

    if-eqz v3, :cond_4

    .line 1340
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1341
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1343
    iget-object v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x3

    .line 1344
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/incall/impl/InCallFragment;->showRouteDialog(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 1347
    :cond_2
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    .line 1348
    iput v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->newRoute:I

    goto :goto_0

    .line 1350
    :cond_3
    iput v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->newRoute:I

    .line 1352
    :goto_0
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->newRoute:I

    invoke-virtual {v0, v2}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    :cond_4
    :goto_1
    return v1
.end method

.method public onClickLSK()Z
    .locals 2

    .line 1317
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    .line 1318
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isChecked:Z

    .line 1320
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isChecked:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/TelecomAdapter;->mute(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 2

    const-string v0, "InCallFragment"

    const-string v1, "onClickRSK"

    .line 1360
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 233
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    .line 235
    const-class v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;

    .line 236
    invoke-static {p0, v0}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;

    .line 237
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;->newInCallButtonUiDelegate()Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    if-eqz p1, :cond_0

    .line 239
    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->stateRestored:Z

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 243
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 244
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "preferred_tty_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mTtyMode:I

    .line 246
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v0, "volume_boost"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "=on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVolumeBoostEnabled:Z

    .line 248
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "InCallFragment.onCreateView"

    const/4 v2, 0x0

    .line 263
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mIsSimpleMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0085

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0084

    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0600b2

    .line 265
    invoke-direct {p0, p2}, Lcom/android/incallui/incall/impl/InCallFragment;->updateWindowBackgroundColor(I)V

    .line 266
    new-instance p2, Lcom/android/incallui/contactgrid/ContactGridManager;

    const v0, 0x7f0900eb

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 270
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/android/incallui/contactgrid/ContactGridManager;-><init>(Landroid/view/View;Landroid/widget/ImageView;IZ)V

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    const p2, 0x7f0901a2

    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/incall/impl/InCallPaginator;

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->paginator:Lcom/android/incallui/incall/impl/InCallPaginator;

    const p2, 0x7f0901a1

    .line 274
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/widget/LockableViewPager;

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    .line 275
    new-instance v0, Lcom/android/incallui/incall/impl/-$$Lambda$InCallFragment$Xs6gZdAMgObEYH8dm5Zpg94NhdE;

    invoke-direct {v0, p0}, Lcom/android/incallui/incall/impl/-$$Lambda$InCallFragment$Xs6gZdAMgObEYH8dm5Zpg94NhdE;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;)V

    invoke-virtual {p2, v0}, Lcom/android/dialer/widget/LockableViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 282
    invoke-virtual {p2}, Landroid/widget/MenuBar;->dismissOptionMenu()V

    .line 283
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p2, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 284
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f110285

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f110290

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f1101cf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f11028e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f110288

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f110286

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_answer_with_handsfree"

    invoke-static {p2, v0, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v2, :cond_1

    .line 294
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    .line 296
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->newRoute:I

    .line 297
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    iget v4, p0, Lcom/android/incallui/incall/impl/InCallFragment;->newRoute:I

    invoke-virtual {p2, v4}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    .line 299
    :cond_1
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    .line 300
    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p2

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    iput-boolean p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    .line 302
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p2

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, p3

    :goto_2
    iput-boolean p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportHeadset:Z

    .line 304
    iget-boolean v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_3

    .line 307
    :cond_4
    iput-boolean p3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    goto :goto_4

    .line 305
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    .line 309
    :goto_4
    iget-boolean p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    if-eqz p2, :cond_6

    const p2, 0x7f1102a3

    .line 310
    iput p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_5

    .line 312
    :cond_6
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p2

    if-ne p2, v0, :cond_7

    const p2, 0x7f1100ec

    .line 313
    iput p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_5

    :cond_7
    const p2, 0x7f11028d

    .line 315
    iput p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    :goto_5
    const p2, 0x7f090199

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->endCallButton:Landroid/view/View;

    .line 322
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->endCallButton:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09019f

    .line 326
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    .line 327
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09035e

    .line 329
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_8

    .line 331
    new-instance p3, Lcom/android/incallui/incall/impl/InCallFragment$2;

    invoke-direct {p3, p0}, Lcom/android/incallui/incall/impl/InCallFragment$2;-><init>(Lcom/android/incallui/incall/impl/InCallFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateVoiceNetworkType()V

    .line 348
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.android.imscall.remotehold"

    .line 349
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object p3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 476
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 477
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 478
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenUnready()V

    .line 479
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tct/common/RttManager;->setPrimaryInfo(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1843
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1846
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    :cond_0
    return-void
.end method

.method public onInCallScreenDialpadVisibilityChange(Z)V
    .locals 3

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallFragment.onInCallScreenDialpadVisibilityChange"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 811
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/impl/ButtonController;->setChecked(Z)V

    .line 816
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonGridFragment:Lcom/android/incallui/incall/impl/InCallButtonGridFragment;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->onInCallScreenDialpadVisibilityChange(Z)V

    :cond_0
    return-void
.end method

.method public onInCallShowDialpad(Z)V
    .locals 4

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallFragment.onInCallShowDialpad"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 827
    invoke-virtual {v0, p1}, Lcom/android/incallui/BottomSheetHelper;->shallShowMoreButton(Landroid/app/Activity;)Z

    move-result v1

    :goto_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    .line 826
    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/BottomSheetHelper;->updateMoreButtonVisibility(ZLandroid/view/View;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Landroid/content/Context;)Z
    .locals 8

    .line 1437
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1441
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    .line 1452
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is_come_from_incall"

    .line 1453
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1459
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/android/dialer/telecom/TelecomUtil;->isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0xd

    if-eqz v2, :cond_2

    .line 1460
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 v2, 0x8

    const/4 v4, 0x0

    const-string v5, "tel"

    if-ne p1, v2, :cond_3

    const-string v2, "1"

    .line 1466
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1467
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1468
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1469
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x31

    invoke-virtual {v2, v6, v7}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_3
    const/16 v2, 0x9

    if-ne p1, v2, :cond_4

    const-string v2, "2"

    .line 1473
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1474
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1475
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1476
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x32

    invoke-virtual {v2, v6, v7}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_4
    const/16 v2, 0xa

    if-ne p1, v2, :cond_5

    const-string v2, "3"

    .line 1480
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1481
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1482
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1483
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x33

    invoke-virtual {v2, v6, v7}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_5
    const/16 v2, 0xb

    if-ne p1, v2, :cond_6

    const-string v2, "4"

    .line 1487
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1488
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1489
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1490
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x34

    invoke-virtual {v2, v6, v7}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_6
    const/16 v2, 0xc

    if-ne p1, v2, :cond_7

    const-string v2, "5"

    .line 1494
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1495
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1496
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1497
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x35

    invoke-virtual {v2, v6, v7}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_7
    if-ne p1, v3, :cond_8

    const-string v2, "6"

    .line 1501
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1502
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1503
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1504
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x36

    invoke-virtual {v2, v3, v6}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_8
    const/16 v2, 0xe

    if-ne p1, v2, :cond_9

    const-string v2, "7"

    .line 1508
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1509
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1510
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1511
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x37

    invoke-virtual {v2, v3, v6}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_9
    const/16 v2, 0xf

    if-ne p1, v2, :cond_a

    const-string v2, "8"

    .line 1515
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1516
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1517
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1518
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x38

    invoke-virtual {v2, v3, v6}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_a
    const/16 v2, 0x10

    if-ne p1, v2, :cond_b

    const-string v2, "9"

    .line 1522
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1523
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1524
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1525
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x39

    invoke-virtual {v2, v3, v6}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_b
    const/4 v2, 0x7

    if-ne p1, v2, :cond_c

    const-string v2, "0"

    .line 1529
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1530
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1531
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1532
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x30

    invoke-virtual {v2, v3, v6}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_c
    const/16 v2, 0x12

    if-ne p1, v2, :cond_d

    const-string v2, "#"

    .line 1536
    invoke-static {v5, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1537
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1538
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1539
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x23

    invoke-virtual {v2, v3, v6}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_d
    const/16 v2, 0x11

    if-ne p1, v2, :cond_e

    const-string p1, "*"

    .line 1543
    invoke-static {v5, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1544
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1545
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1547
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2a

    invoke-virtual {p1, p2, p3}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :cond_e
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ,event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCallFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    .line 1419
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v1, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1421
    :cond_1
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1424
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 1427
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/incallui/call/TelecomAdapter;->stopDtmfTone(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    .line 1052
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 1053
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isShowingLocationUi()Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallFragment.onMultiWindowModeChanged"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1056
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getLocationFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->showLocationUi(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public onOptionMenuClick(I)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1374
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    .line 1375
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    .line 1376
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v3, v2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->holdClicked(Z)V

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1380
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->holdClicked(Z)V

    :cond_1
    if-ne p1, v1, :cond_2

    .line 1383
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->addCallClick()V

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1387
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->swapClicked()V

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 1390
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->mergeClicked()V

    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 1393
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    check-cast p1, Lcom/android/incallui/InCallActivity;

    check-cast p1, Lcom/android/incallui/InCallActivity;

    .line 1395
    invoke-virtual {p1, v2}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    const-string v2, "InCallFragment"

    if-ne p1, v1, :cond_6

    const-string p1, "switch rtt call"

    .line 1397
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->switchRttCall()V

    goto :goto_0

    :cond_6
    if-ne p1, v0, :cond_7

    const-string p1, "SHOW_RTT_INTERFACE"

    .line 1401
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    check-cast p1, Lcom/android/incallui/InCallActivity;

    .line 1403
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->hideOrShowRttInterface()V

    :cond_7
    :goto_0
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

.method public onPause()V
    .locals 1

    .line 470
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 471
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenPaused()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 369
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const v0, 0x7f060032

    .line 370
    invoke-direct {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateWindowBackgroundColor(I)V

    .line 371
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->refreshMuteState()V

    .line 372
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenResumed()V

    .line 376
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    .line 377
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    .line 379
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportHeadset:Z

    .line 381
    iget-boolean v4, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 384
    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    goto :goto_3

    .line 382
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    .line 388
    :goto_3
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isChecked:Z

    if-eqz v0, :cond_4

    const v0, 0x7f110279

    .line 389
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    goto :goto_4

    :cond_4
    const v0, 0x7f1102a9

    .line 391
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    .line 393
    :goto_4
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    if-eqz v0, :cond_5

    const v0, 0x7f1102a3

    .line 394
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_5

    .line 396
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    const v0, 0x7f1100ec

    .line 397
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_5

    :cond_6
    const v0, 0x7f11028d

    .line 399
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    .line 403
    :goto_5
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 406
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_8

    .line 407
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    if-eq v2, v1, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    .line 411
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->updataMenu(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_7

    :cond_8
    :goto_6
    const v0, 0x7f060031

    .line 408
    invoke-direct {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateWindowBackgroundColor(I)V

    .line 409
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 419
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mIsSimpleMode:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 484
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 485
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallFragment.onViewCreated"

    const/4 v2, 0x0

    .line 439
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 441
    const-class p1, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 442
    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;->newInCallScreenDelegate()Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    .line 443
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$MuteButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$MuteButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$DialpadButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$DialpadButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$HoldButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$HoldButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$AddCallButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$AddCallButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$SwapButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$SwapButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$MergeButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$MergeButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$UpgradeToVideoButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$UpgradeToVideoButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$ManageConferenceButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$ManageConferenceButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallScreenDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    new-instance p2, Lcom/android/incallui/incall/impl/ButtonController$SwitchToSecondaryButtonController;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-direct {p2, v0}, Lcom/android/incallui/incall/impl/ButtonController$SwitchToSecondaryButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallScreenDelegate;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p1, p0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenDelegateInit(Lcom/android/incallui/incall/protocol/InCallScreen;)V

    .line 460
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenReady()V

    .line 465
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->setAllMenuBarTextWhite()V

    return-void
.end method

.method public optionSelected(Ljava/lang/String;)V
    .locals 1

    .line 506
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/BottomSheetHelper;->optionSelected(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioState(Landroid/telecom/CallAudioState;)V
    .locals 4

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallFragment.setAudioState"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    invoke-virtual {p0, v1}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;

    .line 894
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->setAudioState(Landroid/telecom/CallAudioState;)V

    const/4 v0, 0x1

    .line 895
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/incallui/incall/impl/ButtonController;->setChecked(Z)V

    .line 898
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f110279

    .line 899
    iput v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    goto :goto_0

    :cond_0
    const v2, 0x7f1102a9

    .line 902
    iput v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    .line 904
    :goto_0
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    .line 906
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportHeadset:Z

    .line 908
    iget-boolean v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->supportBluetooth:Z

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    .line 911
    :cond_3
    iput-boolean v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    goto :goto_4

    .line 909
    :cond_4
    :goto_3
    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    .line 914
    :goto_4
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    if-eqz v0, :cond_5

    const p1, 0x7f1102a3

    .line 915
    iput p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_5

    .line 917
    :cond_5
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    const p1, 0x7f1100ec

    .line 918
    iput p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_5

    :cond_6
    const p1, 0x7f11028d

    .line 920
    iput p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    .line 924
    :goto_5
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 926
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->updataMenu(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_6

    .line 928
    :cond_7
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 930
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->updataMenu(Lcom/android/incallui/call/DialerCall;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V
    .locals 5

    .line 614
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryCallState;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallFragment.setCallState"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->setPhoneType()V

    .line 616
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateVoiceNetworkType()V

    .line 617
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isConference:Z

    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isConferenceCall:Z

    .line 620
    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    const/16 v3, 0x9

    const/16 v4, 0xa

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-eq v0, v3, :cond_1

    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-eq v0, v4, :cond_1

    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-ne v0, v2, :cond_2

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 634
    :cond_2
    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 635
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v2, 0x1

    .line 636
    invoke-virtual {v0, v2}, Lcom/android/incallui/call/DialerCall;->setGoHome(Z)V

    .line 642
    :cond_3
    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-eq v0, v4, :cond_7

    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-eq v0, v3, :cond_7

    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-nez v0, :cond_4

    goto :goto_1

    .line 649
    :cond_4
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialerCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_5

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->updataMenu(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    .line 653
    :cond_5
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mDialerCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_6

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->updataMenu(Lcom/android/incallui/call/DialerCall;)V

    :cond_6
    :goto_0
    const v0, 0x7f060032

    .line 660
    invoke-direct {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateWindowBackgroundColor(I)V

    goto :goto_2

    :cond_7
    :goto_1
    const v0, 0x7f060031

    .line 644
    invoke-direct {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateWindowBackgroundColor(I)V

    .line 646
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 663
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V

    .line 664
    iget v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->voiceNetworkType:I

    iget-boolean v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    iget v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->phoneType:I

    .line 665
    invoke-static {v0, v1, v2}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->newButtonChooser(IZI)Lcom/android/incallui/incall/impl/ButtonChooser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonChooser:Lcom/android/incallui/incall/impl/ButtonChooser;

    .line 666
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateButtonStates()V

    .line 667
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    .line 668
    iget p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->updateVbByCall(I)V

    :cond_8
    return-void
.end method

.method public setCameraSwitched(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallFragment.setEnabled"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/incall/impl/ButtonController;

    .line 873
    invoke-interface {v1, p1}, Lcom/android/incallui/incall/impl/ButtonController;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0

    .line 740
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->endCallButton:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 741
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setHold(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/impl/ButtonController;->setChecked(Z)V

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V
    .locals 4

    .line 521
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallFragment.setPrimary"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    iget-object v0, p1, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->numberString:Ljava/lang/String;

    .line 524
    iget-object v0, p1, Lcom/android/incallui/incall/protocol/PrimaryInfo;->multimediaData:Lcom/android/dialer/multimedia/MultimediaData;

    invoke-direct {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->setAdapterMedia(Lcom/android/dialer/multimedia/MultimediaData;)V

    .line 525
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    .line 526
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryInfo;->shouldShowLocation:Z

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/contactgrid/ContactGridManager;->setAvatarHidden(Z)V

    .line 531
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090196

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 533
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    .line 534
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 535
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 537
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 542
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 543
    move-object v2, v1

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 545
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    :cond_2
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tct/common/RttManager;->setPrimaryInfo(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    return-void
.end method

.method public setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V
    .locals 5

    .line 574
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/SecondaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallFragment.setSecondary"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xd

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    .line 576
    invoke-interface {v2, v3}, Lcom/android/incallui/incall/impl/ButtonController;->setEnabled(Z)V

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    .line 578
    invoke-interface {v0, v2}, Lcom/android/incallui/incall/impl/ButtonController;->setAllowed(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateButtonStates()V

    .line 580
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->shouldShow:Z

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecondary.shouldShow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->shouldShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallFragment"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    .line 587
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0901a0

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 589
    iget-boolean v4, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    if-eqz v4, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->onHoldNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/incallui/hold/OnHoldFragment;->newInstance(Lcom/android/incallui/incall/protocol/SecondaryInfo;Ljava/lang/String;)Lcom/android/incallui/hold/OnHoldFragment;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 593
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setAvatarHidden(Z)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 596
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {p1, v1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setAvatarHidden(Z)V

    .line 598
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    :goto_0
    const p1, 0x7f010007

    const v1, 0x7f010009

    .line 601
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 602
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public setSecondaryNumber(Ljava/lang/String;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->onHoldNumber:Ljava/lang/String;

    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 0

    return-void
.end method

.method public sheetDismissed()V
    .locals 1

    .line 511
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BottomSheetHelper;->sheetDismissed()V

    return-void
.end method

.method public showAudioRouteSelector()V
    .locals 3

    .line 982
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->getCurrentAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->newInstance(Landroid/telecom/CallAudioState;)Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    move-result-object v0

    .line 983
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showButton(IZ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 846
    invoke-static {p1}, Lcom/android/incallui/incall/protocol/InCallButtonIdsExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 847
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "InCallFragment.showButton"

    const-string v2, "buttionId: %s, show: %b"

    .line 843
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->isSupportedButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/incallui/incall/impl/ButtonController;->setAllowed(Z)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 851
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->UPGRADE_TO_VIDEO_CALL_BUTTON_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 852
    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :cond_0
    return-void
.end method

.method public showLocationUi(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1030
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isShowingLocationUi()Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09019e

    .line 1035
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 1036
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 1040
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getLocationFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 1042
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 1043
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getLocationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 1044
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 5

    .line 748
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isVisible:Z

    const v0, 0x7f110286

    .line 753
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 750
    iget-object v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 751
    iget-object v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 756
    :goto_0
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isChecked:Z

    if-eqz v0, :cond_1

    const v0, 0x7f110279

    .line 757
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    goto :goto_1

    :cond_1
    const v0, 0x7f1102a9

    .line 759
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    .line 761
    :goto_1
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    .line 762
    iget-boolean v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    if-eqz v1, :cond_2

    const v0, 0x7f1102a3

    .line 763
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_2

    .line 765
    :cond_2
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const v0, 0x7f1100ec

    .line 766
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_2

    :cond_3
    const v0, 0x7f11028d

    .line 768
    iput v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    .line 772
    :goto_2
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->isVisible:Z

    if-eqz v0, :cond_4

    .line 773
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    iget v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    const v3, 0x7f11028b

    iget-object v4, p0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 775
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->setAllMenuBarTextWhite()V

    .line 776
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->StringTransferToImage()V

    :cond_4
    const/16 v0, 0xc

    .line 782
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/incallui/incall/impl/ButtonController;->setAllowed(Z)V

    .line 783
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/impl/ButtonController;->setEnabled(Z)V

    .line 784
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateButtonStates()V

    return-void
.end method

.method public showNoteSentToast()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallFragment.showNoteSentToast"

    const/4 v2, 0x0

    .line 799
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    const v1, 0x7f1102ad

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showVbButton(Z)V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mVbButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1088
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updataMenu(Lcom/android/incallui/call/DialerCall;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "InCallFragment"

    const-string/jumbo v3, "updataMenu"

    .line 1558
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/android/incallui/incall/impl/InCallFragment;

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 1567
    :cond_1
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    .line 1568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updataMenu callId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updataMenu not firstCall return firstCallId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    callId: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1575
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    const/16 v8, 0x9

    if-eq v3, v8, :cond_2a

    .line 1576
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    const/4 v9, 0x2

    if-eq v3, v9, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_11

    .line 1583
    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v3

    const/4 v10, 0x1

    if-nez v3, :cond_4

    .line 1586
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1587
    invoke-virtual {v1, v9}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1588
    invoke-virtual {v1, v10}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v10

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 1589
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v11

    if-ne v11, v5, :cond_5

    move v11, v10

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 1591
    :goto_1
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/call/TelecomAdapter;->canAddCall()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-static {v12}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1592
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v12

    if-nez v12, :cond_6

    move v12, v10

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x4

    .line 1593
    invoke-virtual {v1, v13}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1594
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v14

    if-nez v14, :cond_7

    move v14, v10

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    :goto_3
    const v15, 0x7f110290

    if-eqz v11, :cond_8

    .line 1596
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1597
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1600
    :cond_8
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1608
    :goto_4
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f11028e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v6, v7, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1611
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v6, v7, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updataMenu---isSwapCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updataMenu---showHold = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updataMenu---!isCallOnHold = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v11, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f110285

    if-eqz v3, :cond_a

    if-nez v11, :cond_a

    .line 1616
    iget-boolean v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->shouldShow:Z

    if-eqz v3, :cond_9

    .line 1617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updataMenu---swap---shouldShow = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/incallui/incall/impl/InCallFragment;->shouldShow:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v6, v7, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1619
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v6, v7, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1620
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1622
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updataMenu---hold---shouldShow = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/incallui/incall/impl/InCallFragment;->shouldShow:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v6, v7, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1624
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1625
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1628
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updataMenu---removehold---showHold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updataMenu---removehold---!isCallOnHold = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v11, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v6, v7, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1633
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v6, v7, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1635
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    .line 1636
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v6

    if-eqz v3, :cond_b

    if-eqz v6, :cond_b

    .line 1638
    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    const v3, 0x7f1101cf

    const/4 v6, 0x3

    if-eqz v12, :cond_c

    .line 1643
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updataMenu---showAddCall = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v7, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v8, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1645
    iget-object v7, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v8, v12, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1647
    :cond_c
    iget-object v7, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v8, v12, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_6
    const v3, 0x7f110288

    const/4 v7, 0x5

    if-eqz v14, :cond_d

    .line 1650
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updataMenu---showMerge = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object v8, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v12, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1652
    iget-object v8, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v12, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1654
    :cond_d
    iget-object v8, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v12, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1656
    :goto_7
    iget-boolean v8, v0, Lcom/android/incallui/incall/impl/InCallFragment;->isVisible:Z

    const v12, 0x7f110286

    const/4 v13, 0x6

    const v14, 0x7f110492

    const/4 v15, 0x7

    if-eqz v8, :cond_e

    .line 1657
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updataMenu---isVisible = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/incallui/incall/impl/InCallFragment;->isVisible:Z

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1659
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1661
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1664
    :cond_e
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    :goto_8
    if-eqz v11, :cond_10

    .line 1684
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1685
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1689
    :cond_10
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    .line 1690
    invoke-virtual {v2}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f110279

    .line 1692
    iput v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    goto :goto_9

    :cond_11
    const v2, 0x7f1102a9

    .line 1694
    iput v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    .line 1697
    :goto_9
    iget-boolean v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMoreRoute:Z

    if-eqz v2, :cond_12

    const v2, 0x7f1102a3

    .line 1698
    iput v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_a

    .line 1700
    :cond_12
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v2}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    if-ne v2, v5, :cond_13

    const v2, 0x7f1100ec

    .line 1701
    iput v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    goto :goto_a

    :cond_13
    const v2, 0x7f11028d

    .line 1703
    iput v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    .line 1709
    :goto_a
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1743
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getRttCall()Landroid/telecom/Call$RttCall;

    move-result-object v2

    const v4, 0x7f11028b

    const v8, 0x7f110411

    if-eqz v2, :cond_1d

    .line 1744
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1745
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1747
    :cond_14
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1748
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1749
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    if-eq v2, v6, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    if-ne v1, v5, :cond_15

    goto :goto_b

    .line 1756
    :cond_15
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1757
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_10

    .line 1750
    :cond_16
    :goto_b
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1751
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    :cond_17
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1754
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v10}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_10

    .line 1760
    :cond_18
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v9, 0x7f110285

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v7, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1761
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v3, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1763
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    if-eq v2, v6, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    if-ne v1, v5, :cond_1a

    goto :goto_c

    .line 1770
    :cond_1a
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    iget v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_10

    .line 1764
    :cond_1b
    :goto_c
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1765
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    :cond_1c
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    iget v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    iget-object v5, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1768
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v10}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_10

    .line 1774
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1775
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1776
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v9, v11, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1778
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    if-eq v2, v6, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    if-ne v1, v5, :cond_1f

    goto :goto_d

    .line 1800
    :cond_1f
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1801
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_10

    .line 1779
    :cond_20
    :goto_d
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1784
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/tct/common/RttManager;->isRttSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1785
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    :cond_21
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 1793
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    iget-object v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1794
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v10}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto/16 :goto_10

    :cond_22
    const/4 v5, 0x0

    .line 1796
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_10

    .line 1804
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    if-eq v2, v6, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    if-eq v2, v5, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_24

    goto :goto_e

    .line 1829
    :cond_24
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    iget v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto/16 :goto_10

    .line 1805
    :cond_25
    :goto_e
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1806
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1808
    :cond_26
    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1811
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_29

    if-nez v11, :cond_29

    iget-boolean v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->isConferenceCall:Z

    if-nez v1, :cond_29

    .line 1814
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/tct/common/RttManager;->isRttSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1815
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    if-nez v11, :cond_28

    .line 1822
    iget-boolean v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->isConferenceCall:Z

    if-nez v2, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1823
    :cond_28
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1826
    :cond_29
    :goto_f
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMutedStringId:I

    iget v3, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mSpeakerStringId:I

    iget-object v5, v0, Lcom/android/incallui/incall/impl/InCallFragment;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v10}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 1833
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->StringTransferToImage()V

    .line 1837
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallFragment;->setAllMenuBarTextWhite()V

    return-void

    :cond_2a
    :goto_11
    const v1, 0x7f060031

    .line 1577
    invoke-direct {v0, v1}, Lcom/android/incallui/incall/impl/InCallFragment;->updateWindowBackgroundColor(I)V

    .line 1578
    iget-object v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void
.end method

.method public updateButtonStates()V
    .locals 5

    .line 943
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonGridFragment:Lcom/android/incallui/incall/impl/InCallButtonGridFragment;

    if-nez v0, :cond_0

    return-void

    .line 946
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->setPhoneType()V

    .line 947
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->inCallButtonGridFragment:Lcom/android/incallui/incall/impl/InCallButtonGridFragment;

    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonControllers:Ljava/util/List;

    iget-object v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->buttonChooser:Lcom/android/incallui/incall/impl/ButtonChooser;

    iget v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->voiceNetworkType:I

    iget v4, p0, Lcom/android/incallui/incall/impl/InCallFragment;->phoneType:I

    .line 948
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->updateButtonStates(Ljava/util/List;Lcom/android/incallui/incall/impl/ButtonChooser;II)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 952
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {v3, v0}, Lcom/android/dialer/widget/LockableViewPager;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 954
    invoke-virtual {v0}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->getCount()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 955
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a001c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-le v0, v3, :cond_2

    .line 956
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->paginator:Lcom/android/incallui/incall/impl/InCallPaginator;

    invoke-virtual {v0, v2}, Lcom/android/incallui/incall/impl/InCallPaginator;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {v0, v2}, Lcom/android/dialer/widget/LockableViewPager;->setSwipingLocked(Z)V

    goto :goto_1

    .line 959
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->paginator:Lcom/android/incallui/incall/impl/InCallPaginator;

    invoke-virtual {v0, v1}, Lcom/android/incallui/incall/impl/InCallPaginator;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    if-eqz v0, :cond_3

    .line 961
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {v0, v3}, Lcom/android/dialer/widget/LockableViewPager;->setSwipingLocked(Z)V

    .line 962
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment;->pager:Lcom/android/dialer/widget/LockableViewPager;

    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->adapter:Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->getButtonGridPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/LockableViewPager;->setCurrentItem(I)V

    .line 965
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    .line 966
    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 967
    invoke-virtual {v0, v1}, Lcom/android/incallui/BottomSheetHelper;->shallShowMoreButton(Landroid/app/Activity;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/incall/impl/InCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    .line 966
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/BottomSheetHelper;->updateMoreButtonVisibility(ZLandroid/view/View;)V

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
    .locals 1

    .line 1123
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return-void

    .line 1131
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->isVolumeBoostOn()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1132
    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/InCallFragment;->setVolumeBoost(Z)V

    .line 1135
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallFragment;->updateVbButton()V

    return-void
.end method
