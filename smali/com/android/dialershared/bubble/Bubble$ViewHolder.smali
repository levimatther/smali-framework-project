.class Lcom/android/dialershared/bubble/Bubble$ViewHolder;
.super Ljava/lang/Object;
.source "Bubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/Bubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# static fields
.field public static final CHILD_INDEX_ICON:I = 0x0

.field public static final CHILD_INDEX_TEXT:I = 0x1


# instance fields
.field private final expandedView:Landroid/view/View;

.field private final firstButton:Lcom/android/dialershared/bubble/CheckableImageButton;

.field private moveHandler:Lcom/android/dialershared/bubble/MoveHandler;

.field private final primaryButton:Landroid/widget/ViewAnimator;

.field private final primaryIcon:Landroid/widget/ImageView;

.field private final primaryText:Landroid/widget/TextView;

.field private final root:Lcom/android/dialershared/bubble/WindowRoot;

.field private final secondButton:Lcom/android/dialershared/bubble/CheckableImageButton;

.field private final shadowProvider:Landroid/view/View;

.field private final thirdButton:Lcom/android/dialershared/bubble/CheckableImageButton;

.field final synthetic this$0:Lcom/android/dialershared/bubble/Bubble;


# direct methods
.method public constructor <init>(Lcom/android/dialershared/bubble/Bubble;Landroid/content/Context;)V
    .locals 4

    .line 703
    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    new-instance v0, Lcom/android/dialershared/bubble/WindowRoot;

    invoke-direct {v0, p2}, Lcom/android/dialershared/bubble/WindowRoot;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->root:Lcom/android/dialershared/bubble/WindowRoot;

    .line 706
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/WindowRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->root:Lcom/android/dialershared/bubble/WindowRoot;

    const v2, 0x7f0c003c

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007c

    .line 708
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->expandedView:Landroid/view/View;

    const v1, 0x7f09007a

    .line 709
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->primaryButton:Landroid/widget/ViewAnimator;

    const v1, 0x7f09007e

    .line 710
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->primaryIcon:Landroid/widget/ImageView;

    const v1, 0x7f090082

    .line 711
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->primaryText:Landroid/widget/TextView;

    const v1, 0x7f09007b

    .line 712
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->shadowProvider:Landroid/view/View;

    const v1, 0x7f09007d

    .line 714
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialershared/bubble/CheckableImageButton;

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->firstButton:Lcom/android/dialershared/bubble/CheckableImageButton;

    const v1, 0x7f09007f

    .line 715
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialershared/bubble/CheckableImageButton;

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->secondButton:Lcom/android/dialershared/bubble/CheckableImageButton;

    const v1, 0x7f090080

    .line 716
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialershared/bubble/CheckableImageButton;

    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->thirdButton:Lcom/android/dialershared/bubble/CheckableImageButton;

    .line 718
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->root:Lcom/android/dialershared/bubble/WindowRoot;

    new-instance v1, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$erm65-cedyeUgwPENkepWLMLLi4;

    invoke-direct {v1, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$erm65-cedyeUgwPENkepWLMLLi4;-><init>(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/WindowRoot;->setOnBackPressedListener(Lcom/android/dialershared/bubble/WindowRoot$OnBackPressedListener;)V

    .line 726
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->root:Lcom/android/dialershared/bubble/WindowRoot;

    new-instance v1, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$LJJLiLL3elzEvdIrcW7jsAPg-OQ;

    invoke-direct {v1, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$LJJLiLL3elzEvdIrcW7jsAPg-OQ;-><init>(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/WindowRoot;->setOnConfigurationChangedListener(Lcom/android/dialershared/bubble/WindowRoot$OnConfigurationChangedListener;)V

    .line 733
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->root:Lcom/android/dialershared/bubble/WindowRoot;

    new-instance v1, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$ErM6JGtLl_85O14KRC-kkQclB_I;

    invoke-direct {v1, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$ErM6JGtLl_85O14KRC-kkQclB_I;-><init>(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/WindowRoot;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 741
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->expandedView:Landroid/view/View;

    .line 742
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$m4xoCEr_0pOtQN_kjvhFvmoi2rs;

    invoke-direct {v1, p0, p2}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$ViewHolder$m4xoCEr_0pOtQN_kjvhFvmoi2rs;-><init>(Lcom/android/dialershared/bubble/Bubble$ViewHolder;Landroid/content/Context;)V

    .line 743
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 763
    new-instance p2, Lcom/android/dialershared/bubble/MoveHandler;

    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->primaryButton:Landroid/widget/ViewAnimator;

    invoke-direct {p2, v0, p1}, Lcom/android/dialershared/bubble/MoveHandler;-><init>(Landroid/view/View;Lcom/android/dialershared/bubble/Bubble;)V

    iput-object p2, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->moveHandler:Lcom/android/dialershared/bubble/MoveHandler;

    return-void
.end method


# virtual methods
.method public getExpandedView()Landroid/view/View;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->expandedView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstButton()Lcom/android/dialershared/bubble/CheckableImageButton;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->firstButton:Lcom/android/dialershared/bubble/CheckableImageButton;

    return-object v0
.end method

.method public getPrimaryButton()Landroid/widget/ViewAnimator;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->primaryButton:Landroid/widget/ViewAnimator;

    return-object v0
.end method

.method public getPrimaryIcon()Landroid/widget/ImageView;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->primaryIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrimaryText()Landroid/widget/TextView;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->primaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRoot()Landroid/view/ViewGroup;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->root:Lcom/android/dialershared/bubble/WindowRoot;

    return-object v0
.end method

.method public getSecondButton()Lcom/android/dialershared/bubble/CheckableImageButton;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->secondButton:Lcom/android/dialershared/bubble/CheckableImageButton;

    return-object v0
.end method

.method public getShadowProvider()Landroid/view/View;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->shadowProvider:Landroid/view/View;

    return-object v0
.end method

.method public getThirdButton()Lcom/android/dialershared/bubble/CheckableImageButton;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->thirdButton:Lcom/android/dialershared/bubble/CheckableImageButton;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->moveHandler:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/MoveHandler;->isMoving()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$Bubble$ViewHolder()Z
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-static {v0}, Lcom/android/dialershared/bubble/Bubble;->access$500(Lcom/android/dialershared/bubble/Bubble;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-static {v0}, Lcom/android/dialershared/bubble/Bubble;->access$300(Lcom/android/dialershared/bubble/Bubble;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-static {v0, v1}, Lcom/android/dialershared/bubble/Bubble;->access$400(Lcom/android/dialershared/bubble/Bubble;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public synthetic lambda$new$1$Bubble$ViewHolder(Landroid/content/res/Configuration;)V
    .locals 2

    .line 730
    new-instance p1, Lcom/android/dialershared/bubble/MoveHandler;

    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->primaryButton:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-direct {p1, v0, v1}, Lcom/android/dialershared/bubble/MoveHandler;-><init>(Landroid/view/View;Lcom/android/dialershared/bubble/Bubble;)V

    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->moveHandler:Lcom/android/dialershared/bubble/MoveHandler;

    .line 731
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/MoveHandler;->snapToBounds()V

    return-void
.end method

.method public synthetic lambda$new$2$Bubble$ViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 735
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-static {p1}, Lcom/android/dialershared/bubble/Bubble;->access$300(Lcom/android/dialershared/bubble/Bubble;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 736
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-static {p1, v0}, Lcom/android/dialershared/bubble/Bubble;->access$400(Lcom/android/dialershared/bubble/Bubble;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public synthetic lambda$new$3$Bubble$ViewHolder(Landroid/content/Context;)V
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->expandedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    .line 746
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->expandedView:Landroid/view/View;

    .line 747
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 749
    iget-object v2, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-static {v2}, Lcom/android/dialershared/bubble/Bubble;->access$000(Lcom/android/dialershared/bubble/Bubble;)Z

    move-result v2

    const v3, 0x7f070080

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->shadowProvider:Landroid/view/View;

    .line 751
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 752
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v2, p1

    .line 753
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->shadowProvider:Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->expandedView:Landroid/view/View;

    .line 754
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 753
    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    goto :goto_0

    .line 756
    :cond_0
    iget-object v2, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->shadowProvider:Landroid/view/View;

    .line 757
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 758
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v2, p1

    .line 759
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->shadowProvider:Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->expandedView:Landroid/view/View;

    .line 760
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 759
    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    :goto_0
    return-void
.end method

.method public setDrawerVisibility(I)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->expandedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->shadowProvider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public undoGravityOverride()V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->moveHandler:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/MoveHandler;->undoGravityOverride()V

    return-void
.end method
