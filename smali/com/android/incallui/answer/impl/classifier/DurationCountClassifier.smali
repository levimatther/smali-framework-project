.class Lcom/android/incallui/answer/impl/classifier/DurationCountClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "DurationCountClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getDurationSeconds()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getCount()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v0}, Lcom/android/incallui/answer/impl/classifier/DurationCountEvaluator;->evaluate(F)F

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DUR"

    return-object v0
.end method
