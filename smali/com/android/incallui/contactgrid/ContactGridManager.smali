.class public Lcom/android/incallui/contactgrid/ContactGridManager;
.super Ljava/lang/Object;
.source "ContactGridManager.java"


# static fields
.field private static previousConnectTimeMillis:J

.field private static timeBase:J


# instance fields
.field private avatarImageView:Landroid/widget/ImageView;

.field private avatarSize:I

.field private final bottomEmpty:Landroid/widget/TextView;

.field private final bottomHoldByRemote:Landroid/widget/TextView;

.field private final bottomLocation:Landroid/widget/TextView;

.field private final bottomTextSwitcher:Landroid/widget/ViewAnimator;

.field private final bottomTextView:Landroid/widget/TextView;

.field private final bottomTimerView:Landroid/widget/Chronometer;

.field private final connectionIconImageView:Landroid/widget/ImageView;

.field private final contactGridLayout:Landroid/view/View;

.field private final contactNameTextView:Landroid/widget/TextView;

.field private final contactNumberTextView:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private final forwardIconImageView:Landroid/widget/ImageView;

.field private final forwardedNumberView:Landroid/widget/TextView;

.field private final hdIconImageView:Landroid/widget/ImageView;

.field private hideAvatar:Z

.field public isConnectCall:Z

.field private isTimerStarted:Z

.field private final letterTile:Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private middleRowVisible:Z

.field private noAvatarImageView:Landroid/widget/ImageView;

.field private primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

.field private primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

.field private showAnonymousAvatar:Z

.field private final spamIconImageView:Landroid/widget/ImageView;

.field private final statusTextView:Landroid/widget/TextView;

.field private final workIconImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;IZ)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    .line 96
    iput-boolean p3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->middleRowVisible:Z

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->isConnectCall:Z

    .line 101
    invoke-static {}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->createEmptyPrimaryInfo()Lcom/android/incallui/incall/protocol/PrimaryInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    .line 102
    invoke-static {}, Lcom/android/incallui/incall/protocol/PrimaryCallState;->createEmptyPrimaryCallState()Lcom/android/incallui/incall/protocol/PrimaryCallState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    .line 112
    invoke-static {v1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    const/16 p2, 0x14

    .line 116
    iput p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarSize:I

    .line 117
    iput-boolean p4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->showAnonymousAvatar:Z

    const p2, 0x7f09021f

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->noAvatarImageView:Landroid/widget/ImageView;

    const p2, 0x7f0900f0

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->connectionIconImageView:Landroid/widget/ImageView;

    const p2, 0x7f0900fa

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->statusTextView:Landroid/widget/TextView;

    const p2, 0x7f0900f1

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    const p2, 0x7f0900f2

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNumberTextView:Landroid/widget/TextView;

    const p2, 0x7f0900fc

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->workIconImageView:Landroid/widget/ImageView;

    const p2, 0x7f0900f6

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    const p2, 0x7f0900f4

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardIconImageView:Landroid/widget/ImageView;

    const p2, 0x7f0900f5

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardedNumberView:Landroid/widget/TextView;

    const p2, 0x7f0900f9

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->spamIconImageView:Landroid/widget/ImageView;

    const p2, 0x7f0900ee

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ViewAnimator;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextSwitcher:Landroid/widget/ViewAnimator;

    const p2, 0x7f0900ed

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    const p2, 0x7f0900f8

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomLocation:Landroid/widget/TextView;

    const p2, 0x7f0900f3

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomEmpty:Landroid/widget/TextView;

    const p2, 0x7f0900ef

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Chronometer;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    const p2, 0x7f090185

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomHoldByRemote:Landroid/widget/TextView;

    const p2, 0x7f0900f7

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->linearLayout:Landroid/widget/LinearLayout;

    .line 137
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWSimCard()Z

    move-result p2

    if-nez p2, :cond_0

    .line 138
    invoke-static {}, Lcom/android/incallui/shaken/ContactGrideVerstat;->getInstance()Lcom/android/incallui/shaken/ContactGrideVerstat;

    move-result-object p2

    iget-object p4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    invoke-virtual {p2, p4, p1}, Lcom/android/incallui/shaken/ContactGrideVerstat;->onViewCreated(Landroid/content/Context;Landroid/view/View;)V

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomLocation:Landroid/widget/TextView;

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomLocation:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 145
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    const/high16 p2, 0x41980000    # 19.0f

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 147
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {p1, v0, p2}, Landroid/widget/Chronometer;->setTextSize(IF)V

    .line 148
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/widget/Chronometer;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 149
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 150
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 155
    iget-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {p2, p1}, Landroid/widget/ViewAnimator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactGridLayout:Landroid/view/View;

    .line 159
    new-instance p1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    iget-object p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->letterTile:Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 160
    iput-boolean v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->isTimerStarted:Z

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 241
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 244
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setDisplayedChild(ILcom/android/incallui/contactgrid/BottomRow$Info;)V
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 526
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v3, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 529
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v3, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 532
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v3, v2}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 535
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v3, v2}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 539
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/operatorutils/IOperatorManager;->isCallerScreenEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_1

    .line 540
    :cond_3
    iget-boolean p2, p2, Lcom/android/incallui/contactgrid/BottomRow$Info;->isForwardIconVisible:Z

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "ContactGridManager.setDisplayedChild"

    const-string/jumbo v0, "whichChild: %s, isForwardIconVisible: %s."

    invoke-static {p1, v0, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    .line 546
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 548
    :cond_4
    iget-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateAvatarVisibility()Z
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 253
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->middleRowVisible:Z

    const/16 v3, 0x8

    if-nez v2, :cond_1

    .line 254
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return v1

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photoType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 260
    iget-boolean v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->showAnonymousAvatar:Z

    if-nez v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return v1

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v2
.end method

.method private updateBottomRow()V
    .locals 11

    .line 421
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "ContactGridManager.updateBottomRow"

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getRttCall()Landroid/telecom/Call$RttCall;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-wide v5, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v5, v7

    sput-wide v5, Lcom/android/incallui/contactgrid/ContactGridManager;->timeBase:J

    cmp-long v0, v5, v3

    if-ltz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "00:00"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "when rtt call end back incallfragment,set Time."

    .line 427
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    sget-wide v5, Lcom/android/incallui/contactgrid/ContactGridManager;->timeBase:J

    invoke-virtual {v0, v5, v6}, Landroid/widget/Chronometer;->setBase(J)V

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-object v6, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v7, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/android/incallui/contactgrid/BottomRow;->getInfo(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;Lcom/android/incallui/incall/protocol/PrimaryInfo;Ljava/lang/String;)Lcom/android/incallui/contactgrid/BottomRow$Info;

    move-result-object v0

    .line 436
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomLocation:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->location:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    iget-boolean v6, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isSpamIconVisible:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 439
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->workIconImageView:Landroid/widget/ImageView;

    iget-boolean v6, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isWorkIconVisible:Z

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    move v6, v8

    goto :goto_0

    :cond_3
    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-boolean v5, v5, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 442
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    const v9, 0x7f0800e6

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 444
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const v9, 0x7f0800dd

    if-ne v5, v7, :cond_6

    .line 445
    iget-boolean v5, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isHdAttemptingIconVisible:Z

    if-eqz v5, :cond_5

    .line 446
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 449
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 450
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 451
    instance-of v9, v5, Landroid/graphics/drawable/Animatable;

    if-eqz v9, :cond_9

    check-cast v5, Landroid/graphics/drawable/Animatable;

    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v9

    if-nez v9, :cond_9

    .line 452
    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_1

    .line 454
    :cond_5
    iget-boolean v5, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isHdIconVisible:Z

    if-eqz v5, :cond_9

    .line 455
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 457
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_1

    .line 459
    :cond_6
    iget-boolean v5, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isHdIconVisible:Z

    if-eqz v5, :cond_7

    .line 461
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 464
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_1

    .line 465
    :cond_7
    iget-boolean v5, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isHdAttemptingIconVisible:Z

    if-nez v5, :cond_8

    .line 466
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_8
    const-string v5, "hide hd icon."

    .line 469
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hdIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    :cond_9
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->spamIconImageView:Landroid/widget/ImageView;

    iget-boolean v9, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isSpamIconVisible:Z

    if-eqz v9, :cond_a

    move v9, v8

    goto :goto_2

    :cond_a
    move v9, v7

    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-boolean v5, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isForwardIconVisible:Z

    if-eqz v5, :cond_d

    .line 476
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardedNumberView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-boolean v5, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isTimerVisible:Z

    if-eqz v5, :cond_c

    .line 479
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v8}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    .line 480
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactGridLayout:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    const-string v7, " \u2022 "

    const/4 v9, 0x2

    if-nez v5, :cond_b

    .line 481
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardedNumberView:Landroid/widget/TextView;

    new-array v9, v9, [Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->label:Ljava/lang/CharSequence;

    aput-object v10, v9, v8

    aput-object v7, v9, v6

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 483
    :cond_b
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardedNumberView:Landroid/widget/TextView;

    new-array v9, v9, [Ljava/lang/CharSequence;

    aput-object v7, v9, v8

    iget-object v7, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->label:Ljava/lang/CharSequence;

    aput-object v7, v9, v6

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 486
    :cond_c
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v7}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    .line 487
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardedNumberView:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 490
    :cond_d
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->forwardedNumberView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v8}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    .line 494
    :goto_3
    iget-boolean v5, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->isTimerVisible:Z

    if-eqz v5, :cond_f

    .line 495
    iput-boolean v6, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->isConnectCall:Z

    .line 496
    invoke-direct {p0, v6, v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->setDisplayedChild(ILcom/android/incallui/contactgrid/BottomRow$Info;)V

    .line 497
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-wide v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectTimeMillis:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_e

    sget-wide v0, Lcom/android/incallui/contactgrid/ContactGridManager;->previousConnectTimeMillis:J

    iget-object v5, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-wide v9, v5, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectTimeMillis:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_e

    .line 499
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-wide v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectTimeMillis:J

    sput-wide v0, Lcom/android/incallui/contactgrid/ContactGridManager;->previousConnectTimeMillis:J

    .line 500
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-wide v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v0, v9

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long/2addr v0, v9

    sput-wide v0, Lcom/android/incallui/contactgrid/ContactGridManager;->timeBase:J

    .line 503
    :cond_e
    sget-wide v0, Lcom/android/incallui/contactgrid/ContactGridManager;->timeBase:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_10

    .line 504
    iget-object v3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v3, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 505
    iget-boolean v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->isTimerStarted:Z

    if-nez v0, :cond_10

    new-array v0, v6, [Ljava/lang/Object;

    .line 506
    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    .line 509
    invoke-virtual {v1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "starting timer with base: %d"

    .line 506
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 511
    iput-boolean v6, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->isTimerStarted:Z

    goto :goto_4

    .line 515
    :cond_f
    invoke-direct {p0, v8, v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->setDisplayedChild(ILcom/android/incallui/contactgrid/BottomRow$Info;)V

    .line 516
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTimerView:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 517
    iput-boolean v8, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->isTimerStarted:Z

    .line 518
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-ne v0, v1, :cond_10

    .line 519
    sput-wide v3, Lcom/android/incallui/contactgrid/ContactGridManager;->previousConnectTimeMillis:J

    .line 520
    sput-wide v3, Lcom/android/incallui/contactgrid/ContactGridManager;->timeBase:J

    :cond_10
    :goto_4
    return-void
.end method

.method private updatePrimaryNameAndPhoto()V
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v4, v4, Lcom/android/incallui/incall/protocol/PrimaryInfo;->nameIsNumber:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v4, v4, Lcom/android/incallui/incall/protocol/PrimaryInfo;->name:Ljava/lang/String;

    .line 315
    invoke-static {v4}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v4, v4, Lcom/android/incallui/incall/protocol/PrimaryInfo;->name:Ljava/lang/String;

    .line 313
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v4, 0x1e

    if-le v0, v4, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 320
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 328
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->nameIsNumber:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    move v0, v3

    .line 331
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 332
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNumberTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomEmpty:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 333
    iget-object v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v4, v4, Lcom/android/incallui/incall/protocol/PrimaryInfo;->nameIsNumber:Z

    if-eqz v4, :cond_4

    const-string v4, ""

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v4, v4, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-boolean v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->nameIsNumber:Z

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 339
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 354
    iget-boolean v4, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hideAvatar:Z

    if-eqz v4, :cond_7

    .line 355
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->noAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 358
    :cond_7
    iget v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarSize:I

    if-lez v0, :cond_d

    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updateAvatarVisibility()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 359
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->noAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photoType:I

    if-ne v0, v2, :cond_8

    goto :goto_5

    :cond_8
    move v1, v3

    .line 362
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasPhoto = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ContactGridManager "

    invoke-static {v4, v0, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_9

    .line 364
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v2, v2, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photo:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x50

    .line 365
    invoke-static {v1, v2, v3, v3}, Lcom/android/dialer/util/DrawableConverter;->getRoundedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 368
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 369
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 370
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-eq v0, v2, :cond_c

    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget v0, v0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-nez v0, :cond_b

    goto :goto_6

    .line 374
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 372
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_d
    :goto_7
    return-void
.end method

.method private updateTopRow()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-object v2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/contactgrid/TopRow;->getInfo(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;Lcom/android/incallui/incall/protocol/PrimaryInfo;)Lcom/android/incallui/contactgrid/TopRow$Info;

    move-result-object v0

    .line 282
    iget-object v1, v0, Lcom/android/incallui/contactgrid/TopRow$Info;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->statusTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->statusTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->statusTextView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/incallui/contactgrid/TopRow$Info;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->statusTextView:Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/android/incallui/contactgrid/TopRow$Info;->labelIsSingleLine:Z

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 292
    :goto_0
    iget-object v1, v0, Lcom/android/incallui/contactgrid/TopRow$Info;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->connectionIconImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->connectionIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->connectionIconImageView:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/incallui/contactgrid/TopRow$Info;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->statusTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-object v2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/contactgrid/BottomRow;->getInfo(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;Lcom/android/incallui/incall/protocol/PrimaryInfo;Ljava/lang/String;)Lcom/android/incallui/contactgrid/BottomRow$Info;

    move-result-object v0

    .line 225
    iget-boolean v0, v0, Lcom/android/incallui/contactgrid/BottomRow$Info;->shouldPopulateAccessibilityEvent:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactGridLayout:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactGridLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isAvatarHidden()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hideAvatar:Z

    return v0
.end method

.method public setAvatarHidden(Z)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hideAvatar:Z

    if-eq p1, v0, :cond_0

    .line 173
    iput-boolean p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->hideAvatar:Z

    .line 174
    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updatePrimaryNameAndPhoto()V

    :cond_0
    return-void
.end method

.method public setAvatarImageView(Landroid/widget/ImageView;IZ)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarImageView:Landroid/widget/ImageView;

    .line 233
    iput p2, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->avatarSize:I

    .line 234
    iput-boolean p3, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->showAnonymousAvatar:Z

    .line 235
    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updatePrimaryNameAndPhoto()V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryCallState:Lcom/android/incallui/incall/protocol/PrimaryCallState;

    .line 216
    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updatePrimaryNameAndPhoto()V

    .line 217
    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updateBottomRow()V

    return-void
.end method

.method public setIsMiddleRowVisible(Z)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->middleRowVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 190
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->middleRowVisible:Z

    .line 192
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactNameTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updateAvatarVisibility()Z

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->primaryInfo:Lcom/android/incallui/incall/protocol/PrimaryInfo;

    .line 198
    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updatePrimaryNameAndPhoto()V

    .line 199
    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updateBottomRow()V

    return-void
.end method

.method public setRemoteHold()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomHoldByRemote:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomHoldByRemote:Landroid/widget/TextView;

    const-string v1, "OnHold"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setResume()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->bottomHoldByRemote:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-direct {p0}, Lcom/android/incallui/contactgrid/ContactGridManager;->updateBottomRow()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/incallui/contactgrid/ContactGridManager;->contactGridLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
