.class Lcom/android/incallui/answer/impl/classifier/SpeedClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "SpeedClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 3

    .line 34
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getDurationSeconds()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 36
    invoke-static {v1}, Lcom/android/incallui/answer/impl/classifier/SpeedEvaluator;->evaluate(F)F

    move-result p1

    return p1

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getTotalLength()F

    move-result p1

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/android/incallui/answer/impl/classifier/SpeedEvaluator;->evaluate(F)F

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SPD"

    return-object v0
.end method
