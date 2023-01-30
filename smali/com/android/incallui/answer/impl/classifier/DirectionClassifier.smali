.class public Lcom/android/incallui/answer/impl/classifier/DirectionClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "DirectionClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 3

    .line 33
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/impl/classifier/Point;

    .line 34
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/classifier/Point;

    .line 35
    iget v1, p1, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    iget v2, v0, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    sub-float/2addr v1, v2

    iget p1, p1, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    iget v0, v0, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    sub-float/2addr p1, v0

    invoke-static {v1, p1}, Lcom/android/incallui/answer/impl/classifier/DirectionEvaluator;->evaluate(FF)F

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DIR"

    return-object v0
.end method

.method public bridge synthetic onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
