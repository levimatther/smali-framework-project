.class Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "SpeedAnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;
    }
.end annotation


# instance fields
.field private mStrokeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/incallui/answer/impl/classifier/Stroke;",
            "Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;

    .line 73
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->getAnglesVariance()F

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/answer/impl/classifier/SpeedVarianceEvaluator;->evaluate(F)F

    move-result v0

    .line 74
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->getAnglesPercentage()F

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesPercentageEvaluator;->evaluate(F)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SPD_ANG"

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 56
    iget-object v2, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->getStroke(I)Lcom/android/incallui/answer/impl/classifier/Stroke;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/Map;

    new-instance v4, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;

    invoke-direct {v4}, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;

    invoke-virtual {v2}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {v4, v2}, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->addPoint(Lcom/android/incallui/answer/impl/classifier/Point;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
