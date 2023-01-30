.class public Lcom/android/contacts/common/list/PinnedHeaderListView;
.super Lcom/android/contacts/common/list/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x1

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x14

.field private static final DEFAULT_SMOOTH_SCROLL_DURATION:I = 0x64

.field private static final FADING:I = 0x2

.field private static final MAX_ALPHA:I = 0xff

.field private static final TOP:I


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mHeaderPaddingStart:I

.field private mHeaderTouched:Z

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mScrollToSectionOnHeaderTouch:Z

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010074

    .line 62
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/list/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    .line 54
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    const/16 p1, 0x14

    .line 55
    iput p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    .line 71
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 72
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V
    .locals 4

    .line 495
    iget-boolean v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v0, :cond_1

    .line 496
    iget-wide v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v0, p3

    long-to-int p3, v0

    if-gtz p3, :cond_0

    .line 498
    iget p3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput p3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 499
    iget-boolean p3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean p3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 p3, 0x0

    .line 500
    iput-boolean p3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    goto :goto_0

    .line 502
    :cond_0
    iget p4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v1, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p3

    iget p3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v0, p3

    add-int/2addr p4, v0

    iput p4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 506
    :cond_1
    :goto_0
    iget-boolean p3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz p3, :cond_4

    .line 507
    iget-object p3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 508
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p4

    .line 510
    invoke-static {p0}, Lcom/android/dialer/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    :goto_1
    int-to-float v0, v0

    .line 513
    iget v1, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 514
    iget v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 515
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 516
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget p2, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 518
    :cond_3
    invoke-virtual {p3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 519
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 6

    .line 305
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 311
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    .line 312
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    .line 314
    :cond_0
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 317
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    .line 318
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 319
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    .line 321
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 323
    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 325
    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v2, p1

    iput v1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0, v4, v4, p1, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method private invalidateIfAnimating()V
    .locals 2

    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    .line 422
    :goto_0
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    .line 425
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidate()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 403
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_3

    .line 410
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v1

    .line 411
    iget-boolean v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_2

    .line 412
    iget v3, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result p1

    add-int/2addr v0, p1

    const/16 p1, 0x64

    .line 415
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPositionFromTop(III)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 433
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 436
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 438
    :goto_1
    iget v7, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v4, v7, :cond_5

    .line 439
    iget-object v7, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v7, v4

    .line 440
    iget-boolean v10, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v10, :cond_4

    .line 442
    iget v5, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v5, v9, :cond_1

    iget v5, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v5, v2, :cond_1

    .line 443
    iget v2, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_2

    .line 444
    :cond_1
    iget v5, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v5, :cond_2

    iget v5, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v5, v8, :cond_3

    .line 445
    :cond_2
    iget v5, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v7, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v5, v7

    if-le v5, v6, :cond_3

    move v6, v5

    :cond_3
    :goto_2
    move v5, v9

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 454
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    :cond_6
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v5, :cond_d

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 465
    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_8

    .line 466
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 467
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v4, v3

    if-eqz v4, :cond_8

    if-eqz v2, :cond_7

    .line 470
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_3

    :cond_7
    move v2, v3

    .line 471
    :goto_3
    iget v5, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 476
    :cond_8
    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_b

    .line 477
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v4, v2

    .line 478
    iget-boolean v5, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v5, :cond_9

    iget v5, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v5, :cond_a

    iget v5, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v5, v8, :cond_9

    .line 479
    :cond_a
    invoke-direct {p0, p1, v4, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_4

    .line 483
    :cond_b
    :goto_5
    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v3, v2, :cond_d

    .line 484
    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v2, v3

    .line 485
    iget-boolean v4, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_c

    iget v4, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v4, v9, :cond_c

    .line 486
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 491
    :cond_d
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    return-void
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1

    .line 195
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 196
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method public getPositionAt(I)I
    .locals 2

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 3

    .line 332
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    .line 334
    iget-boolean v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 335
    iget v0, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 358
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 362
    :cond_0
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    if-nez v1, :cond_3

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 365
    iget v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 366
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v4

    .line 369
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v6

    .line 370
    iget-boolean v7, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v7, :cond_1

    iget v7, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v7, v1, :cond_1

    iget v7, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v8, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v7, v8

    if-le v7, v1, :cond_1

    if-lt v3, v6, :cond_1

    iget-object v5, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 374
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v6, v5

    if-lt v6, v3, :cond_1

    .line 375
    iput-boolean v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 376
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 377
    invoke-direct {p0, v4}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result p1

    return p1

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 161
    :goto_0
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v1, v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v1

    .line 163
    iget-boolean v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 164
    iget v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v4, :cond_0

    .line 165
    iget v2, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 166
    :cond_0
    iget v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 167
    iget v0, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v2, :cond_3

    .line 176
    invoke-virtual {p0, p3, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 177
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v0, :cond_4

    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 182
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 183
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 77
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/AutoScrollListView;->onLayout(ZIIII)V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 107
    iget-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz p1, :cond_4

    .line 108
    invoke-interface {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result p1

    .line 109
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 110
    iput p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .line 111
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    if-nez v0, :cond_0

    .line 112
    new-array p1, p1, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    goto :goto_0

    .line 113
    :cond_0
    array-length v2, v0

    if-ge v2, p1, :cond_1

    .line 115
    new-array p1, p1, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 116
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v1, p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, p1, v1

    if-nez v0, :cond_2

    .line 122
    new-instance v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/common/list/PinnedHeaderListView$1;)V

    aput-object v0, p1, v1

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, p1, v1

    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v2, v1, p1, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 128
    iget-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {p1, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    .line 129
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p1, :cond_5

    .line 132
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 144
    iput p2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    .line 145
    iget-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    :cond_0
    return v0

    .line 396
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 37
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 85
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 3

    .line 256
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v0, 0x2

    .line 265
    iput v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/16 v0, 0xff

    .line 266
    iput v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/4 v1, 0x0

    .line 267
    iput-boolean v1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 269
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v1

    .line 270
    iput v1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-eqz p3, :cond_1

    .line 272
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v1

    .line 273
    iget p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    if-ge p2, p3, :cond_1

    sub-int/2addr p2, p3

    add-int v2, p3, p2

    mul-int/2addr v2, v0

    .line 276
    div-int/2addr v2, p3

    iput v2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    add-int/2addr v1, p2

    .line 277
    iput v1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    :cond_1
    return-void
.end method

.method public setHeaderInvisible(IZ)V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    .line 290
    iget-boolean v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iget-boolean p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz p2, :cond_2

    :cond_0
    iget p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 291
    iget p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 292
    iget-boolean p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez p2, :cond_1

    .line 293
    iput-boolean v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 294
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result p2

    iget v2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr p2, v2

    iput p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 296
    :cond_1
    iput-boolean v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 297
    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 298
    iput-boolean v1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    goto :goto_0

    .line 300
    :cond_2
    iput-boolean v1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    :goto_0
    return-void
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 2

    .line 225
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 226
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    .line 227
    iput v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 228
    iget-boolean v1, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 229
    iget-wide v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 230
    iget p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 231
    iput p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_3

    .line 232
    iget p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne p3, p2, :cond_1

    iget-boolean p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez p3, :cond_3

    .line 233
    :cond_1
    iget-boolean p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz p3, :cond_2

    .line 234
    iget p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_0

    .line 236
    :cond_2
    iput-boolean v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 237
    iget p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 239
    :goto_0
    iput-boolean v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 240
    iput-boolean v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 241
    iget-wide v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 242
    iput p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_1

    .line 244
    :cond_3
    iput-boolean v0, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 245
    iput p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    :goto_1
    return-void
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 208
    iget-object p3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object p1, p3, p1

    const/4 p3, 0x1

    .line 209
    iput-boolean p3, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 210
    iput p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    const/4 p2, 0x0

    .line 211
    iput p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 214
    iput-boolean p2, p1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 97
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 91
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public setScrollToSectionOnHeaderTouch(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    return-void
.end method
