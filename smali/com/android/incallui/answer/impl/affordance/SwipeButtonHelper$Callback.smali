.class public interface abstract Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;
.super Ljava/lang/Object;
.source "SwipeButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getAffordanceFalsingFactor()F
.end method

.method public abstract getLeftIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
.end method

.method public abstract getLeftPreview()Landroid/view/View;
.end method

.method public abstract getMaxTranslationDistance()F
.end method

.method public abstract getRightIcon()Lcom/android/incallui/answer/impl/affordance/SwipeButtonView;
.end method

.method public abstract getRightPreview()Landroid/view/View;
.end method

.method public abstract onAnimationToSideEnded(Z)V
.end method

.method public abstract onAnimationToSideStarted(ZFF)V
.end method

.method public abstract onIconClicked(Z)V
.end method

.method public abstract onSwipingAborted()V
.end method

.method public abstract onSwipingStarted(Z)V
.end method
