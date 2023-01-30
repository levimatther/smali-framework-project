.class public Lcom/android/incallui/hold/OnHoldFragment;
.super Landroidx/fragment/app/Fragment;
.source "OnHoldFragment.java"


# static fields
.field private static final ARG_INFO:Ljava/lang/String; = "info"

.field private static final ARG_NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private number:Landroid/widget/TextView;

.field private padTopInset:Z

.field private topInset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/incallui/hold/OnHoldFragment;->padTopInset:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/hold/OnHoldFragment;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/incallui/hold/OnHoldFragment;->topInset:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/hold/OnHoldFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/incallui/hold/OnHoldFragment;->applyInset()V

    return-void
.end method

.method private applyInset()V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/android/incallui/hold/OnHoldFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/hold/OnHoldFragment;->padTopInset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/hold/OnHoldFragment;->topInset:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/hold/OnHoldFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/android/incallui/hold/OnHoldFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/incallui/hold/OnHoldFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public static newInstance(Lcom/android/incallui/incall/protocol/SecondaryInfo;Ljava/lang/String;)Lcom/android/incallui/hold/OnHoldFragment;
    .locals 3

    .line 48
    new-instance v0, Lcom/android/incallui/hold/OnHoldFragment;

    invoke-direct {v0}, Lcom/android/incallui/hold/OnHoldFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "info"

    .line 50
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "number"

    .line 51
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/incallui/hold/OnHoldFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0c00ab

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/hold/OnHoldFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/incallui/hold/OnHoldFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f06018b

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/hold/OnHoldFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "info"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/incall/protocol/SecondaryInfo;

    .line 67
    invoke-virtual {p0}, Lcom/android/incallui/hold/OnHoldFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "number"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 68
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/incall/protocol/SecondaryInfo;

    const v1, 0x7f090183

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, p2, Lcom/android/incallui/incall/protocol/SecondaryInfo;->nameIsNumber:Z

    if-eqz v2, :cond_0

    .line 74
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    iget-object v3, p2, Lcom/android/incallui/incall/protocol/SecondaryInfo;->name:Ljava/lang/String;

    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 75
    invoke-virtual {v2, v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lcom/android/incallui/incall/protocol/SecondaryInfo;->name:Ljava/lang/String;

    .line 71
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090184

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/hold/OnHoldFragment;->number:Landroid/widget/TextView;

    .line 80
    iget-boolean v1, p2, Lcom/android/incallui/incall/protocol/SecondaryInfo;->nameIsNumber:Z

    if-nez v1, :cond_2

    iget-boolean p2, p2, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isConference:Z

    if-eqz p2, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/android/incallui/hold/OnHoldFragment;->number:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object p2, p0, Lcom/android/incallui/hold/OnHoldFragment;->number:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 81
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/incallui/hold/OnHoldFragment;->number:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_2
    new-instance p2, Lcom/android/incallui/hold/OnHoldFragment$1;

    invoke-direct {p2, p0}, Lcom/android/incallui/hold/OnHoldFragment$1;-><init>(Lcom/android/incallui/hold/OnHoldFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object p1
.end method

.method public setPadTopInset(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/incallui/hold/OnHoldFragment;->padTopInset:Z

    .line 104
    invoke-direct {p0}, Lcom/android/incallui/hold/OnHoldFragment;->applyInset()V

    return-void
.end method
