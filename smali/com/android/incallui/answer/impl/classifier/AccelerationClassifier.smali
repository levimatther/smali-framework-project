.class Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "AccelerationClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;
    }
.end annotation


# instance fields
.field private final mStrokeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/incallui/answer/impl/classifier/Stroke;",
            "Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;

    .line 65
    iget p1, p1, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    invoke-static {p1}, Lcom/android/incallui/answer/impl/classifier/SpeedRatioEvaluator;->evaluate(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ACC"

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->getStroke(I)Lcom/android/incallui/answer/impl/classifier/Stroke;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/answer/impl/classifier/Point;

    .line 54
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/Map;

    new-instance v4, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;

    invoke-direct {v4, v2}, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;-><init>(Lcom/android/incallui/answer/impl/classifier/Point;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;

    invoke-virtual {v1, v2}, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->addPoint(Lcom/android/incallui/answer/impl/classifier/Point;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
