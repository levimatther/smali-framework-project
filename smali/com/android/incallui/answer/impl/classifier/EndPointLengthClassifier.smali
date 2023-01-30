.class Lcom/android/incallui/answer/impl/classifier/EndPointLengthClassifier;
.super Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;
.source "EndPointLengthClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/EndPointLengthClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F
    .locals 0

    .line 34
    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getEndPointLength()F

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/answer/impl/classifier/EndPointLengthEvaluator;->evaluate(F)F

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "END_LNGTH"

    return-object v0
.end method
