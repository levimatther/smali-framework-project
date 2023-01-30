.class public abstract Lcom/android/incallui/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ZoomControl$OnZoomIndexChangedListener;,
        Lcom/android/incallui/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

.field protected mOrientation:I

.field private mStep:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f08014f

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    const p2, 0x7f080155

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const p2, 0x7f080152

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    return-void
.end method

.method private changeZoomIndex(I)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

    if-eqz v0, :cond_2

    .line 119
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 122
    iput p1, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 1

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/incallui/ZoomControl;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public closeZoomControl()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method public getZoomIndex()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    return v0
.end method

.method public getZoomMax()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    return v0
.end method

.method protected performZoom(D)V
    .locals 2

    .line 112
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int p1, v0

    .line 113
    iget p2, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    if-ne p2, p1, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/ZoomControl;->changeZoomIndex(I)Z

    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/incallui/ZoomControl$OnZoomChangedListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/incallui/ZoomControl;->mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 95
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    if-gt p1, v0, :cond_0

    .line 98
    iput p1, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    .line 99
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControl;->invalidate()V

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setZoomMax(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    .line 83
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControl;->requestLayout()V

    return-void
.end method

.method protected setZoomStep(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/android/incallui/ZoomControl;->mStep:I

    return-void
.end method

.method public startZoomControl()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 64
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/ZoomControl;->setZoomIndex(I)V

    return-void
.end method
