.class public Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;
.super Ljava/lang/Object;
.source "PieItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem$OnClickListener;
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.3f

.field private static final ENABLED_ALPHA:F = 1.0f


# instance fields
.field private animate:F

.field private inner:I

.field private level:I

.field private mAlpha:F

.field private mCenter:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem$OnClickListener;

.field private mPath:Landroid/graphics/Path;

.field private mSelected:Z

.field private outer:I

.field private start:F

.field private sweep:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->level:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setAlpha(F)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mEnabled:Z

    .line 57
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->getAnimationAngle()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setAnimationAngle(F)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 58
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->start:F

    .line 59
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mCenter:F

    return-void
.end method

.method private getAnimationAngle()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->animate:F

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCenter()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mCenter:F

    return v0
.end method

.method public getInnerRadius()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->inner:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->level:I

    return v0
.end method

.method public getOuterRadius()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->outer:I

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getStart()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->start:F

    return v0
.end method

.method public getStartAngle()F
    .locals 2

    .line 132
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->start:F

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->animate:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getSweep()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->sweep:F

    return v0
.end method

.method public hasItems()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mSelected:Z

    return v0
.end method

.method public performClick()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mOnClickListener:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem$OnClickListener;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem$OnClickListener;->onClick(Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 79
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mAlpha:F

    .line 80
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setAnimationAngle(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->animate:F

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mEnabled:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setGeometry(FFII)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->start:F

    .line 118
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->sweep:F

    .line 119
    iput p3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->inner:I

    .line 120
    iput p4, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->outer:I

    return-void
.end method

.method public setImageResource(Landroid/content/Context;I)V
    .locals 0

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 176
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    iget p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mAlpha:F

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->setAlpha(F)V

    return-void
.end method

.method public setOnClickListener(Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem$OnClickListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mOnClickListener:Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem$OnClickListener;

    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieItem;->mSelected:Z

    return-void
.end method
