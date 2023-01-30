.class public Lcom/android/dialer/app/calllog/BlockNumberViewPager;
.super Landroid/view/ViewGroup;
.source "BlockNumberViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;,
        Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;,
        Lcom/android/dialer/app/calllog/BlockNumberViewPager$SimpleOnPageChangeListener;,
        Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;,
        Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;",
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
            "Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;",
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

.field private mObserver:Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

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

    .line 86
    new-instance v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$1;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$1;-><init>()V

    sput-object v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 93
    new-instance v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$2;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$2;-><init>()V

    sput-object v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 256
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 106
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 108
    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOffscreenPageLimit:I

    .line 138
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFirstLayout:Z

    .line 181
    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrollState:I

    .line 257
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 106
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 107
    iput-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 108
    iput-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const/4 p2, 0x0

    .line 123
    iput p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOffscreenPageLimit:I

    .line 138
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFirstLayout:Z

    .line 181
    iput p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrollState:I

    .line 262
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->initViewPager()V

    return-void
.end method

.method private completeScroll()V
    .locals 6

    .line 1046
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1049
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollingCacheEnabled(Z)V

    .line 1050
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1051
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result v2

    .line 1052
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollY()I

    move-result v3

    .line 1053
    iget-object v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1054
    iget-object v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 1056
    :cond_0
    invoke-virtual {p0, v4, v5}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->scrollTo(II)V

    .line 1058
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollState(I)V

    .line 1060
    :cond_2
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPopulatePending:Z

    .line 1061
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrolling:Z

    move v2, v1

    .line 1062
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1063
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    .line 1064
    iget-boolean v4, v3, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_3

    .line 1066
    iput-boolean v1, v3, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->scrolling:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 1070
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->populate()V

    :cond_5
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 1584
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    .line 1585
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsUnableToDrag:Z

    .line 1587
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1589
    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1568
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1569
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1570
    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1574
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1575
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    .line 1577
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1578
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    add-int/2addr p1, p3

    if-lez p2, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result p3

    add-int/2addr p2, p4

    .line 957
    div-int p4, p3, p2

    .line 958
    rem-int/2addr p3, p2

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, p4

    add-float/2addr p2, p3

    int-to-float p3, p1

    mul-float/2addr p2, p3

    float-to-int v1, p2

    .line 960
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->scrollTo(II)V

    .line 961
    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 964
    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    .line 965
    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 966
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    mul-int v3, p2, p1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 970
    :cond_0
    iget p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    mul-int/2addr p2, p1

    .line 971
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 972
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->completeScroll()V

    .line 973
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .line 285
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 289
    :cond_0
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrollState:I

    .line 290
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1594
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1595
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrollingCacheEnabled:Z

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

    .line 1737
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1739
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 1742
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1743
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1744
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1745
    invoke-virtual {p0, v3}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1746
    iget v4, v4, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 1747
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 1760
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 1763
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 1767
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 1771
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)V
    .locals 2

    .line 605
    new-instance v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;-><init>()V

    .line 606
    iput p1, v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    .line 607
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->object:Ljava/lang/Object;

    if-gez p2, :cond_0

    .line 609
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

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

    .line 1784
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1785
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1786
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1787
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1788
    iget v2, v2, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 1789
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 863
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 865
    iget p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mChildWidthMeasureSpec:I

    iget p3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 867
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 5

    .line 1671
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 1677
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

    .line 1685
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1686
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->pageLeft()Z

    move-result v1

    goto :goto_1

    .line 1688
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_8

    if-eqz v0, :cond_3

    .line 1695
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 1696
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->pageRight()Z

    move-result v1

    goto :goto_1

    .line 1698
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

    .line 1706
    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->pageRight()Z

    move-result v1

    goto :goto_1

    .line 1703
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->pageLeft()Z

    move-result v1

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 1710
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    .line 1709
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->playSoundEffect(I)V

    :cond_9
    return v1
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 1454
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1457
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFakeDragging:Z

    .line 1458
    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 1459
    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInitialMotionX:F

    .line 1460
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 1461
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1463
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 1465
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 1466
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1468
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1469
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1470
    iput-wide v10, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1625
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1626
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1627
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1628
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1629
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 1635
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 1636
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    .line 1637
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 1638
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 1639
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 1641
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 1642
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 1640
    invoke-virtual/range {v6 .. v11}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->canScroll(Landroid/view/View;ZIII)Z

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

    .line 1648
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

    .line 1013
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1014
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1017
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result v0

    .line 1018
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollY()I

    move-result v1

    .line 1019
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1020
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1023
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->scrollTo(II)V

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 1027
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int/2addr v0, v1

    .line 1028
    div-int v1, v2, v0

    .line 1029
    rem-int/2addr v2, v0

    int-to-float v3, v2

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 1031
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

    invoke-interface {v0, v1, v3, v2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1036
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->invalidate()V

    return-void

    .line 1042
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->completeScroll()V

    return-void
.end method

.method dataSetChanged()V
    .locals 9

    .line 619
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    .line 620
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

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

    .line 623
    :goto_1
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 624
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    .line 625
    iget-object v7, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v8, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 632
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 634
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v7, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget-object v8, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 637
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    iget v6, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    if-ne v0, v6, :cond_2

    .line 639
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    iget-object v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 640
    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 639
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_2
    :goto_2
    move v0, v2

    goto :goto_3

    .line 645
    :cond_3
    iget v8, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    if-eq v8, v7, :cond_5

    .line 646
    iget v0, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-ne v0, v8, :cond_4

    move v5, v7

    .line 651
    :cond_4
    iput v7, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_5
    :goto_3
    add-int/2addr v4, v2

    goto :goto_1

    .line 656
    :cond_6
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-ltz v5, :cond_7

    .line 660
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    if-eqz v2, :cond_8

    .line 664
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->populate()V

    .line 665
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->requestLayout()V

    :cond_8
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1654
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

    .line 1836
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1838
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1839
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1840
    invoke-virtual {p0, v3}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1841
    iget v4, v4, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 1842
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

    .line 539
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1368
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1371
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1374
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1402
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 1403
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_1

    .line 1375
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1376
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1377
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1378
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43870000    # 270.0f

    .line 1380
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    .line 1381
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1382
    iget-object v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 1383
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1384
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1386
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1387
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1388
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v3

    .line 1389
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1390
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1391
    iget-object v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    :cond_3
    const/high16 v5, 0x42b40000    # 90.0f

    .line 1394
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1395
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int v7, v3, v6

    mul-int/2addr v1, v7

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1397
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, v4, v3}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 1398
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1399
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 1408
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->invalidate()V

    :cond_5
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 522
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 523
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 3

    .line 1481
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_3

    .line 1486
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 1487
    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1488
    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 1490
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPopulatePending:Z

    .line 1491
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMinimumVelocity:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInitialMotionX:F

    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    sub-float/2addr v0, v2

    .line 1492
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 1499
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_1

    .line 1493
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInitialMotionX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1494
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_1

    .line 1496
    :cond_2
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    .line 1501
    :goto_1
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->endDrag()V

    const/4 v0, 0x0

    .line 1503
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFakeDragging:Z

    return-void

    .line 1482
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fakeDragBy(F)V
    .locals 12

    .line 1516
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_3

    .line 1521
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1522
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 1523
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result p1

    .line 1524
    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int/2addr p1, v1

    const/4 v1, 0x0

    .line 1526
    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1527
    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1528
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

    .line 1535
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v3, v2

    sub-float/2addr v0, v3

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1536
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->scrollTo(II)V

    .line 1537
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 1538
    div-int v1, v2, p1

    .line 1539
    rem-int/2addr v2, p1

    int-to-float v3, v2

    int-to-float p1, p1

    div-float/2addr v3, p1

    .line 1542
    invoke-interface {v0, v1, v3, v2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1547
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1548
    iget-wide v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFakeDragBeginTime:J

    const/4 v8, 0x2

    iget v9, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1550
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 1517
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;
    .locals 1

    .line 891
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 892
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 895
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 897
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 880
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    .line 882
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->object:Ljava/lang/Object;

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

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setFocusable(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    .line 271
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 273
    invoke-static {v1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mTouchSlop:I

    .line 274
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMinimumVelocity:I

    .line 275
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMaximumVelocity:I

    .line 276
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 277
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 279
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x451c4000    # 2500.0f

    mul-float/2addr v0, v1

    .line 280
    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mBaseLineFlingVelocity:F

    const v0, 0x3ecccccd    # 0.4f

    .line 281
    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFlingVelocityInfluence:F

    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 1564
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 902
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 903
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1414
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1417
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result v0

    .line 1419
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v1

    .line 1420
    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int v3, v1, v2

    rem-int v3, v0, v3

    if-eqz v3, :cond_0

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 1425
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int/2addr v2, v0

    .line 1426
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getHeight()I

    move-result v4

    .line 1425
    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1427
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1082
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

    .line 1099
    iget-boolean v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    return v3

    .line 1104
    :cond_1
    iget-boolean v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsUnableToDrag:Z

    if-eqz v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 1201
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1123
    :cond_4
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_0

    .line 1130
    :cond_5
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1132
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1133
    iget v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    sub-float v4, v1, v4

    .line 1134
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1135
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1136
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1137
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result v6

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-lez v8, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    cmpg-float v7, v4, v7

    if-gez v7, :cond_7

    .line 1138
    iget-object v7, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v7, :cond_7

    .line 1140
    invoke-virtual {v7}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

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

    .line 1145
    invoke-virtual/range {v8 .. v13}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1148
    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInitialMotionX:F

    .line 1149
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionY:F

    return v2

    .line 1152
    :cond_8
    iget p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_9

    cmpl-float p1, v5, v0

    if-lez p1, :cond_9

    .line 1155
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    .line 1156
    invoke-direct {p0, v3}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollState(I)V

    .line 1157
    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1158
    invoke-direct {p0, v3}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 1160
    :cond_9
    iget p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_c

    .line 1167
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsUnableToDrag:Z

    goto :goto_0

    .line 1178
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionY:F

    .line 1180
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    .line 1182
    iget p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrollState:I

    if-ne p1, v4, :cond_b

    .line 1184
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    .line 1185
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsUnableToDrag:Z

    .line 1186
    invoke-direct {p0, v3}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollState(I)V

    goto :goto_0

    .line 1188
    :cond_b
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->completeScroll()V

    .line 1189
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    .line 1190
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsUnableToDrag:Z

    .line 1209
    :cond_c
    :goto_0
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    return p1

    .line 1090
    :cond_d
    :goto_1
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    .line 1091
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsUnableToDrag:Z

    .line 1092
    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 p1, 0x1

    .line 980
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInLayout:Z

    .line 981
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->populate()V

    const/4 p1, 0x0

    .line 982
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInLayout:Z

    .line 984
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildCount()I

    move-result p3

    sub-int/2addr p4, p2

    move p2, p1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 988
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 990
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 991
    invoke-virtual {p0, p5}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 992
    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int/2addr v1, p4

    iget v0, v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    mul-int/2addr v1, v0

    .line 993
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v1

    .line 994
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingTop()I

    move-result v1

    .line 1002
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 1003
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 1001
    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1006
    :cond_1
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v0, 0x0

    .line 913
    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getDefaultSize(II)I

    move-result p1

    .line 914
    invoke-static {v0, p2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getDefaultSize(II)I

    move-result p2

    .line 913
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setMeasuredDimension(II)V

    .line 917
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getMeasuredWidth()I

    move-result p1

    .line 918
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 917
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mChildWidthMeasureSpec:I

    .line 920
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p1, v1

    .line 919
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mChildHeightMeasureSpec:I

    const/4 p1, 0x1

    .line 924
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInLayout:Z

    .line 925
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->populate()V

    .line 926
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInLayout:Z

    .line 929
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildCount()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 931
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 932
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 936
    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mChildWidthMeasureSpec:I

    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1804
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildCount()I

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

    .line 1815
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1816
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 1817
    invoke-virtual {p0, v5}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1818
    iget v6, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 1819
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

    .line 843
    instance-of v0, p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;

    if-nez v0, :cond_0

    .line 844
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 848
    :cond_0
    check-cast p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;

    .line 849
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 851
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 852
    iget-object v1, p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 853
    iget p1, p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 855
    :cond_1
    iget v0, p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->position:I

    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredCurItem:I

    .line 856
    iget-object v0, p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 857
    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 832
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 833
    new-instance v1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 834
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    iput v0, v1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->position:I

    .line 835
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 943
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 947
    iget p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1214
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1221
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 1233
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1234
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1236
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1238
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

    .line 1355
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1356
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    .line 1357
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1356
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    goto/16 :goto_3

    .line 1348
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1349
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1350
    iput v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1351
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    goto/16 :goto_3

    .line 1339
    :cond_6
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_10

    .line 1340
    iget p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    .line 1341
    iput v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    .line 1342
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->endDrag()V

    .line 1343
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 1344
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    :goto_0
    or-int v2, p1, v0

    goto/16 :goto_3

    .line 1255
    :cond_7
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_8

    .line 1256
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1258
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1259
    iget v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1260
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1261
    iget v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1265
    iget v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    cmpl-float v0, v4, v0

    if-lez v0, :cond_8

    .line 1268
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    .line 1269
    iput v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1270
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollState(I)V

    .line 1271
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollingCacheEnabled(Z)V

    .line 1274
    :cond_8
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_10

    .line 1276
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    .line 1277
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1278
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1279
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1280
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1281
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 1283
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v0

    .line 1284
    iget v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int/2addr v3, v0

    .line 1286
    iget-object v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    .line 1287
    iget v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 1289
    iget v6, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

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

    .line 1294
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

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

    .line 1300
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_b
    move p1, v6

    .line 1305
    :cond_c
    :goto_1
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    float-to-int v4, p1

    int-to-float v5, v4

    sub-float/2addr p1, v5

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1306
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->scrollTo(II)V

    .line 1307
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

    if-eqz p1, :cond_10

    .line 1308
    div-int v0, v4, v3

    .line 1309
    rem-int/2addr v4, v3

    int-to-float v5, v4

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 1313
    invoke-interface {p1, v0, v5, v4}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_3

    .line 1319
    :cond_d
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_10

    .line 1320
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 1321
    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1322
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result p1

    float-to-int p1, p1

    .line 1324
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPopulatePending:Z

    .line 1325
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int/2addr v0, v2

    .line 1326
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result v2

    .line 1327
    div-int/2addr v2, v0

    if-lez p1, :cond_e

    goto :goto_2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 1330
    :goto_2
    invoke-virtual {p0, v2, v1, v1, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZI)V

    .line 1332
    iput v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    .line 1333
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->endDrag()V

    .line 1334
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLeftEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRightEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 1335
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto/16 :goto_0

    .line 1247
    :cond_f
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->completeScroll()V

    .line 1250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mLastMotionX:F

    .line 1251
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mActivePointerId:I

    :cond_10
    :goto_3
    if-eqz v2, :cond_11

    .line 1361
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->invalidate()V

    :cond_11
    return v1

    :cond_12
    :goto_4
    return v2
.end method

.method pageLeft()Z
    .locals 2

    .line 1716
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1717
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 1724
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 1725
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 9

    .line 670
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 678
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_1

    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 691
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 693
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOffscreenPageLimit:I

    .line 694
    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 695
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 696
    iget v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    .line 703
    :goto_0
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 704
    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    .line 705
    iget v7, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    if-lt v7, v1, :cond_3

    iget v7, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    if-le v7, v0, :cond_4

    :cond_3
    iget-boolean v7, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->scrolling:Z

    if-nez v7, :cond_4

    .line 709
    iget-object v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 711
    iget-object v5, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v7, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget-object v8, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-ge v5, v0, :cond_6

    .line 712
    iget v7, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    if-le v7, v1, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_5

    move v5, v1

    :cond_5
    :goto_1
    if-gt v5, v0, :cond_6

    .line 720
    iget v7, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    if-ge v5, v7, :cond_6

    .line 723
    invoke-virtual {p0, v5, v4}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->addNewItem(II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 728
    :cond_6
    :goto_2
    iget v5, v6, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 732
    :cond_7
    iget-object v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    iget v4, v4, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

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

    .line 740
    invoke-virtual {p0, v1, v3}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->addNewItem(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    move v0, v2

    .line 753
    :goto_5
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_c

    .line 754
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    iget v1, v1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-ne v1, v4, :cond_b

    .line 755
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    move-object v0, v3

    .line 759
    :goto_6
    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v4, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_7

    :cond_d
    move-object v0, v3

    :goto_7
    invoke-virtual {v1, p0, v4, v0}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 765
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 766
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    move-result-object v3

    :cond_e
    if-eqz v3, :cond_f

    .line 768
    iget v0, v3, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-eq v0, v1, :cond_11

    .line 769
    :cond_f
    :goto_8
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_11

    .line 770
    invoke-virtual {p0, v2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 771
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->infoForChild(Landroid/view/View;)Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 772
    iget v1, v1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-ne v1, v3, :cond_10

    const/4 v1, 0x2

    .line 773
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

    .line 296
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 297
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mObserver:Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 298
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v1

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    .line 301
    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v4, v2, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 304
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 305
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->removeAllViews()V

    .line 306
    iput v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    .line 307
    invoke-virtual {p0, v1, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->scrollTo(II)V

    .line 310
    :cond_1
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p1, :cond_4

    .line 313
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mObserver:Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 314
    new-instance p1, Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;

    invoke-direct {p1, p0, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;-><init>(Lcom/android/dialer/app/calllog/BlockNumberViewPager;Lcom/android/dialer/app/calllog/BlockNumberViewPager$1;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mObserver:Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;

    .line 316
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mObserver:Lcom/android/dialer/app/calllog/BlockNumberViewPager$PagerObserver;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 317
    iput-boolean v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPopulatePending:Z

    .line 318
    iget p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredCurItem:I

    if-ltz p1, :cond_3

    .line 319
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 321
    iget p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredCurItem:I

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    const/4 p1, -0x1

    .line 322
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredCurItem:I

    .line 323
    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 324
    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 326
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->populate()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPopulatePending:Z

    .line 345
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPopulatePending:Z

    .line 359
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 376
    iget p3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 377
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 383
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 385
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOffscreenPageLimit:I

    .line 386
    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 390
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 391
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;

    iput-boolean p3, v2, Lcom/android/dialer/app/calllog/BlockNumberViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_5
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    .line 396
    :goto_2
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mCurItem:I

    .line 397
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->populate()V

    .line 398
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int/2addr v0, v2

    mul-int/2addr v0, p1

    if-eqz p2, :cond_7

    .line 400
    invoke-virtual {p0, v0, v1, p4}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->smoothScrollTo(III)V

    if-eqz p3, :cond_9

    .line 401
    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

    if-eqz p2, :cond_9

    .line 402
    invoke-interface {p2, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    .line 405
    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

    if-eqz p2, :cond_8

    .line 406
    invoke-interface {p2, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 408
    :cond_8
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->completeScroll()V

    .line 409
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->scrollTo(II)V

    :cond_9
    :goto_3
    return-void

    .line 373
    :cond_a
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 453
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

    .line 457
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 458
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOffscreenPageLimit:I

    .line 459
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->populate()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mOnPageChangeListener:Lcom/android/dialer/app/calllog/BlockNumberViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 473
    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    .line 474
    iput p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    .line 476
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result v1

    .line 477
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->recomputeScrollPosition(IIII)V

    .line 479
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 501
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setWillNotDraw(Z)V

    .line 502
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->invalidate()V

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 8

    .line 568
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 570
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollX()I

    move-result v3

    .line 574
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->completeScroll()V

    .line 579
    invoke-direct {p0, v1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 583
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollingCacheEnabled(Z)V

    .line 584
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScrolling:Z

    const/4 p1, 0x2

    .line 585
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->setScrollState(I)V

    .line 587
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    .line 588
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mPageMargin:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 591
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    int-to-float p1, p1

    int-to-float p2, p2

    .line 593
    iget p3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mBaseLineFlingVelocity:F

    div-float/2addr p2, p3

    div-float p2, p1, p2

    iget p3, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mFlingVelocityInfluence:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x64

    :goto_0
    const/16 p2, 0x258

    .line 598
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 600
    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 601
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 517
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockNumberViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

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
