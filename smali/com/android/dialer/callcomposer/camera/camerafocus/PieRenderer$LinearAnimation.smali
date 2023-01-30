.class Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;
.super Landroid/view/animation/Animation;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinearAnimation"
.end annotation


# instance fields
.field private mFrom:F

.field private mTo:F

.field private mValue:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 803
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x1

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->setFillAfter(Z)V

    .line 805
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 806
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->mFrom:F

    .line 807
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->mTo:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 816
    iget p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->mFrom:F

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->mTo:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->mValue:F

    return-void
.end method

.method public getValue()F
    .locals 1

    .line 811
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;->mValue:F

    return v0
.end method
