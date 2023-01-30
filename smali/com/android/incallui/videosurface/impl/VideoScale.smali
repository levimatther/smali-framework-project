.class public Lcom/android/incallui/videosurface/impl/VideoScale;
.super Ljava/lang/Object;
.source "VideoScale.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scaleVideoAndFillView(Landroid/view/TextureView;FFF)V
    .locals 8

    .line 31
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 32
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    div-float v3, p1, p2

    cmpl-float v3, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    div-float v3, v0, p1

    mul-float/2addr v3, p2

    div-float/2addr v3, v1

    goto :goto_0

    :cond_0
    div-float v3, v1, p2

    mul-float/2addr v3, p1

    div-float/2addr v3, v0

    move v7, v4

    move v4, v3

    move v3, v7

    :goto_0
    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v5, p3, v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x43870000    # 270.0f

    cmpl-float v5, p3, v5

    if-nez v5, :cond_2

    :cond_1
    div-float v5, v1, v0

    mul-float/2addr v5, v3

    mul-float/2addr v2, v4

    const/high16 v3, -0x40800000    # -1.0f

    mul-float v4, v5, v3

    mul-float/2addr v3, v2

    :cond_2
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 70
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 71
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v5

    const/4 p1, 0x3

    .line 72
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    .line 73
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    .line 74
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    .line 75
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "VideoScale.scaleVideoAndFillView"

    const-string/jumbo p2, "view: %f x %f, video: %f x %f scale: %f x %f, rotation: %f"

    .line 66
    invoke-static {p1, p2, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    div-float/2addr v1, p2

    .line 78
    invoke-virtual {p1, v4, v3, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_3

    .line 86
    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 88
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static scaleVideoMaintainingAspectRatio(Landroid/view/TextureView;II)V
    .locals 8

    .line 97
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_1

    mul-int v3, v1, p1

    mul-int v4, v0, p2

    if-le v3, v4, :cond_0

    .line 106
    div-int/2addr v4, p1

    int-to-float v3, v4

    int-to-float v4, v1

    :goto_0
    div-float/2addr v3, v4

    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_2

    :cond_0
    if-ge v3, v4, :cond_3

    .line 110
    div-int/2addr v3, p2

    int-to-float v3, v3

    int-to-float v4, v0

    goto :goto_0

    :cond_1
    mul-int v3, v1, p1

    mul-int v4, v0, p2

    if-le v3, v4, :cond_2

    .line 117
    div-int/2addr v4, p1

    int-to-float v3, v4

    int-to-float v4, v1

    :goto_1
    div-float/2addr v3, v4

    goto :goto_2

    :cond_2
    if-ge v3, v4, :cond_3

    .line 121
    div-int/2addr v3, p2

    int-to-float v3, v3

    int-to-float v4, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_2
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x3

    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x4

    .line 133
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x5

    .line 134
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "VideoScale.scaleVideoMaintainingAspectRatio"

    const-string/jumbo p2, "view: %d x %d, video: %d x %d scale: %f x %f"

    .line 126
    invoke-static {p1, p2, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 136
    invoke-virtual {p1, v2, v3, p2, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
