.class public Lcom/android/dialer/app/list/RemoveView;
.super Landroid/widget/FrameLayout;
.source "RemoveView.java"


# instance fields
.field mDragDropController:Lcom/android/dialer/app/list/DragDropController;

.field mHighlightedColor:I

.field mRemoveDrawable:Landroid/graphics/drawable/Drawable;

.field mRemoveIcon:Landroid/widget/ImageView;

.field mRemoveText:Landroid/widget/TextView;

.field mUnhighlightedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/app/list/RemoveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setAppearanceHighlighted()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/app/list/RemoveView;->mHighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/app/list/RemoveView;->mHighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RemoveView;->invalidate()V

    return-void
.end method

.method private setAppearanceNormal()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/app/list/RemoveView;->mUnhighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/app/list/RemoveView;->mUnhighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RemoveView;->invalidate()V

    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    .line 68
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const/16 v3, 0x4000

    if-eq v0, v1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/list/RemoveView;->setAppearanceNormal()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/dialer/app/list/RemoveView;->sendAccessibilityEvent(I)V

    .line 74
    invoke-direct {p0}, Lcom/android/dialer/app/list/RemoveView;->setAppearanceHighlighted()V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/dialer/app/list/RemoveView;->sendAccessibilityEvent(I)V

    .line 86
    iget-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/dialer/app/list/DragDropController;->handleDragFinished(IIZ)V

    .line 89
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/app/list/RemoveView;->setAppearanceNormal()V

    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/dialer/app/list/DragDropController;->handleDragHovered(Landroid/view/View;II)V

    :cond_5
    :goto_0
    return v2
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f090266

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/RemoveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    const v0, 0x7f090265

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/RemoveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0}, Lcom/android/dialer/app/list/RemoveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060162

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/list/RemoveView;->mUnhighlightedColor:I

    const v1, 0x7f060161

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/list/RemoveView;->mHighlightedColor:I

    const v1, 0x7f08012b

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/list/RemoveView;->mRemoveDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDragDropController(Lcom/android/dialer/app/list/DragDropController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/dialer/app/list/RemoveView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    return-void
.end method
