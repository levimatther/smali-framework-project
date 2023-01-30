.class public Lcom/android/incallui/incall/impl/InCallButtonGridFragment;
.super Landroidx/fragment/app/Fragment;
.source "InCallButtonGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;
    }
.end annotation


# static fields
.field private static final BUTTONS_PER_ROW:I = 0x3

.field private static final BUTTON_COUNT:I = 0x6


# instance fields
.field private buttonGridListener:Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;

.field private buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    .line 40
    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    return-void
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;

    invoke-direct {v0}, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-class p1, Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;

    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttonGridListener:Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;

    .line 51
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00a7

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const p3, 0x7f09019b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    aput-object p3, p2, v0

    .line 61
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const p3, 0x7f0901a3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const/4 v0, 0x1

    aput-object p3, p2, v0

    .line 62
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const p3, 0x7f0901a5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const/4 v0, 0x2

    aput-object p3, p2, v0

    .line 63
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const p3, 0x7f09019c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const/4 v0, 0x3

    aput-object p3, p2, v0

    .line 64
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const p3, 0x7f09019a

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const/4 v0, 0x4

    aput-object p3, p2, v0

    .line 65
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const p3, 0x7f0901a4

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    const/4 v0, 0x5

    aput-object p3, p2, v0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 79
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttonGridListener:Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;

    invoke-interface {v0}, Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;->onButtonGridDestroyed()V

    return-void
.end method

.method public onInCallScreenDialpadVisibilityChange(Z)V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz p1, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :cond_0
    move v5, v2

    .line 84
    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setImportantForAccessibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttonGridListener:Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;

    invoke-interface {p1, p0}, Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;->onButtonGridCreated(Lcom/android/incallui/incall/impl/InCallButtonGridFragment;)V

    return-void
.end method

.method public updateButtonStates(Ljava/util/List;Lcom/android/incallui/incall/impl/ButtonChooser;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/incall/impl/ButtonController;",
            ">;",
            "Lcom/android/incallui/incall/impl/ButtonChooser;",
            "II)I"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 97
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/incall/impl/ButtonController;

    .line 99
    invoke-interface {v3}, Lcom/android/incallui/incall/impl/ButtonController;->isAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-interface {v3}, Lcom/android/incallui/incall/impl/ButtonController;->getInCallButtonId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v3}, Lcom/android/incallui/incall/impl/ButtonController;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    invoke-interface {v3}, Lcom/android/incallui/incall/impl/ButtonController;->getInCallButtonId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/incall/impl/ButtonController;

    const/4 v3, 0x0

    .line 108
    invoke-interface {v2, v3}, Lcom/android/incallui/incall/impl/ButtonController;->setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    if-nez p2, :cond_3

    .line 113
    invoke-static {p3, p1, p4}, Lcom/android/incallui/incall/impl/ButtonChooserFactory;->newButtonChooser(IZI)Lcom/android/incallui/incall/impl/ButtonChooser;

    move-result-object p2

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0a001c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x3

    .line 118
    invoke-virtual {p2, p3, v0, v1}, Lcom/android/incallui/incall/impl/ButtonChooser;->getButtonPlacement(ILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    :goto_2
    const/4 p4, 0x6

    if-ge p1, p4, :cond_5

    .line 121
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-lt p1, p4, :cond_4

    .line 122
    iget-object p4, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    aget-object p4, p4, p1

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setVisibility(I)V

    goto :goto_3

    .line 125
    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 126
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttonGridListener:Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;

    invoke-interface {v0, p4}, Lcom/android/incallui/incall/impl/InCallButtonGridFragment$OnButtonGridCreatedListener;->getButtonController(I)Lcom/android/incallui/incall/impl/ButtonController;

    move-result-object p4

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->buttons:[Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    aget-object v0, v0, p1

    invoke-interface {p4, v0}, Lcom/android/incallui/incall/impl/ButtonController;->setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return p3
.end method
