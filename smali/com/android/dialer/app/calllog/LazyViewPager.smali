.class public Lcom/android/dialer/app/calllog/LazyViewPager;
.super Landroid/view/ViewGroup;
.source "LazyViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;,
        Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;,
        Lcom/android/dialer/app/calllog/LazyViewPager$SimpleOnPageChangeListener;,
        Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;,
        Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LazyViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mBaseLineFlingVelocity:F

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFlingVelocityInfluence:F

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/android/dialer/app/calllog/LazyViewPager$1;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/LazyViewPager$1;-><init>()V

    sput-object v0, Lcom/android/dialer/app/calllog/LazyViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 92
    new-instance v0, Lcom/android/dialer/app/calllog/LazyViewPager$2;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/LazyViewPager$2;-><init>()V

    sput-object v0, Lcom/android/dialer/app/calllog/LazyViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 255
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 107
    iput-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOffscreenPageLimit:I

    .line 137
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFirstLayout:Z

    .line 180
    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrollState:I

    .line 256
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 106
    iput-object p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 107
    iput-object p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const/4 p2, 0x0

    .line 122
    iput p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOffscreenPageLimit:I

    .line 137
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFirstLayout:Z

    .line 180
    iput p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrollState:I

    .line 261
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->initViewPager()V

    return-void
.end method

.method private completeScroll()V
    .locals 6

    .line 1045
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1048
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollingCacheEnabled(Z)V

    .line 1049
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1050
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result v2

    .line 1051
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollY()I

    move-result v3

    .line 1052
    iget-object v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1053
    iget-object v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 1055
    :cond_0
    invoke-virtual {p0, v4, v5}, Lcom/android/dialer/app/calllog/LazyViewPager;->scrollTo(II)V

    .line 1057
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollState(I)V

    .line 1059
    :cond_2
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPopulatePending:Z

    .line 1060
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrolling:Z

    move v2, v1

    .line 1061
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1062
    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    .line 1063
    iget-boolean v4, v3, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_3

    .line 1065
    iput-boolean v1, v3, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->scrolling:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 1069
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->populate()V

    :cond_5
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 1583
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    .line 1584
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsUnableToDrag:Z

    .line 1586
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1587
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1588
    iput-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1567
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1568
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1569
    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1573
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1574
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    .line 1576
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1577
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    add-int/2addr p1, p3

    if-lez p2, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result p3

    add-int/2addr p2, p4

    .line 956
    div-int p4, p3, p2

    .line 957
    rem-int/2addr p3, p2

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, p4

    add-float/2addr p2, p3

    int-to-float p3, p1

    mul-float/2addr p2, p3

    float-to-int v1, p2

    .line 959
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/android/dialer/app/calllog/LazyViewPager;->scrollTo(II)V

    .line 960
    iget-object p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 963
    iget-object p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    .line 964
    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 965
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    mul-int v3, p2, p1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 969
    :cond_0
    iget p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    mul-int/2addr p2, p1

    .line 970
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 971
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->completeScroll()V

    .line 972
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .line 284
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 288
    :cond_0
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrollState:I

    .line 289
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 290
    invoke-interface {v0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1593
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1594
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1754
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1756
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 1759
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1760
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1761
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1762
    invoke-virtual {p0, v3}, Lcom/android/dialer/app/calllog/LazyViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1763
    iget v4, v4, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 1764
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 1777
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 1780
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 1784
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 1788
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)V
    .locals 2

    .line 604
    new-instance v0, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;-><init>()V

    .line 605
    iput p1, v0, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    .line 606
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->object:Ljava/lang/Object;

    if-gez p2, :cond_0

    .line 608
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1801
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1802
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1803
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1804
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1805
    iget v2, v2, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 1806
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 862
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/app/calllog/LazyViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 864
    iget p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mChildWidthMeasureSpec:I

    iget p3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 866
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 5

    .line 1688
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 1694
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    if-ne p1, v4, :cond_2

    if-eqz v0, :cond_1

    .line 1702
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1703
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->pageLeft()Z

    move-result v1

    goto :goto_1

    .line 1705
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_8

    if-eqz v0, :cond_3

    .line 1712
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 1713
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->pageRight()Z

    move-result v1

    goto :goto_1

    .line 1715
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1

    :cond_4
    if-eq p1, v4, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    if-eq p1, v3, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1723
    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->pageRight()Z

    move-result v1

    goto :goto_1

    .line 1720
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->pageLeft()Z

    move-result v1

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 1727
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    .line 1726
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->playSoundEffect(I)V

    :cond_9
    return v1
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 1453
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1456
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFakeDragging:Z

    .line 1457
    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 1458
    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInitialMotionX:F

    .line 1459
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 1460
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1462
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 1464
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 1465
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1467
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1468
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1469
    iput-wide v10, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1624
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1625
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1626
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1627
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1628
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 1634
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 1635
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    .line 1636
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 1637
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 1638
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 1640
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 1641
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 1639
    invoke-virtual/range {v6 .. v11}, Lcom/android/dialer/app/calllog/LazyViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 1647
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public computeScroll()V
    .locals 4

    .line 1012
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1013
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1016
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result v0

    .line 1017
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollY()I

    move-result v1

    .line 1018
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1019
    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1022
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/dialer/app/calllog/LazyViewPager;->scrollTo(II)V

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 1026
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int/2addr v0, v1

    .line 1027
    div-int v1, v2, v0

    .line 1028
    rem-int/2addr v2, v0

    int-to-float v3, v2

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 1030
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

    invoke-interface {v0, v1, v3, v2}, Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1035
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->invalidate()V

    return-void

    .line 1041
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->completeScroll()V

    return-void
.end method

.method dataSetChanged()V
    .locals 9

    .line 618
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    .line 619
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    .line 622
    :goto_1
    iget-object v6, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 623
    iget-object v6, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    .line 624
    iget-object v7, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v8, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 631
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 633
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v7, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget-object v8, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 636
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    iget v6, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    if-ne v0, v6, :cond_2

    .line 638
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    iget-object v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 639
    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 638
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_2
    :goto_2
    move v0, v2

    goto :goto_3

    .line 644
    :cond_3
    iget v8, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    if-eq v8, v7, :cond_5

    .line 645
    iget v0, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-ne v0, v8, :cond_4

    move v5, v7

    .line 650
    :cond_4
    iput v7, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_5
    :goto_3
    add-int/2addr v4, v2

    goto :goto_1

    .line 655
    :cond_6
    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/dialer/app/calllog/LazyViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-ltz v5, :cond_7

    .line 659
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    if-eqz v2, :cond_8

    .line 663
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->populate()V

    .line 664
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->requestLayout()V

    :cond_8
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1653
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1853
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1855
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1856
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1857
    invoke-virtual {p0, v3}, Lcom/android/dialer/app/calllog/LazyViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1858
    iget v4, v4, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 1859
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 538
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1367
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1370
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1373
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1401
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 1402
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_1

    .line 1374
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1376
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1377
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43870000    # 270.0f

    .line 1379
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    .line 1380
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1381
    iget-object v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 1382
    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1383
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1385
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1387
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v3

    .line 1388
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1389
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1390
    iget-object v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    :cond_3
    const/high16 v5, 0x42b40000    # 90.0f

    .line 1393
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1394
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int v7, v3, v6

    mul-int/2addr v1, v7

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1396
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, v4, v3}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 1397
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1398
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 1407
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->invalidate()V

    :cond_5
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 521
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 522
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 3

    .line 1480
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_3

    .line 1485
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 1486
    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1487
    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 1489
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPopulatePending:Z

    .line 1490
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMinimumVelocity:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInitialMotionX:F

    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    sub-float/2addr v0, v2

    .line 1491
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 1498
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_1

    .line 1492
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInitialMotionX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1493
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_1

    .line 1495
    :cond_2
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    .line 1500
    :goto_1
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->endDrag()V

    const/4 v0, 0x0

    .line 1502
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFakeDragging:Z

    return-void

    .line 1481
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1667
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1668
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1676
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 1677
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1678
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1679
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 1673
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 1670
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public fakeDragBy(F)V
    .locals 12

    .line 1515
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_3

    .line 1520
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1521
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 1522
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result p1

    .line 1523
    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int/2addr p1, v1

    const/4 v1, 0x0

    .line 1525
    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1526
    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1527
    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, p1

    int-to-float v2, v2

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v0, v2

    .line 1534
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v3, v2

    sub-float/2addr v0, v3

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1535
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->scrollTo(II)V

    .line 1536
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 1537
    div-int v1, v2, p1

    .line 1538
    rem-int/2addr v2, p1

    int-to-float v3, v2

    int-to-float p1, p1

    div-float/2addr v3, p1

    .line 1541
    invoke-interface {v0, v1, v3, v2}, Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1546
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1547
    iget-wide v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFakeDragBeginTime:J

    const/4 v8, 0x2

    iget v9, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1549
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 1516
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 424
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;
    .locals 1

    .line 890
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 891
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 894
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 896
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 879
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 880
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    .line 881
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method initViewPager()V
    .locals 3

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->setFocusable(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/android/dialer/app/calllog/LazyViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    .line 270
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 272
    invoke-static {v1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mTouchSlop:I

    .line 273
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMinimumVelocity:I

    .line 274
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMaximumVelocity:I

    .line 275
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 276
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 278
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x451c4000    # 2500.0f

    mul-float/2addr v0, v1

    .line 279
    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mBaseLineFlingVelocity:F

    const v0, 0x3ecccccd    # 0.4f

    .line 280
    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFlingVelocityInfluence:F

    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 1563
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 901
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 902
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1413
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1416
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result v0

    .line 1418
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v1

    .line 1419
    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int v3, v1, v2

    rem-int v3, v0, v3

    if-eqz v3, :cond_0

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 1424
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int/2addr v2, v0

    .line 1425
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getHeight()I

    move-result v4

    .line 1424
    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1426
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1098
    iget-boolean v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    return v3

    .line 1103
    :cond_1
    iget-boolean v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsUnableToDrag:Z

    if-eqz v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 1200
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1122
    :cond_4
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_0

    .line 1129
    :cond_5
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1131
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1132
    iget v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    sub-float v4, v1, v4

    .line 1133
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1134
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1135
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1136
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result v6

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-lez v8, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    cmpg-float v7, v4, v7

    if-gez v7, :cond_7

    .line 1137
    iget-object v7, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v7, :cond_7

    .line 1139
    invoke-virtual {v7}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    sub-int/2addr v7, v3

    :cond_7
    const/4 v10, 0x0

    float-to-int v11, v4

    float-to-int v12, v1

    float-to-int v13, p1

    move-object v8, p0

    move-object v9, p0

    .line 1144
    invoke-virtual/range {v8 .. v13}, Lcom/android/dialer/app/calllog/LazyViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1147
    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInitialMotionX:F

    .line 1148
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionY:F

    return v2

    .line 1151
    :cond_8
    iget p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_9

    cmpl-float p1, v5, v0

    if-lez p1, :cond_9

    .line 1154
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    .line 1155
    invoke-direct {p0, v3}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollState(I)V

    .line 1156
    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1157
    invoke-direct {p0, v3}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 1159
    :cond_9
    iget p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_c

    .line 1166
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsUnableToDrag:Z

    goto :goto_0

    .line 1177
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionY:F

    .line 1179
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    .line 1181
    iget p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrollState:I

    if-ne p1, v4, :cond_b

    .line 1183
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    .line 1184
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsUnableToDrag:Z

    .line 1185
    invoke-direct {p0, v3}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollState(I)V

    goto :goto_0

    .line 1187
    :cond_b
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->completeScroll()V

    .line 1188
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    .line 1189
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsUnableToDrag:Z

    .line 1208
    :cond_c
    :goto_0
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    return p1

    .line 1089
    :cond_d
    :goto_1
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    .line 1090
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsUnableToDrag:Z

    .line 1091
    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 p1, 0x1

    .line 979
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInLayout:Z

    .line 980
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->populate()V

    const/4 p1, 0x0

    .line 981
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInLayout:Z

    .line 983
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildCount()I

    move-result p3

    sub-int/2addr p4, p2

    move p2, p1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 987
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 989
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 990
    invoke-virtual {p0, p5}, Lcom/android/dialer/app/calllog/LazyViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int/2addr v1, p4

    iget v0, v0, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    mul-int/2addr v1, v0

    .line 992
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v1

    .line 993
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingTop()I

    move-result v1

    .line 1001
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 1002
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 1000
    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v0, 0x0

    .line 912
    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->getDefaultSize(II)I

    move-result p1

    .line 913
    invoke-static {v0, p2}, Lcom/android/dialer/app/calllog/LazyViewPager;->getDefaultSize(II)I

    move-result p2

    .line 912
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/calllog/LazyViewPager;->setMeasuredDimension(II)V

    .line 916
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getMeasuredWidth()I

    move-result p1

    .line 917
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 916
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mChildWidthMeasureSpec:I

    .line 919
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p1, v1

    .line 918
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mChildHeightMeasureSpec:I

    const/4 p1, 0x1

    .line 923
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInLayout:Z

    .line 924
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->populate()V

    .line 925
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInLayout:Z

    .line 928
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildCount()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 930
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 931
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 935
    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mChildWidthMeasureSpec:I

    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1821
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    .line 1832
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1833
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 1834
    invoke-virtual {p0, v5}, Lcom/android/dialer/app/calllog/LazyViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1835
    iget v6, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 1836
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 842
    instance-of v0, p1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;

    if-nez v0, :cond_0

    .line 843
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 847
    :cond_0
    check-cast p1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;

    .line 848
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 850
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 851
    iget-object v1, p1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 852
    iget p1, p1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 854
    :cond_1
    iget v0, p1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->position:I

    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredCurItem:I

    .line 855
    iget-object v0, p1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 856
    iget-object p1, p1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 831
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 832
    new-instance v1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 833
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    iput v0, v1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->position:I

    .line 834
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/dialer/app/calllog/LazyViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 942
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 946
    iget p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/android/dialer/app/calllog/LazyViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1213
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1220
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 1232
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1233
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_f

    const/4 v3, -0x1

    if-eq v0, v1, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_3

    .line 1354
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1355
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    .line 1356
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1355
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    goto/16 :goto_3

    .line 1347
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1348
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1349
    iput v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1350
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    goto/16 :goto_3

    .line 1338
    :cond_6
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_10

    .line 1339
    iget p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    .line 1340
    iput v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    .line 1341
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->endDrag()V

    .line 1342
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 1343
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    :goto_0
    or-int v2, p1, v0

    goto/16 :goto_3

    .line 1254
    :cond_7
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_8

    .line 1255
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1257
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1258
    iget v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1259
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1260
    iget v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1264
    iget v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    cmpl-float v0, v4, v0

    if-lez v0, :cond_8

    .line 1267
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    .line 1268
    iput v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1269
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollState(I)V

    .line 1270
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollingCacheEnabled(Z)V

    .line 1273
    :cond_8
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_10

    .line 1275
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    .line 1276
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1277
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1278
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1279
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1280
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 1282
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v0

    .line 1283
    iget v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int/2addr v3, v0

    .line 1285
    iget-object v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    .line 1286
    iget v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 1288
    iget v6, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    add-int/2addr v6, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/2addr v6, v3

    int-to-float v6, v6

    cmpg-float v7, p1, v5

    if-gez v7, :cond_a

    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-nez v4, :cond_9

    neg-float p1, p1

    .line 1293
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_9
    move p1, v5

    goto :goto_1

    :cond_a
    cmpl-float v5, p1, v6

    if-lez v5, :cond_c

    mul-int/2addr v4, v3

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-nez v4, :cond_b

    sub-float/2addr p1, v6

    .line 1299
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_b
    move p1, v6

    .line 1304
    :cond_c
    :goto_1
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    float-to-int v4, p1

    int-to-float v5, v4

    sub-float/2addr p1, v5

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1305
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->scrollTo(II)V

    .line 1306
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

    if-eqz p1, :cond_10

    .line 1307
    div-int v0, v4, v3

    .line 1308
    rem-int/2addr v4, v3

    int-to-float v5, v4

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 1312
    invoke-interface {p1, v0, v5, v4}, Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_3

    .line 1318
    :cond_d
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_10

    .line 1319
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 1320
    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1321
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result p1

    float-to-int p1, p1

    .line 1323
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPopulatePending:Z

    .line 1324
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int/2addr v0, v2

    .line 1325
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result v2

    .line 1326
    div-int/2addr v2, v0

    if-lez p1, :cond_e

    goto :goto_2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 1329
    :goto_2
    invoke-virtual {p0, v2, v1, v1, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZI)V

    .line 1331
    iput v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    .line 1332
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->endDrag()V

    .line 1333
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 1334
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto/16 :goto_0

    .line 1246
    :cond_f
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->completeScroll()V

    .line 1249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mLastMotionX:F

    .line 1250
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mActivePointerId:I

    :cond_10
    :goto_3
    if-eqz v2, :cond_11

    .line 1360
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->invalidate()V

    :cond_11
    return v1

    :cond_12
    :goto_4
    return v2
.end method

.method pageLeft()Z
    .locals 2

    .line 1733
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1734
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 1741
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 1742
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 9

    .line 669
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_1

    return-void

    .line 686
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 692
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOffscreenPageLimit:I

    .line 693
    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 694
    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 695
    iget v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    .line 702
    :goto_0
    iget-object v6, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 703
    iget-object v6, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    .line 704
    iget v7, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    if-lt v7, v1, :cond_3

    iget v7, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    if-le v7, v0, :cond_4

    :cond_3
    iget-boolean v7, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->scrolling:Z

    if-nez v7, :cond_4

    .line 708
    iget-object v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 710
    iget-object v5, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v7, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget-object v8, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-ge v5, v0, :cond_6

    .line 711
    iget v7, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    if-le v7, v1, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_5

    move v5, v1

    :cond_5
    :goto_1
    if-gt v5, v0, :cond_6

    .line 719
    iget v7, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    if-ge v5, v7, :cond_6

    .line 722
    invoke-virtual {p0, v5, v4}, Lcom/android/dialer/app/calllog/LazyViewPager;->addNewItem(II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 727
    :cond_6
    :goto_2
    iget v5, v6, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 731
    :cond_7
    iget-object v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    iget v4, v4, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    goto :goto_3

    :cond_8
    move v4, v3

    :goto_3
    if-ge v4, v0, :cond_a

    add-int/lit8 v4, v4, 0x1

    if-le v4, v1, :cond_9

    move v1, v4

    :cond_9
    :goto_4
    if-gt v1, v0, :cond_a

    .line 739
    invoke-virtual {p0, v1, v3}, Lcom/android/dialer/app/calllog/LazyViewPager;->addNewItem(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    move v0, v2

    .line 752
    :goto_5
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_c

    .line 753
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    iget v1, v1, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-ne v1, v4, :cond_b

    .line 754
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    move-object v0, v3

    .line 758
    :goto_6
    iget-object v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v4, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_7

    :cond_d
    move-object v0, v3

    :goto_7
    invoke-virtual {v1, p0, v4, v0}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 763
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 764
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 765
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    move-result-object v3

    :cond_e
    if-eqz v3, :cond_f

    .line 767
    iget v0, v3, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-eq v0, v1, :cond_11

    .line 768
    :cond_f
    :goto_8
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_11

    .line 769
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 771
    iget v1, v1, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-ne v1, v3, :cond_10

    const/4 v1, 0x2

    .line 772
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    :goto_9
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mObserver:Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 297
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v1

    .line 298
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    .line 300
    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v4, v2, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 303
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->removeAllViews()V

    .line 305
    iput v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    .line 306
    invoke-virtual {p0, v1, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->scrollTo(II)V

    .line 309
    :cond_1
    iput-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p1, :cond_4

    .line 312
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mObserver:Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 313
    new-instance p1, Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;

    invoke-direct {p1, p0, v0}, Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;-><init>(Lcom/android/dialer/app/calllog/LazyViewPager;Lcom/android/dialer/app/calllog/LazyViewPager$1;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mObserver:Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mObserver:Lcom/android/dialer/app/calllog/LazyViewPager$PagerObserver;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPopulatePending:Z

    .line 317
    iget p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredCurItem:I

    if-ltz p1, :cond_3

    .line 318
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 320
    iget p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredCurItem:I

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    const/4 p1, -0x1

    .line 321
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredCurItem:I

    .line 322
    iput-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 323
    iput-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->populate()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPopulatePending:Z

    .line 344
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPopulatePending:Z

    .line 358
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 375
    iget p3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 376
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 382
    iget-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 384
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOffscreenPageLimit:I

    .line 385
    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 389
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 390
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;

    iput-boolean p3, v2, Lcom/android/dialer/app/calllog/LazyViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    :cond_5
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    .line 395
    :goto_2
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mCurItem:I

    .line 396
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->populate()V

    .line 397
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int/2addr v0, v2

    mul-int/2addr v0, p1

    if-eqz p2, :cond_7

    .line 399
    invoke-virtual {p0, v0, v1, p4}, Lcom/android/dialer/app/calllog/LazyViewPager;->smoothScrollTo(III)V

    if-eqz p3, :cond_9

    .line 400
    iget-object p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

    if-eqz p2, :cond_9

    .line 401
    invoke-interface {p2, p1}, Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    .line 404
    iget-object p2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

    if-eqz p2, :cond_8

    .line 405
    invoke-interface {p2, p1}, Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 407
    :cond_8
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->completeScroll()V

    .line 408
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->scrollTo(II)V

    :cond_9
    :goto_3
    return-void

    .line 372
    :cond_a
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LazyViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 456
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 457
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOffscreenPageLimit:I

    .line 458
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->populate()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/LazyViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 472
    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    .line 473
    iput p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    .line 475
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result v1

    .line 476
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->recomputeScrollPosition(IIII)V

    .line 478
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 500
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setWillNotDraw(Z)V

    .line 501
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->invalidate()V

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dialer/app/calllog/LazyViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 8

    .line 567
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollX()I

    move-result v3

    .line 573
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->completeScroll()V

    .line 578
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 582
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollingCacheEnabled(Z)V

    .line 583
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScrolling:Z

    const/4 p1, 0x2

    .line 584
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/LazyViewPager;->setScrollState(I)V

    .line 586
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    .line 587
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mPageMargin:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 590
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    int-to-float p1, p1

    int-to-float p2, p2

    .line 592
    iget p3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mBaseLineFlingVelocity:F

    div-float/2addr p2, p3

    div-float p2, p1, p2

    iget p3, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mFlingVelocityInfluence:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x64

    :goto_0
    const/16 p2, 0x258

    .line 597
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 599
    iget-object v2, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 600
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/LazyViewPager;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 516
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/LazyViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
