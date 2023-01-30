.class public Lcom/android/dialer/app/list/PhoneFavoriteListView;
.super Landroid/widget/GridView;
.source "PhoneFavoriteListView.java"

# interfaces
.implements Lcom/android/dialer/app/list/OnDragDropListener;
.implements Lcom/android/dialer/app/list/DragDropController$DragItemContainer;


# static fields
.field private static final BOUND_GAP_RATIO:F = 0.2f

.field private static final DRAG_SCROLL_PX_UNIT:I = 0x19

.field private static final DRAG_SHADOW_ALPHA:F = 0.7f

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final SCROLL_HANDLER_DELAY_MILLIS:J = 0x5L


# instance fields
.field private mAnimationDuration:I

.field private mBottomScrollBound:I

.field private mDragDropController:Lcom/android/dialer/app/list/DragDropController;

.field private final mDragScroller:Ljava/lang/Runnable;

.field private mDragShadowBitmap:Landroid/graphics/Bitmap;

.field private mDragShadowLeft:I

.field private final mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDragShadowOverlay:Landroid/widget/ImageView;

.field private mDragShadowParent:Landroid/view/View;

.field private mDragShadowTop:I

.field private mIsDragScrollerRunning:Z

.field private mLastDragY:I

.field final mLocationOnScreen:[I

.field private mScrollHandler:Landroid/os/Handler;

.field private mTopScrollBound:I

.field private mTouchDownForDragStartY:I

.field private mTouchOffsetToChildLeft:I

.field private mTouchOffsetToChildTop:I

.field private mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/dialer/app/list/PhoneFavoriteListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 42
    iput-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    .line 57
    new-instance p2, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView$1;-><init>(Lcom/android/dialer/app/list/PhoneFavoriteListView;)V

    iput-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 69
    iput-boolean p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    .line 73
    new-instance p2, Lcom/android/dialer/app/list/PhoneFavoriteListView$2;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView$2;-><init>(Lcom/android/dialer/app/list/PhoneFavoriteListView;)V

    iput-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 93
    new-instance p2, Lcom/android/dialer/app/list/DragDropController;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/list/DragDropController;-><init>(Lcom/android/dialer/app/list/DragDropController$DragItemContainer;)V

    iput-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0a0017

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mAnimationDuration:I

    .line 106
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchSlop:F

    .line 107
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/app/list/OnDragDropListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/list/PhoneFavoriteListView;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLastDragY:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/list/PhoneFavoriteListView;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTopScrollBound:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/list/PhoneFavoriteListView;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mBottomScrollBound:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/list/PhoneFavoriteListView;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/list/PhoneFavoriteListView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/dialer/app/list/PhoneFavoriteListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/app/list/PhoneFavoriteListView;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    return-object p0
.end method

.method private createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 286
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 288
    sget-object v4, Lcom/android/dialer/app/list/PhoneFavoriteListView;->LOG_TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const-string v1, "Failed to copy bitmap from Drawing cache"

    invoke-static {v4, v1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 294
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v2
.end method

.method private ensureScrollHandler()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private getViewAtPosition(II)Landroid/view/View;
    .locals 4

    .line 190
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 195
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p2, v3, :cond_0

    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDragDropController()Lcom/android/dialer/app/list/DragDropController;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    return-object v0
.end method

.method public getViewForLocation(II)Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getLocationOnScreen([I)V

    .line 303
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    .line 304
    aget v0, v0, v1

    sub-int/2addr p2, v0

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getViewAtPosition(II)Landroid/view/View;

    move-result-object p1

    .line 307
    instance-of p2, p1, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_0
    check-cast p1, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroid/widget/GridView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchSlop:F

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 6

    .line 131
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 133
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 162
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTopScrollBound:I

    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->getBottom()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mBottomScrollBound:I

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-direct {p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->ensureScrollHandler()V

    .line 169
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    iput-boolean v4, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-ne v0, p1, :cond_2

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    invoke-virtual {p1, v1, v2, v4}, Lcom/android/dialer/app/list/DragDropController;->handleDragFinished(IIZ)V

    goto :goto_0

    .line 148
    :pswitch_2
    iput v2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLastDragY:I

    .line 149
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/dialer/app/list/DragDropController;->handleDragHovered(Landroid/view/View;II)V

    .line 151
    iget-boolean p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLastDragY:I

    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    sub-int/2addr p1, v0

    .line 154
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchSlop:F

    mul-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    .line 155
    iput-boolean v3, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    .line 156
    invoke-direct {p0}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->ensureScrollHandler()V

    .line 157
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "PHONE_FAVORITE_TILE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v4

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/app/list/DragDropController;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/dialer/app/list/DragDropController;->handleDragStarted(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_2

    return v4

    :cond_2
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDragFinished(II)V
    .locals 2

    .line 265
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 267
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    .line 268
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 269
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mAnimationDuration:I

    int-to-long v0, p2

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V
    .locals 1

    .line 253
    iget-object p3, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 254
    iget p3, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    sub-int/2addr p1, p3

    iget-object p3, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v0, 0x0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 255
    iget v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    sub-int/2addr p2, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowTop:I

    .line 257
    iget-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    int-to-float p1, p1

    .line 258
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setX(F)V

    .line 259
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowTop:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setY(F)V

    :cond_0
    return-void
.end method

.method public onDragStarted(IILcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 221
    invoke-direct {p0, p3}, Lcom/android/dialer/app/list/PhoneFavoriteListView;->createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {p3, v0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getLocationOnScreen([I)V

    .line 227
    iget-object p3, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v0, 0x0

    aget v1, p3, v0

    iput v1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowLeft:I

    const/4 v2, 0x1

    .line 228
    aget v3, p3, v2

    iput v3, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowTop:I

    sub-int/2addr p1, v1

    .line 235
    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    sub-int/2addr p2, v3

    .line 236
    iput p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    .line 238
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 239
    iget p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowLeft:I

    iget-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget p3, p2, v0

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 240
    iget p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowTop:I

    aget p2, p2, v2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowTop:I

    .line 242
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 246
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowLeft:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setX(F)V

    .line 247
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowTop:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public onDroppedOnRemove()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragShadowOverlay(Landroid/widget/ImageView;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    .line 185
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    return-void
.end method
