.class final Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InterpolatorInterpolator"
.end annotation


# instance fields
.field private mCrossfader:Landroid/view/animation/Interpolator;

.field private mInterpolator1:Landroid/view/animation/Interpolator;

.field private mInterpolator2:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    .line 256
    iput-object p2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    .line 257
    iput-object p3, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;->mCrossfader:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;->mCrossfader:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 263
    iget-object v2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/incallui/answer/impl/utils/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    .line 264
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method
