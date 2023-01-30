.class Lcom/android/incallui/answer/impl/classifier/LengthCountClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "LengthCountClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 2

    .line 37
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getTotalLength()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v0, p1

    .line 36
    invoke-static {v0}, Lcom/android/incallui/answer/impl/classifier/LengthCountEvaluator;->evaluate(F)F

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LEN_CNT"

    return-object v0
.end method
