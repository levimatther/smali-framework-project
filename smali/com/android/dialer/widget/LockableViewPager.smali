.class public Lcom/android/dialer/widget/LockableViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "LockableViewPager.java"


# instance fields
.field private swipingLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isSwipingLocked()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/android/dialer/widget/LockableViewPager;->swipingLocked:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/android/dialer/widget/LockableViewPager;->swipingLocked:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/android/dialer/widget/LockableViewPager;->swipingLocked:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setSwipingLocked(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/dialer/widget/LockableViewPager;->swipingLocked:Z

    return-void
.end method
