.class public Lcom/android/incallui/DialpadFragment$DialpadSlidingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialpadSlidingLinearLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getYFraction()F
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DialpadSlidingLinearLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DialpadSlidingLinearLayout;->getTranslationY()F

    move-result v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public setYFraction(F)V
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DialpadSlidingLinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadFragment$DialpadSlidingLinearLayout;->setTranslationY(F)V

    return-void
.end method
