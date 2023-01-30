.class public Lcom/android/incallui/answer/impl/AnswerFragment;
.super Landroidx/fragment/app/Fragment;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/answer/protocol/AnswerScreen;
.implements Lcom/android/incallui/incall/protocol/InCallScreen;
.implements Lcom/android/incallui/DeclineCallSmsFragment$SmsSheetHolder;
.implements Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment$CreateCustomSmsHolder;
.implements Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;
.implements Lcom/android/incallui/sessiondata/MultimediaFragment$Holder;
.implements Landroid/widget/MenuBar$MenuBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;,
        Lcom/android/incallui/answer/impl/AnswerFragment$AvatarFragment;,
        Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;
    }
.end annotation


# static fields
.field private static final ANIMATE_LERP_PROGRESS:F = 0.5f

.field private static final ANSWER_AND_DROP_CURRENT_CALL:I = 0x1

.field private static final ANSWER_AND_DROP_ONHOLD_CALL:I = 0x2

.field static final ARG_ALLOW_ANSWER_AND_RELEASE:Ljava/lang/String; = "allow_answer_and_release"

.field static final ARG_CALL_ID:Ljava/lang/String; = "call_id"

.field static final ARG_HAS_CALL_ON_HOLD:Ljava/lang/String; = "has_call_on_hold"

.field static final ARG_IS_RTT_CALL:Ljava/lang/String; = "is_rtt_call"

.field static final ARG_IS_SELF_MANAGED_CAMERA:Ljava/lang/String; = "is_self_managed_camera"

.field static final ARG_IS_VIDEO_CALL:Ljava/lang/String; = "is_video_call"

.field static final ARG_IS_VIDEO_UPGRADE_REQUEST:Ljava/lang/String; = "is_video_upgrade_request"

.field private static final HINT_SECONDARY_SHOW_DURATION_MILLIS:I = 0x1388

.field private static final IGNORE:I = 0x3

.field private static final STATE_HAS_ANIMATED_ENTRY:Ljava/lang/String; = "hasAnimated"

.field private static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field private static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field private static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field private static layout:Landroid/widget/LinearLayout;

.field private static mMenuBar:Landroid/widget/MenuBar;


# instance fields
.field private final accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final affordanceCallback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

.field private affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

.field private answerAndReleaseBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

.field private answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

.field private answerCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

.field private answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

.field private answerVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

.field private buttonAcceptClicked:Z

.field private buttonRejectClicked:Z

.field private contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

.field private createCustomSmsDialogFragment:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

.field private ft:Landroidx/fragment/app/FragmentTransaction;

.field private handler:Landroid/os/Handler;

.field private hasActiveAndOnHoldCallMenu:Ljava/util/ArrayList;
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

.field private hasAnimatedEntry:Z

.field private importanceBadge:Landroid/view/View;

.field private inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

.field private mCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

.field private mIsSimpleMode:Z

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

.field private moreOptionsMenuButton:Landroid/widget/ImageButton;

.field private primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

.field private primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

.field private secondaryBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

.field private secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

.field private smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

.field private swipeHintRestoreTimer:Ljava/lang/Runnable;

.field private textResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private textResponsesFragment:Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 138
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 203
    invoke-static {}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->createEmptyPrimaryInfo()Lcom/android/incallui/incall/protocol/PrimaryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    .line 208
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->REJECT_WITH_SMS:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->handler:Landroid/os/Handler;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->menu:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->hasActiveAndOnHoldCallMenu:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    .line 469
    new-instance v0, Lcom/android/incallui/answer/impl/AnswerFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$3;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 498
    new-instance v0, Lcom/android/incallui/answer/impl/AnswerFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$4;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceCallback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    .line 565
    new-instance v0, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$tu0fJvLQyRw8TocuphqeGDKR9Jk;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$tu0fJvLQyRw8TocuphqeGDKR9Jk;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->swipeHintRestoreTimer:Ljava/lang/Runnable;

    return-void
.end method

.method private acceptCallByUser(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, " answerVideoAsAudio"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AnswerFragment.acceptCallByUser"

    .line 1301
    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonAcceptClicked:Z

    if-nez v0, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onAnswer(Z)V

    const/4 p1, 0x1

    .line 1304
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonAcceptClicked:Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/answer/impl/AnswerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponses:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->performAnswerAndReleaseButtonAction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getAnswerMethod()Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/incallui/answer/impl/AnswerFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->swipeHintRestoreTimer:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/incallui/answer/impl/AnswerFragment;)Landroid/os/Handler;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/incallui/answer/impl/AnswerFragment;)Landroid/view/View;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->importanceBadge:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/incallui/answer/impl/AnswerFragment;Z)Z
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->hasAnimatedEntry:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->rejectCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/answer/impl/AnswerFragment;Z)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->acceptCallByUser(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->performAnswerAndRelease()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AffordanceHolderLayout;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/incallui/answer/impl/AnswerFragment;)Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->performSecondaryButtonAction()V

    return-void
.end method

.method private animateEntry(Landroid/view/View;)V
    .locals 7

    .line 1260
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AnswerFragment.animateEntry"

    const-string v1, "Not currently added to Activity. Will not start entry animation."

    .line 1261
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->getContainerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1267
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    .line 1268
    invoke-virtual {v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->getContainerView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const v1, 0x7f0900fb

    .line 1269
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/answer/impl/AnswerFragment;->createTranslation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const v2, 0x7f0900f1

    .line 1270
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/answer/impl/AnswerFragment;->createTranslation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const v3, 0x7f0900ec

    .line 1271
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/answer/impl/AnswerFragment;->createTranslation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1272
    iget-object v4, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->importanceBadge:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/incallui/answer/impl/AnswerFragment;->createTranslation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const v5, 0x7f090197

    .line 1273
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/answer/impl/AnswerFragment;->createTranslation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1275
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1276
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 1277
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1278
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isShowingLocationUi()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f09019e

    .line 1279
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/answer/impl/AnswerFragment;->createTranslation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1282
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    .line 1281
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1283
    new-instance p1, Lcom/android/incallui/answer/impl/AnswerFragment$8;

    invoke-direct {p1, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$8;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1290
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private canRejectCallWithSms()Z
    .locals 2

    .line 1443
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canShowMap()Z
    .locals 1

    .line 859
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/maps/MapsComponent;->get(Landroid/content/Context;)Lcom/android/incallui/maps/MapsComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/maps/MapsComponent;->getMaps()Lcom/android/incallui/maps/Maps;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/maps/Maps;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private createInCallScreenDelegate()V
    .locals 1

    .line 1450
    const-class v0, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 1451
    invoke-static {p0, v0}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 1452
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;->newInCallScreenDelegate()Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    .line 1453
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0, p0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenDelegateInit(Lcom/android/incallui/incall/protocol/InCallScreen;)V

    .line 1455
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenReady()V

    return-void
.end method

.method private createTranslation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 1294
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 1295
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1296
    sget-object v0, Lcom/android/incallui/answer/impl/utils/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private static fadeToward(Landroid/view/View;F)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/android/dialer/common/MathUtil;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private getAnswerMethod()Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;
    .locals 2

    .line 772
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;

    return-object v0
.end method

.method private getSessionData()Lcom/android/dialer/multimedia/MultimediaData;
    .locals 2

    .line 1505
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1508
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1511
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->multimediaData:Lcom/android/dialer/multimedia/MultimediaData;

    return-object v0
.end method

.method private hasCallOnHold()Z
    .locals 2

    .line 688
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "has_call_on_hold"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initSecondaryButton()V
    .locals 2

    .line 636
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->REJECT_WITH_SMS:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->ANSWER_VIDEO_AS_AUDIO:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    :goto_1
    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    .line 639
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->applyToView(Landroid/widget/ImageView;)V

    .line 641
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    new-instance v1, Lcom/android/incallui/answer/impl/AnswerFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$5;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/AccessibilityUtil;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setClickable(Z)V

    .line 649
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/AccessibilityUtil;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setFocusable(Z)V

    .line 650
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoUpgradeRequest()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setVisibility(I)V

    goto :goto_2

    .line 655
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setVisibility(I)V

    .line 660
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->ANSWER_AND_RELEASE:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    .line 661
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->applyToView(Landroid/widget/ImageView;)V

    .line 662
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    new-instance v1, Lcom/android/incallui/answer/impl/AnswerFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$6;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/AccessibilityUtil;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setClickable(Z)V

    .line 670
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/AccessibilityUtil;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setFocusable(Z)V

    .line 671
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 673
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->allowAnswerAndRelease()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    .line 674
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onAnswerAndReleaseButtonEnabled()V

    goto :goto_3

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onAnswerAndReleaseButtonDisabled()V

    :goto_3
    return-void
.end method

.method public static synthetic lambda$IM8GzcbUDqSCLzfU7dsOQE5O4w8(Lcom/android/incallui/answer/impl/AnswerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->animateEntry(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$tu0fJvLQyRw8TocuphqeGDKR9Jk(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->restoreSwipeHintTexts()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;ZZZZZZ)Lcom/android/incallui/answer/impl/AnswerFragment;
    .locals 2

    .line 583
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 584
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "call_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "is_rtt_call"

    .line 585
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "is_video_call"

    .line 586
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "is_video_upgrade_request"

    .line 587
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "is_self_managed_camera"

    .line 588
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "allow_answer_and_release"

    .line 589
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "has_call_on_hold"

    .line 590
    invoke-virtual {v0, p0, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 592
    new-instance p0, Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;-><init>()V

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private performAnswerAndRelease()V
    .locals 1

    .line 451
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->restoreAnswerAndReleaseButtonAnimation()V

    .line 452
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onAnswerAndReleaseCall()V

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonAcceptClicked:Z

    return-void
.end method

.method private performAnswerAndReleaseButtonAction()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    invoke-virtual {v0, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->performAction(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    return-void
.end method

.method private performSecondaryButtonAction()V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryBehavior:Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;

    invoke-virtual {v0, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;->performAction(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    return-void
.end method

.method private rejectCall()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AnswerFragment.rejectCall"

    const/4 v3, 0x0

    .line 1309
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1310
    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonRejectClicked:Z

    if-nez v1, :cond_1

    .line 1311
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Null context when rejecting call. Logger call was skipped"

    .line 1313
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1317
    :cond_0
    invoke-static {v1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->REJECT_INCOMING_CALL_FROM_ANSWER_SCREEN:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1318
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :goto_0
    const/4 v0, 0x1

    .line 1320
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonRejectClicked:Z

    .line 1321
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onReject()V

    :cond_1
    return-void
.end method

.method private restoreAnswerAndReleaseButtonAnimation()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    .line 457
    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 458
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/answer/impl/AnswerFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$2;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private restoreBackgroundMaskColor()V
    .locals 2

    .line 1326
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->updateWindowBackgroundColor(F)V

    return-void
.end method

.method private restoreSwipeHintTexts()V
    .locals 2

    .line 1330
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getAnswerMethod()Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getAnswerMethod()Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->setHintText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static scaleToward(Landroid/view/View;F)V
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Lcom/android/dialer/common/MathUtil;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-static {v0, p1, v1}, Lcom/android/dialer/common/MathUtil;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x400

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private shouldShowAvatar()Z
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showMessageMenu()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.showMessageMenu"

    const-string v2, "Show sms menu."

    .line 1349
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1350
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponses:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->newInstance(Ljava/util/ArrayList;)Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponsesFragment:Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;

    .line 1355
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    .line 1357
    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1358
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/answer/impl/AnswerFragment$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$9;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    .line 1359
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateDataFragment()V
    .locals 10

    .line 801
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AnswerFragment.updateDataFragment"

    .line 804
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090197

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 808
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getSessionData()Lcom/android/dialer/multimedia/MultimediaData;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 810
    invoke-virtual {v3}, Lcom/android/dialer/multimedia/MultimediaData;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 811
    invoke-virtual {v3}, Lcom/android/dialer/multimedia/MultimediaData;->getImageUri()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_1

    .line 812
    invoke-virtual {v3}, Lcom/android/dialer/multimedia/MultimediaData;->getLocation()Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->canShowMap()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 814
    :cond_1
    invoke-virtual {v3}, Lcom/android/dialer/multimedia/MultimediaData;->getText()Ljava/lang/String;

    move-result-object v6

    .line 815
    invoke-virtual {v3}, Lcom/android/dialer/multimedia/MultimediaData;->getImageUri()Landroid/net/Uri;

    move-result-object v7

    .line 816
    invoke-virtual {v3}, Lcom/android/dialer/multimedia/MultimediaData;->getLocation()Landroid/location/Location;

    move-result-object v8

    .line 817
    instance-of v9, v1, Lcom/android/incallui/sessiondata/MultimediaFragment;

    if-eqz v9, :cond_2

    check-cast v1, Lcom/android/incallui/sessiondata/MultimediaFragment;

    .line 818
    invoke-virtual {v1}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 819
    invoke-virtual {v1}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 820
    invoke-virtual {v1}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    const-string v4, "Replacing multimedia fragment"

    .line 821
    invoke-static {v0, v4, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isSpam:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v1, v1, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isSpam:Z

    .line 824
    invoke-static {v3, v5, v0, v1}, Lcom/android/incallui/sessiondata/MultimediaFragment;->newInstance(Lcom/android/dialer/multimedia/MultimediaData;ZZZ)Lcom/android/incallui/sessiondata/MultimediaFragment;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 830
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->shouldShowAvatar()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 832
    instance-of v1, v1, Lcom/android/incallui/answer/impl/AnswerFragment$AvatarFragment;

    if-nez v1, :cond_6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "Replacing avatar fragment"

    .line 833
    invoke-static {v0, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    new-instance v4, Lcom/android/incallui/answer/impl/AnswerFragment$AvatarFragment;

    invoke-direct {v4}, Lcom/android/incallui/answer/impl/AnswerFragment$AvatarFragment;-><init>()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "Removing current fragment"

    .line 840
    invoke-static {v0, v6, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 843
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, v4, v5, v5}, Lcom/android/incallui/contactgrid/ContactGridManager;->setAvatarImageView(Landroid/widget/ImageView;IZ)V

    :cond_6
    :goto_0
    if-eqz v4, :cond_7

    .line 847
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 848
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 849
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_7
    return-void
.end method

.method private updateImportanceBadgeVisibility()V
    .locals 4

    .line 1486
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1490
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isSpam:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1495
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getSessionData()Lcom/android/dialer/multimedia/MultimediaData;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1496
    invoke-virtual {v0}, Lcom/android/dialer/multimedia/MultimediaData;->isImportant()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1497
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->importanceBadge:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1500
    iget-object v3, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->importanceBadge:Landroid/view/View;

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1491
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->importanceBadge:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updatePrimaryUI()V
    .locals 3

    .line 784
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    invoke-virtual {v0, v1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    .line 788
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getAnswerMethod()Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v1, v1, Lcom/android/incallui/incall/protocol/PrimaryInfo;->answeringDisconnectsOngoingCall:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->setShowIncomingWillDisconnect(Z)V

    .line 789
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getAnswerMethod()Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget v1, v1, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photoType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v1, v1, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 790
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;->setContactPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 792
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateDataFragment()V

    .line 794
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->shouldShowLocation:Z

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setAvatarHidden(Z)V

    :cond_2
    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 1187
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    if-eqz v0, :cond_1

    .line 1192
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updatePrimaryUI()V

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    if-eqz v0, :cond_2

    .line 1195
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V

    .line 1197
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->restoreBackgroundMaskColor()V

    .line 1198
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    .line 1199
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/BottomSheetHelper;->shallShowMoreButton(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    invoke-virtual {v0}, Lcom/android/incallui/BottomSheetHelper;->updateMap()V

    .line 1203
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->moreOptionsMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/BottomSheetHelper;->updateMoreButtonVisibility(ZLandroid/view/View;)V

    return-void
.end method

.method private updateWindowBackgroundColor(I)V
    .locals 3

    .line 1123
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1124
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1125
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1127
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    if-nez v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 1130
    :cond_0
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->setMenuBarBackgroundColor(Landroid/widget/MenuBar;I)V

    .line 1131
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget-object v1, Lcom/android/dialer/util/DialerUtils;->menu_line_color_dish:[I

    invoke-static {p1, v0, v1}, Lcom/android/dialer/util/DialerUtils;->setMenuBarMenuLine(Landroid/content/Context;Landroid/widget/MenuBar;[I)V

    .line 1134
    sget-object p1, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1135
    sget-object p1, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 1136
    sget-object p1, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    return-void
.end method


# virtual methods
.method public allowAnswerAndRelease()Z
    .locals 2

    .line 684
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "allow_answer_and_release"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public answerCall()V
    .locals 3

    .line 316
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v1

    .line 319
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v2

    .line 318
    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/InCallLowBatteryListener;->onAnswerIncomingCall(Lcom/android/incallui/call/DialerCall;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->answer()V

    :cond_0
    return-void
.end method

.method public answerFromMethod()V
    .locals 1

    const/4 v0, 0x0

    .line 1245
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->acceptCallByUser(Z)V

    return-void
.end method

.method public currentCallStatus()Z
    .locals 1

    .line 1091
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->currentStatus()Z

    move-result v0

    return v0
.end method

.method public customSmsCreated(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.customSmsCreated"

    const/4 v2, 0x0

    .line 1398
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1399
    iput-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->createCustomSmsDialogFragment:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    .line 1400
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->canRejectCallWithSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->rejectCall()V

    .line 1402
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onRejectCallWithMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public customSmsDismissed()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.customSmsDismissed"

    const/4 v2, 0x0

    .line 1408
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1409
    iput-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->createCustomSmsDialogFragment:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    .line 1410
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onDismissDialog()V

    return-void
.end method

.method public dismissPendingDialogs()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.dismissPendingDialogs"

    const/4 v2, 0x0

    .line 721
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    if-eqz v0, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 724
    iput-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->createCustomSmsDialogFragment:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    if-eqz v0, :cond_1

    .line 729
    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->dismiss()V

    .line 730
    iput-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->createCustomSmsDialogFragment:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/AccessibilityUtil;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 904
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAnswerAndDialpadContainerResourceId()I
    .locals 1

    .line 928
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getAnswerScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 605
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "call_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInCallScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public hasPendingDialogs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActionTimeout()Z
    .locals 1

    .line 599
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonAcceptClicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonRejectClicked:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->isActionTimeout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRttCall()Z
    .locals 2

    .line 1208
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_rtt_call"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSelfManagedCamera()Z
    .locals 2

    .line 1217
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_self_managed_camera"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShowingLocationUi()Z
    .locals 2

    .line 736
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
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

.method public isVideoCall()Z
    .locals 2

    .line 1213
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_video_call"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoUpgradeRequest()Z
    .locals 2

    .line 610
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_video_upgrade_request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onClickCSK$0$AnswerFragment(Lcom/android/incallui/call/DialerCall;Landroid/view/View;)V
    .locals 1

    .line 290
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f090271

    if-eq p2, v0, :cond_1

    const p1, 0x7f09034d

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->answerCall()V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->answerCall()V

    .line 296
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/tct/common/RttManager;->upgradeToRTT(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    :goto_0
    return-void
.end method

.method public onAnswerProgressUpdate(F)V
    .locals 5

    .line 1224
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->updateWindowBackgroundColor(F)V

    :cond_0
    const/4 v0, 0x0

    .line 1232
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v3, 0x3f400000    # 0.75f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1233
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v1}, Lcom/android/incallui/contactgrid/ContactGridManager;->getContainerView()Landroid/view/View;

    move-result-object v1

    sub-float v4, v2, v0

    invoke-static {v1, v4}, Lcom/android/incallui/answer/impl/AnswerFragment;->fadeToward(Landroid/view/View;F)V

    .line 1234
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v1}, Lcom/android/incallui/contactgrid/ContactGridManager;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/MathUtil;->lerp(FFF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->scaleToward(Landroid/view/View;F)V

    .line 1236
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    .line 1237
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->animateHideLeftRightIcon()V

    .line 1238
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->swipeHintRestoreTimer:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1239
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->restoreSwipeHintTexts()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1096
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1097
    const-class p1, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->checkParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->moreOptionsMenuButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_0

    .line 694
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object p1

    .line 695
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/BottomSheetHelper;->showBottomSheet(Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public onClickCSK()Z
    .locals 5

    .line 274
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DeclineCallSmsFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DeclineCallSmsFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 278
    iget-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->smsSelected(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 283
    :cond_0
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 285
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->isRttActive()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 288
    :cond_1
    new-instance v2, Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/MenuBar;-><init>(Landroid/content/Context;)V

    .line 289
    new-instance v3, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$WUidlJ4DGqKXblTUhbSx9pXXGI4;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$WUidlJ4DGqKXblTUhbSx9pXXGI4;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;Lcom/android/incallui/call/DialerCall;)V

    .line 302
    new-instance v0, Lcom/android/incallui/RttAnswerDialog;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/android/incallui/RttAnswerDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttAnswerDialog$RttDialogListener;)V

    .line 303
    invoke-virtual {v0}, Lcom/android/incallui/RttAnswerDialog;->show()V

    .line 304
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f11000b

    goto :goto_0

    :cond_2
    const v0, 0x7f110058

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_2

    .line 286
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->answerCall()V

    :cond_4
    :goto_2
    return v1
.end method

.method public onClickLSK()Z
    .locals 7

    .line 227
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->setVisibility(I)V

    const v0, 0x7f0600ee

    .line 233
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->setStatusBarColor(I)V

    .line 234
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Lcom/android/incallui/answer/impl/AnswerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$1;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    .line 242
    new-instance v3, Lcom/android/incallui/DeclineCallSmsFragment;

    iget-object v4, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponses:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v5, v5, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/android/incallui/DeclineCallSmsFragment;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;)V

    iput-object v3, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    .line 243
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    const v3, 0x7f090172

    .line 244
    iget-object v4, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 245
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/DeclineCallSmsFragment;->setStatusBarColor()V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponses:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const v4, 0x7f110002

    const v5, 0x7f110012

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget-boolean v6, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->mIsSimpleMode:Z

    if-eqz v6, :cond_2

    const v6, 0x104000a

    goto :goto_1

    :cond_2
    const v6, 0x7f110058

    :goto_1
    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_2

    .line 254
    :cond_3
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v5, v1, v4, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 257
    :goto_2
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v0, v3, v5}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 258
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v0, v3, v2}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 259
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/dialer/util/DialerUtils;->setSoftKeyTextColor(Landroid/widget/MenuBar;II)V

    .line 260
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/dialer/util/DialerUtils;->setMenuBarBackgroundColor(Landroid/widget/MenuBar;I)V

    goto :goto_3

    .line 263
    :cond_4
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 264
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->rejectCall()V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v3, v3, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 266
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "isFromAnswerCall"

    .line 267
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/incallui/answer/impl/AnswerFragment;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_3
    return v1
.end method

.method public onClickRSK()Z
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    if-eqz v0, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 332
    iput-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->rejectFromMethod()V

    .line 337
    :cond_1
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    if-eqz v0, :cond_2

    .line 340
    iget-object v3, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 343
    :cond_2
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v3, 0x7f11000a

    const v4, 0x7f110002

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 345
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f060033

    .line 346
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateWindowBackgroundColor(I)V

    .line 348
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DeclineCallSmsFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DeclineCallSmsFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-virtual {v0, v2}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->setVisibility(I)V

    .line 353
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->rejectFromMethod()V

    :cond_4
    return v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 951
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "call_id"

    .line 952
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    const-string v0, "is_rtt_call"

    .line 953
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    const-string v0, "is_video_call"

    .line 954
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    const-string v0, "is_video_upgrade_request"

    .line 955
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    const/4 p3, 0x0

    .line 957
    iput-boolean p3, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonAcceptClicked:Z

    .line 958
    iput-boolean p3, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->buttonRejectClicked:Z

    const v0, 0x7f0c009d

    .line 960
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f060033

    .line 961
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateWindowBackgroundColor(I)V

    const p2, 0x7f0901ae

    .line 962
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    const p2, 0x7f0901af

    .line 963
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerAndReleaseButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    const p2, 0x7f090259

    .line 964
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->moreOptionsMenuButton:Landroid/widget/ImageButton;

    const p2, 0x7f090172

    .line 966
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    sput-object p2, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    .line 967
    iget-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->moreOptionsMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    iget-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->mCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    if-nez p2, :cond_0

    .line 970
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.android.dialer.rejectcall"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 972
    new-instance v0, Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->mCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    .line 973
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->mCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 976
    :cond_0
    iget-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    if-nez p2, :cond_1

    .line 977
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.android.dialer.answercall"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 979
    new-instance v0, Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    .line 980
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const p2, 0x7f0901aa

    .line 985
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    .line 986
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceCallback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    invoke-virtual {p2, v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->setAffordanceCallback(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;)V

    .line 987
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    .line 990
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p2

    sput-object p2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    .line 991
    invoke-virtual {p2}, Landroid/widget/MenuBar;->dismissOptionMenu()V

    .line 992
    sget-object p2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p2, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 993
    iget-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->hasActiveAndOnHoldCallMenu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110064

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->hasActiveAndOnHoldCallMenu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f110065

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    iget-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->hasActiveAndOnHoldCallMenu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f110002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    .line 999
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->currentCallStatus()Z

    move-result v0

    const v3, 0x7f11000a

    if-eqz v0, :cond_2

    .line 1000
    sget-object p2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->hasActiveAndOnHoldCallMenu:Ljava/util/ArrayList;

    invoke-virtual {p2, v3, p3, v4, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p2, v0, p3, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    :cond_2
    const v0, 0x7f11034c

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    .line 1003
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 1004
    sget-object p2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p2, p3, v0, v4, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 1009
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telecom/Call;->isRttActive()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1010
    sget-object p2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v0, 0x7f11034e

    invoke-virtual {p2, v3, v0, v4, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1011
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p2, v0, p3, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    .line 1013
    :cond_4
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1014
    sget-object p2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v0, 0x7f11034d

    invoke-virtual {p2, v3, v0, v4, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p2, v0, p3, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    .line 1017
    :cond_5
    sget-object p2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p2, v3, v0, v4, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1018
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {p2, v0, p3, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    :goto_0
    const p2, 0x7f09019d

    .line 1027
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->importanceBadge:Landroid/view/View;

    .line 1028
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/android/incallui/answer/impl/AnswerFragment$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/answer/impl/AnswerFragment$7;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1040
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateImportanceBadgeVisibility()V

    .line 1041
    new-instance p2, Lcom/android/incallui/contactgrid/ContactGridManager;

    const v0, 0x7f0900eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p2, p1, v0, p3, v1}, Lcom/android/incallui/contactgrid/ContactGridManager;-><init>(Landroid/view/View;Landroid/widget/ImageView;IZ)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    .line 1043
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const v0, 0x7f090060

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 1044
    invoke-static {p2}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodFactory;->needsReplacement(Landroidx/fragment/app/Fragment;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1045
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 1046
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 1048
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodFactory;->createAnswerMethod(Landroid/app/Activity;)Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;

    move-result-object v1

    .line 1047
    invoke-virtual {p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 1049
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 1052
    :cond_6
    const-class p2, Lcom/android/incallui/answer/protocol/AnswerScreenDelegateFactory;

    .line 1053
    invoke-static {p0, p2}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/answer/protocol/AnswerScreenDelegateFactory;

    .line 1054
    invoke-interface {p2, p0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegateFactory;->newAnswerScreenDelegate(Lcom/android/incallui/answer/protocol/AnswerScreen;)Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    .line 1056
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->initSecondaryButton()V

    const/16 p2, 0x1000

    .line 1059
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1060
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    new-array p2, p3, [Ljava/lang/Object;

    const-string v0, "AnswerFragment.onCreateView"

    const-string v1, "STATUS_BAR permission granted, disabling nav bar"

    .line 1062
    invoke-static {v0, v1, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p2, 0x1601000

    .line 1067
    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoCall()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoUpgradeRequest()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1069
    :cond_8
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 1072
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getRequestedVideoState()I

    move-result v0

    goto :goto_1

    :cond_9
    move v0, p3

    .line 1075
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1076
    invoke-static {p2}, Lcom/android/incallui/VideoCallPresenter;->isTransmissionEnabled(Lcom/android/incallui/call/DialerCall;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 1077
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1078
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isSelfManagedCamera()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1079
    new-instance p2, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getCallId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Lcom/android/incallui/answer/impl/SelfManagedAnswerVideoCallScreen;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    goto :goto_2

    .line 1081
    :cond_b
    new-instance p2, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getCallId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Lcom/android/incallui/answer/impl/AnswerVideoCallScreen;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    goto :goto_2

    :cond_c
    const p2, 0x7f090341

    .line 1084
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    if-eqz v0, :cond_0

    .line 940
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 943
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->mCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 944
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerCallStateReceiver:Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 945
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.onDestroyView"

    const/4 v2, 0x0

    .line 1171
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-eqz v0, :cond_0

    .line 1173
    iput-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    .line 1175
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 1176
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenUnready()V

    .line 1177
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onAnswerScreenUnready()V

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

.method public onKeyDown(ILandroid/view/KeyEvent;Landroid/content/Context;)Z
    .locals 3

    .line 1415
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x121

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 1421
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "any_key_to_answer_call"

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v1, :cond_0

    .line 1422
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIncomingOrActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1425
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    .line 1426
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v2

    .line 1425
    invoke-virtual {v0, p3, v2}, Lcom/android/incallui/InCallLowBatteryListener;->onAnswerIncomingCall(Lcom/android/incallui/call/DialerCall;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1427
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->answer()V

    return v1

    .line 1437
    :cond_0
    sget-object p3, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {p3, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v1
.end method

.method public onOptionMenuClick(I)V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->currentCallStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->rejectCall()V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->answerCall()V

    goto :goto_0

    .line 374
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->performAnswerAndRelease()V

    :cond_3
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
    .locals 3

    .line 1164
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.onPause"

    const/4 v2, 0x0

    .line 1165
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenPaused()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1113
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.onResume"

    const/4 v2, 0x0

    .line 1114
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->restoreSwipeHintTexts()V

    .line 1116
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->refreshMenuBar()V

    .line 1117
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenResumed()V

    .line 1118
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->mIsSimpleMode:Z

    const v0, 0x7f060033

    .line 1119
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateWindowBackgroundColor(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1182
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1183
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->hasAnimatedEntry:Z

    const-string v1, "hasAnimated"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1144
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.onStart"

    const/4 v2, 0x0

    .line 1145
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateUI()V

    .line 1147
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-eqz v0, :cond_0

    .line 1148
    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreen;->onVideoScreenStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1154
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.onStop"

    const/4 v2, 0x0

    .line 1155
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->swipeHintRestoreTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1157
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerVideoCallScreen:Lcom/android/incallui/video/protocol/VideoCallScreen;

    if-eqz v0, :cond_0

    .line 1158
    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreen;->onVideoScreenStop()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1102
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1103
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->createInCallScreenDelegate()V

    .line 1104
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateUI()V

    if-eqz p2, :cond_0

    const-string v0, "hasAnimated"

    .line 1106
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1107
    :cond_0
    new-instance p2, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$IM8GzcbUDqSCLzfU7dsOQE5O4w8;

    invoke-direct {p2, p0}, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$IM8GzcbUDqSCLzfU7dsOQE5O4w8;-><init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    invoke-static {p1, p2}, Lcom/android/dialer/util/ViewUtil;->doOnGlobalLayout(Landroid/view/View;Lcom/android/dialer/util/ViewUtil$ViewRunnable;)V

    :cond_1
    return-void
.end method

.method public optionSelected(Ljava/lang/String;)V
    .locals 1

    .line 702
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/BottomSheetHelper;->optionSelected(Ljava/lang/String;)V

    return-void
.end method

.method public rejectFromMethod()V
    .locals 0

    .line 1250
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->rejectCall()V

    return-void
.end method

.method public resetAnswerProgress()V
    .locals 2

    .line 1255
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->reset(Z)V

    .line 1256
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->restoreBackgroundMaskColor()V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V
    .locals 3

    .line 880
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryCallState;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AnswerFragment.setCallState"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    const v0, 0x7f060033

    .line 882
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateWindowBackgroundColor(I)V

    .line 883
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V

    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V
    .locals 3

    .line 777
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AnswerFragment.setPrimary"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    .line 779
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updatePrimaryUI()V

    .line 780
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateImportanceBadgeVisibility()V

    return-void
.end method

.method public setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V
    .locals 0

    return-void
.end method

.method public setSecondaryNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextResponses(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoCall()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AnswerFragment.setTextResponses"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x8

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "no text responses, hiding secondary button"

    .line 618
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponses:Ljava/util/ArrayList;

    .line 621
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p1, v3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setVisibility(I)V

    goto :goto_1

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "in multiwindow, hiding secondary button"

    .line 623
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponses:Ljava/util/ArrayList;

    .line 625
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p1, v3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setVisibility(I)V

    goto :goto_1

    .line 627
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "textResponses.size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->textResponses:Ljava/util/ArrayList;

    .line 629
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->secondaryButton:Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;

    invoke-virtual {p1, v3}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no-op for video calls"

    .line 616
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public sheetDismissed()V
    .locals 1

    .line 707
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BottomSheetHelper;->sheetDismissed()V

    return-void
.end method

.method public showInCall()V
    .locals 7

    .line 1460
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1462
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1467
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->currentCallStatus()Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f110002

    const v3, 0x7f11000a

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1468
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    iget-object v5, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->hasActiveAndOnHoldCallMenu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1469
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {v0, v2, v4, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    goto :goto_0

    .line 1471
    :cond_1
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v5, 0x7f11034c

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v2, v6}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 1472
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/answer/impl/AnswerFragment;->mMenuBar:Landroid/widget/MenuBar;

    invoke-static {v0, v2, v4, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 1475
    :goto_0
    sget-object v0, Lcom/android/incallui/answer/impl/AnswerFragment;->layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f060033

    .line 1476
    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateWindowBackgroundColor(I)V

    .line 1477
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DeclineCallSmsFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DeclineCallSmsFragment;->getList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 1480
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->affordanceHolderLayout:Lcom/android/incallui/answer/impl/AffordanceHolderLayout;

    invoke-virtual {v0, v4}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public showLocationUi(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 742
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->isShowingLocationUi()Z

    move-result v0

    const v1, 0x7f09019e

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 746
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 747
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 748
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 751
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
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

.method public smsDismissed()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.smsDismissed"

    const/4 v2, 0x0

    .line 1384
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1387
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->ft:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1389
    iput-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->smsFragment:Lcom/android/incallui/DeclineCallSmsFragment;

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onDismissDialog()V

    return-void
.end method

.method public smsSelected(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerFragment.smsSelected"

    const/4 v2, 0x0

    .line 1370
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 1372
    invoke-static {}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->newInstance()Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->createCustomSmsDialogFragment:Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;

    .line 1373
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/android/incallui/answer/impl/CreateCustomSmsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->canRejectCallWithSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->rejectCall()V

    .line 1378
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->answerScreenDelegate:Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;->onRejectCallWithMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateAnswerScreenUi()V
    .locals 0

    .line 767
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->updateUI()V

    return-void
.end method

.method public updateAvatar(Lcom/android/incallui/sessiondata/AvatarPresenter;)V
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    .line 865
    invoke-interface {p1}, Lcom/android/incallui/sessiondata/AvatarPresenter;->getAvatarImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 866
    invoke-interface {p1}, Lcom/android/incallui/sessiondata/AvatarPresenter;->getAvatarSize()I

    move-result v2

    .line 867
    invoke-interface {p1}, Lcom/android/incallui/sessiondata/AvatarPresenter;->shouldShowAnonymousAvatar()Z

    move-result p1

    .line 864
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setAvatarImageView(Landroid/widget/ImageView;IZ)V

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
