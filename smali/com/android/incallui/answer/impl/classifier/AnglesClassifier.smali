.class Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;
    }
.end annotation


# instance fields
.field private mStrokeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/incallui/answer/impl/classifier/Stroke;",
            "Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;

    .line 82
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->getAnglesVariance()F

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/answer/impl/classifier/AnglesVarianceEvaluator;->evaluate(F)F

    move-result v0

    .line 83
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->getAnglesPercentage()F

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/answer/impl/classifier/AnglesPercentageEvaluator;->evaluate(F)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ANG"

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->getStroke(I)Lcom/android/incallui/answer/impl/classifier/Stroke;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/Map;

    new-instance v3, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;

    invoke-direct {v3}, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;

    invoke-virtual {v1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {v2, v1}, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->addPoint(Lcom/android/incallui/answer/impl/classifier/Point;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
