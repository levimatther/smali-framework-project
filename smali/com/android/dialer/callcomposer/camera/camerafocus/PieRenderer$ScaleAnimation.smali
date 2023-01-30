.class Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleAnimation"
.end annotation


# instance fields
.field private mFrom:F

.field private mTo:F

.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;


# direct methods
.method public constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 780
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->mFrom:F

    .line 781
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->mTo:F

    const/4 p1, 0x1

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 794
    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->mFrom:F

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->mTo:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    invoke-static {p2, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1702(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;I)I

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    .line 788
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->mFrom:F

    .line 789
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$ScaleAnimation;->mTo:F

    return-void
.end method
