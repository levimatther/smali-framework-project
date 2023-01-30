.class public Lcom/android/incallui/ZoomControlBar;
.super Lcom/android/incallui/ZoomControl;
.source "ZoomControlBar.java"


# static fields
.field private static final ICON_SPACING:I = 0xc

.field private static final THRESHOLD_FIRST_MOVE:I = 0xa

.field private static mSliderPosition:I


# instance fields
.field private mBar:Landroid/view/View;

.field private mIconWidth:I

.field private mSliderLength:I

.field private mStartChanging:Z

.field private mTotalIconWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    const p1, 0x7f080255

    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    iget-object p1, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ZoomControlBar;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getSliderPosition(I)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 65
    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    iget v1, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    goto :goto_0

    .line 67
    :cond_0
    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    sub-int v0, p1, v0

    :goto_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 70
    :cond_1
    iget p1, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    if-le v0, p1, :cond_2

    move v0, p1

    :cond_2
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 84
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControlBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/ZoomControlBar;->setActivated(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControlBar;->closeZoomControl()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/incallui/ZoomControlBar;->setActivated(Z)V

    .line 97
    iput-boolean v1, p0, Lcom/android/incallui/ZoomControlBar;->mStartChanging:Z

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/incallui/ZoomControlBar;->getSliderPosition(I)I

    move-result p1

    .line 100
    iget-boolean v0, p0, Lcom/android/incallui/ZoomControlBar;->mStartChanging:Z

    if-nez v0, :cond_5

    .line 103
    sget v0, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_4

    const/16 v1, -0xa

    if-ge v0, v1, :cond_5

    .line 106
    :cond_4
    iput-boolean v2, p0, Lcom/android/incallui/ZoomControlBar;->mStartChanging:Z

    .line 109
    :cond_5
    iget-boolean v0, p0, Lcom/android/incallui/ZoomControlBar;->mStartChanging:Z

    if-eqz v0, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v3, p1

    mul-double/2addr v3, v0

    .line 110
    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    int-to-double v0, v0

    div-double/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/ZoomControlBar;->performZoom(D)V

    .line 111
    sput p1, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    .line 113
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControlBar;->requestLayout()V

    :goto_0
    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 121
    iget p1, p0, Lcom/android/incallui/ZoomControlBar;->mZoomMax:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p5, p3

    .line 123
    iget-object p1, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    iget p2, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    iget p3, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    sub-int/2addr p3, p2

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/view/View;->layout(IIII)V

    .line 128
    sget p1, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget p1, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    int-to-double p1, p1

    iget p3, p0, Lcom/android/incallui/ZoomControlBar;->mZoomIndex:I

    int-to-double v0, p3

    mul-double/2addr p1, v0

    iget p3, p0, Lcom/android/incallui/ZoomControlBar;->mZoomMax:I

    int-to-double v0, p3

    div-double/2addr p1, v0

    double-to-int p1, p1

    .line 133
    :goto_0
    iget p2, p0, Lcom/android/incallui/ZoomControlBar;->mOrientation:I

    const/16 p3, 0x5a

    if-ne p2, p3, :cond_2

    .line 134
    iget-object p2, p0, Lcom/android/incallui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    iget p3, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    invoke-virtual {p2, p4, p4, p3, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 135
    iget-object p2, p0, Lcom/android/incallui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    iget p3, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    sub-int v0, p3, v0

    invoke-virtual {p2, v0, p4, p3, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 136
    iget-object p2, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    sub-int/2addr p2, p1

    goto :goto_1

    .line 138
    :cond_2
    iget-object p2, p0, Lcom/android/incallui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    iget p3, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    invoke-virtual {p2, p4, p4, p3, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 139
    iget-object p2, p0, Lcom/android/incallui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    iget p3, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    sub-int v0, p3, v0

    invoke-virtual {p2, v0, p4, p3, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 140
    iget-object p2, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p1

    .line 142
    :goto_1
    iget-object p1, p0, Lcom/android/incallui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    .line 143
    iget-object p3, p0, Lcom/android/incallui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    div-int/lit8 p1, p1, 0x2

    sub-int v0, p2, p1

    add-int/2addr p2, p1

    invoke-virtual {p3, v0, p4, p2, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    .line 77
    iget-object p1, p0, Lcom/android/incallui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    add-int/lit8 p1, p1, 0xc

    .line 78
    iput p1, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    .line 79
    iget p2, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/incallui/ZoomControl;->setActivated(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public setZoomIndex(I)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/android/incallui/ZoomControl;->setZoomIndex(I)V

    const/4 p1, -0x1

    .line 150
    sput p1, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControlBar;->requestLayout()V

    return-void
.end method
