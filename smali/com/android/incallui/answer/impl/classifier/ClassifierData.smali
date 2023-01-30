.class Lcom/android/incallui/answer/impl/classifier/ClassifierData;
.super Ljava/lang/Object;
.source "ClassifierData.java"


# instance fields
.field private mCurrentStrokes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/incallui/answer/impl/classifier/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private final mDpi:F

.field private mEndingStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/incallui/answer/impl/classifier/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenHeight:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    .line 35
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mDpi:F

    div-float/2addr p2, p1

    .line 36
    iput p2, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mScreenHeight:F

    return-void
.end method


# virtual methods
.method cleanUp(Landroid/view/MotionEvent;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getEndingStrokes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/incallui/answer/impl/classifier/Stroke;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenHeight()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mScreenHeight:F

    return v0
.end method

.method public getStroke(I)Lcom/android/incallui/answer/impl/classifier/Stroke;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/classifier/Stroke;

    return-object p1
.end method

.method public update(Landroid/view/MotionEvent;)V
    .locals 9

    .line 40
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 48
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/incallui/answer/impl/classifier/Stroke;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iget v7, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mDpi:F

    invoke-direct {v4, v5, v6, v7}, Lcom/android/incallui/answer/impl/classifier/Stroke;-><init>(JF)V

    .line 50
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/answer/impl/classifier/Stroke;

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 55
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/incallui/answer/impl/classifier/Stroke;->addPoint(FFJ)V

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 61
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->getStroke(I)Lcom/android/incallui/answer/impl/classifier/Stroke;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
