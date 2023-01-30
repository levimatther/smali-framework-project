.class Lcom/android/incallui/answer/impl/classifier/EndPointRatioClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "EndPointRatioClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/EndPointRatioClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 2

    .line 36
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getTotalLength()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getEndPointLength()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getTotalLength()F

    move-result p1

    div-float p1, v0, p1

    .line 41
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/answer/impl/classifier/EndPointRatioEvaluator;->evaluate(F)F

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "END_RTIO"

    return-object v0
.end method
