.class public Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$MainHandler;,
        Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final AUTO_WHITE_BALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private mAeAwbLock:Z

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;Landroid/os/Looper;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    .line 113
    new-instance v0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$MainHandler;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    .line 115
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;

    return-void
.end method

.method private autoFocus()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FocusOverlayManager.autoFocus"

    const-string v3, "Start autofocus."

    .line 316
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;->autoFocus()V

    const/4 v1, 0x1

    .line 318
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    .line 319
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->updateFocusUI()V

    .line 320
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    sub-int/2addr p6, p1

    const/4 p3, 0x0

    if-lez p6, :cond_0

    .line 426
    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p4, v0

    invoke-direct {p0, p4, p3, p6}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->clamp(III)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    sub-int/2addr p7, p2

    if-lez p7, :cond_1

    .line 428
    div-int/lit8 p6, p2, 0x2

    sub-int/2addr p5, p6

    invoke-direct {p0, p5, p3, p7}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->clamp(III)I

    move-result p3

    .line 430
    :cond_1
    new-instance p5, Landroid/graphics/RectF;

    int-to-float p6, p4

    int-to-float p7, p3

    add-int/2addr p4, p1

    int-to-float p1, p4

    add-int/2addr p3, p2

    int-to-float p2, p3

    invoke-direct {p5, p6, p7, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 431
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 432
    invoke-direct {p0, p5, p8}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method private capture()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    .line 339
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private clamp(III)I
    .locals 1

    if-lt p3, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    if-le p1, p3, :cond_1

    return p3

    :cond_1
    if-ge p1, p2, :cond_2

    return p2

    :cond_2
    return p1
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 10

    move-object v9, p0

    .line 227
    iget-object v0, v9, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 229
    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 233
    iget-object v0, v9, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 233
    invoke-direct/range {v0 .. v8}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private initializeMeteringAreas(IIIIII)V
    .locals 10

    move-object v9, p0

    .line 239
    iget-object v0, v9, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 241
    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 247
    iget-object v0, v9, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v1, 0x0

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 247
    invoke-direct/range {v0 .. v8}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    const-string v0, "auto-exposure-lock-supported"

    .line 447
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    const-string v0, "auto-whitebalance-lock-supported"

    .line 451
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    .line 463
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    const-string v0, "auto"

    invoke-direct {p0, v0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    .line 459
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 455
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mAeAwbLock:Z

    .line 166
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;->setFocusParameters()V

    :cond_0
    return-void
.end method

.method private prepareMatrix(Landroid/graphics/Matrix;ZII)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move p2, v0

    .line 469
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p2, p3

    const/high16 p3, 0x44fa0000    # 2000.0f

    div-float v0, p2, p3

    int-to-float p4, p4

    div-float p3, p4, p3

    .line 472
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    div-float/2addr p4, p3

    .line 473
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1

    .line 477
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 478
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 479
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 480
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private resetTouchFocus()V
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->clear()V

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 411
    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-void
.end method

.method private setMatrix()V
    .locals 4

    .line 152
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewHeight:I

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 154
    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMirror:Z

    iget v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewWidth:I

    iget v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->prepareMatrix(Landroid/graphics/Matrix;ZII)V

    .line 158
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 159
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mInitialized:Z

    :cond_1
    return-void
.end method

.method private updateFocusUI()V
    .locals 4

    .line 374
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    .line 379
    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    if-nez v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v1, :cond_1

    .line 381
    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusIndicator;->clear()V

    goto :goto_1

    .line 386
    :cond_1
    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusIndicator;->showStart()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    const-string v2, "continuous-picture"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 393
    invoke-interface {v0, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusIndicator;->showSuccess(Z)V

    goto :goto_1

    .line 394
    :cond_4
    iget v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 395
    invoke-interface {v0, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusIndicator;->showSuccess(Z)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    .line 397
    invoke-interface {v0, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusIndicator;->showFail(Z)V

    goto :goto_1

    .line 389
    :cond_6
    :goto_0
    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusIndicator;->showStart()V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FocusOverlayManager.cancelAutoFocus"

    const-string v3, "Cancel autofocus."

    .line 324
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->resetTouchFocus()V

    .line 330
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 331
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    .line 332
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->updateFocusUI()V

    .line 333
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 346
    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusAreaSupported:Z

    const-string v2, "auto"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 348
    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "continuous-picture"

    .line 350
    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 362
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public onAutoFocus(ZZ)V
    .locals 4

    .line 171
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_0

    .line 176
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 178
    :cond_0
    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    .line 180
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->updateFocusUI()V

    .line 181
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->capture()V

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    if-eqz p1, :cond_2

    .line 187
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    goto :goto_1

    .line 189
    :cond_2
    iput v2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    .line 191
    :goto_1
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->updateFocusUI()V

    .line 194
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 195
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    if-eqz p2, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->lockAeAwbIfNeeded()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onAutoFocusMoving(Z)V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->showStart()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->showSuccess(Z)V

    :goto_0
    return-void
.end method

.method public onCameraReleased()V
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->onPreviewStopped()V

    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    .line 307
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->resetTouchFocus()V

    .line 308
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->updateFocusUI()V

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 11

    .line 259
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mInitialized:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->cancelAutoFocus()V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getSize()I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getSize()I

    move-result v8

    if-eqz v0, :cond_7

    .line 271
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getWidth()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->getHeight()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 274
    :cond_3
    iget v9, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewWidth:I

    .line 275
    iget v10, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewHeight:I

    .line 277
    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v1, :cond_4

    move-object v1, p0

    move v2, v0

    move v3, v8

    move v4, p1

    move v5, p2

    move v6, v9

    move v7, v10

    .line 278
    invoke-direct/range {v1 .. v7}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->initializeFocusAreas(IIIIII)V

    .line 281
    :cond_4
    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_5

    move-object v1, p0

    move v2, v0

    move v3, v8

    move v4, p1

    move v5, p2

    move v6, v9

    move v7, v10

    .line 282
    invoke-direct/range {v1 .. v7}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->initializeMeteringAreas(IIIIII)V

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setFocus(II)V

    .line 289
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mListener:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;

    invoke-interface {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 290
    iget-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz p1, :cond_6

    .line 291
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->autoFocus()V

    goto :goto_0

    .line 293
    :cond_6
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->updateFocusUI()V

    .line 295
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public setFocusRenderer(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPieRenderer:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    .line 120
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mInitialized:Z

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMirror:Z

    .line 148
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->setMatrix()V

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mFocusAreaSupported:Z

    .line 133
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mMeteringAreaSupported:Z

    .line 134
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 135
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mLockAeAwbNeeded:Z

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 140
    :cond_0
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewWidth:I

    .line 141
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->mPreviewHeight:I

    .line 142
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->setMatrix()V

    :cond_1
    return-void
.end method
