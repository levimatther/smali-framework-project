.class public Lcom/android/incallui/answer/impl/AffordanceHolderLayout;
.super Landroid/widget/FrameLayout;
.source "AffordanceHolderLayout.java"


# instance fields
.field private affordanceCallback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

.field private affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p2, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    new-instance p3, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;

    invoke-direct {p3, p0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout$1;-><init>(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)V

    invoke-direct {p2, p3, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;-><init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/answer/impl/AffordanceHolderLayout;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceCallback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    return-object p0
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->animateHideLeftRightIcon()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->onConfigurationChanged()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/AccessibilityUtil;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public reset(Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->reset(Z)V

    return-void
.end method

.method public setAffordanceCallback(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceCallback:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    .line 145
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->init()V

    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AffordanceHolderLayout;->affordanceHelper:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->startHintAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method
