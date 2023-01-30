.class public final Lcom/android/dialer/callcomposer/util/BitmapResizer;
.super Ljava/lang/Object;
.source "BitmapResizer.java"


# static fields
.field static final MAX_OUTPUT_RESOLUTION:I = 0x280


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resizeForEnrichedCalling(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    .line 38
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 43
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 44
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v0, v6

    const-string v1, "BitmapResizer.resizeForEnrichedCalling"

    const-string v7, "starting height: %d, width: %d"

    .line 46
    invoke-static {v1, v7, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x280

    if-gt v3, v0, :cond_0

    if-gt v4, v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no resizing needed"

    .line 50
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 51
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x44200000    # 640.0f

    if-le v3, v4, :cond_1

    int-to-float v7, v3

    goto :goto_0

    :cond_1
    int-to-float v7, v4

    :goto_0
    div-float/2addr v0, v7

    new-array p1, p1, [Ljava/lang/Object;

    int-to-float v7, v4

    mul-float/2addr v7, v0

    .line 66
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, p1, v2

    int-to-float v2, v3

    mul-float/2addr v2, v0

    .line 67
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p1, v6

    const-string v2, "ending height: %f, width: %f"

    .line 63
    invoke-static {v1, v2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 70
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
