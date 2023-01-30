.class public Lcom/android/dialer/app/list/DialerViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "DialerViewPager.java"


# instance fields
.field private enableSwipingPages:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/android/dialer/app/list/DialerViewPager;->enableSwipingPages:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/android/dialer/app/list/DialerViewPager;->enableSwipingPages:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/android/dialer/app/list/DialerViewPager;->enableSwipingPages:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEnableSwipingPages(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/dialer/app/list/DialerViewPager;->enableSwipingPages:Z

    return-void
.end method
