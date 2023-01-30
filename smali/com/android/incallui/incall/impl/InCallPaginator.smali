.class public Lcom/android/incallui/incall/impl/InCallPaginator;
.super Landroid/view/View;
.source "InCallPaginator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private activeDotPaintPortrait:Landroid/graphics/Paint;

.field private dotRadius:I

.field private dotsSeparation:I

.field private inactiveDotPaintPortrait:Landroid/graphics/Paint;

.field private inactiveDotPath:Landroid/graphics/Path;

.field private pageChanged:Z

.field private progress:F

.field private toFirstPage:Z

.field private transitionAnimator:Landroid/animation/ValueAnimator;

.field private useModeSwitchTransition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/InCallPaginator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/InCallPaginator;->init(Landroid/content/Context;)V

    return-void
.end method

.method private endTransition(Z)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->useModeSwitchTransition:Z

    .line 105
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 106
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallPaginator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotRadius:I

    .line 64
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallPaginator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotsSeparation:I

    const v0, 0x7f06014c

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v1, 0x7f06014d

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->activeDotPaintPortrait:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPaintPortrait:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 74
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 77
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/incallui/incall/impl/-$$Lambda$InCallPaginator$puyxUuszD_0NcgE1NPvkVATsFMI;

    invoke-direct {v0, p0}, Lcom/android/incallui/incall/impl/-$$Lambda$InCallPaginator$puyxUuszD_0NcgE1NPvkVATsFMI;-><init>(Lcom/android/incallui/incall/impl/InCallPaginator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startTransition()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->progress:F

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->useModeSwitchTransition:Z

    .line 97
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$InCallPaginator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallPaginator;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 112
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallPaginator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/incall/impl/InCallPaginator;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 117
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 120
    iget-object v5, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 121
    iget-boolean v5, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->useModeSwitchTransition:Z

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v5, :cond_1

    .line 122
    iget v5, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotRadius:I

    mul-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    mul-int/lit8 v9, v5, 0x2

    iget v10, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotsSeparation:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    int-to-float v5, v5

    const/high16 v9, 0x3f000000    # 0.5f

    .line 123
    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v7

    sub-float v4, v6, v4

    mul-float/2addr v5, v4

    .line 124
    iget v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotRadius:I

    iget v9, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotsSeparation:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    int-to-float v9, v9

    .line 125
    iget-boolean v10, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->toFirstPage:Z

    if-eqz v10, :cond_0

    int-to-float v10, v2

    sub-float v11, v10, v9

    int-to-float v12, v4

    sub-float v14, v11, v12

    .line 127
    iget-object v13, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    sub-int v11, v3, v4

    int-to-float v15, v11

    add-float v16, v14, v8

    add-int v8, v3, v4

    int-to-float v8, v8

    int-to-float v11, v4

    int-to-float v4, v4

    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v17, v8

    move/from16 v18, v11

    move/from16 v19, v4

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 135
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    add-float/2addr v10, v9

    int-to-float v8, v3

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v10, v8, v5, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    int-to-float v10, v2

    add-float v11, v10, v9

    int-to-float v12, v4

    add-float v16, v11, v12

    .line 139
    iget-object v13, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    sub-float v14, v16, v8

    sub-int v8, v3, v4

    int-to-float v15, v8

    add-int v8, v3, v4

    int-to-float v8, v8

    int-to-float v11, v4

    int-to-float v4, v4

    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v17, v8

    move/from16 v18, v11

    move/from16 v19, v4

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 147
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    sub-float/2addr v10, v9

    int-to-float v8, v3

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v10, v8, v5, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 151
    :cond_1
    iget v5, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotsSeparation:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    .line 152
    iget v8, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotRadius:I

    int-to-float v9, v8

    add-float/2addr v9, v5

    mul-float/2addr v4, v9

    sub-float v4, v5, v4

    int-to-float v9, v8

    mul-float/2addr v9, v7

    add-float/2addr v9, v5

    .line 154
    iget-object v10, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    int-to-float v5, v2

    sub-float v11, v5, v9

    sub-int v12, v3, v8

    int-to-float v12, v12

    sub-float v13, v5, v4

    add-int v14, v3, v8

    int-to-float v14, v14

    int-to-float v15, v8

    int-to-float v8, v8

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 162
    iget-object v8, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    add-float v19, v5, v4

    iget v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotRadius:I

    sub-int v10, v3, v4

    int-to-float v10, v10

    add-float v21, v5, v9

    add-int v5, v3, v4

    int-to-float v5, v5

    int-to-float v9, v4

    int-to-float v4, v4

    sget-object v25, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v18, v8

    move/from16 v20, v10

    move/from16 v22, v5

    move/from16 v23, v9

    move/from16 v24, v4

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 171
    :goto_0
    iget-object v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPaintPortrait:Landroid/graphics/Paint;

    .line 172
    iget-object v5, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->inactiveDotPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    iget-boolean v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->toFirstPage:Z

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->progress:F

    mul-float/2addr v4, v7

    sub-float/2addr v6, v4

    goto :goto_1

    :cond_2
    iget v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->progress:F

    mul-float/2addr v4, v7

    sub-float v6, v4, v6

    :goto_1
    iget v4, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotRadius:I

    iget v5, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->dotsSeparation:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    int-to-float v5, v5

    mul-float/2addr v6, v5

    .line 177
    iget-object v5, v0, Lcom/android/incallui/incall/impl/InCallPaginator;->activeDotPaintPortrait:Landroid/graphics/Paint;

    int-to-float v2, v2

    add-float/2addr v2, v6

    int-to-float v3, v3

    int-to-float v4, v4

    .line 178
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/InCallPaginator;->startTransition()V

    goto :goto_0

    .line 200
    :cond_1
    iget-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->pageChanged:Z

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/InCallPaginator;->endTransition(Z)V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->pageChanged:Z

    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 188
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/incallui/incall/impl/InCallPaginator;->setProgress(FZ)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->pageChanged:Z

    return-void
.end method

.method public setProgress(FZ)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->progress:F

    .line 83
    iput-boolean p2, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->toFirstPage:Z

    .line 86
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallPaginator;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallPaginator;->invalidate()V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 3

    .line 182
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Invalid page count."

    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
