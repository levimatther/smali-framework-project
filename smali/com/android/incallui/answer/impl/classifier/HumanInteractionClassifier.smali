.class Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;
.super Lcom/android/incallui/answer/impl/classifier/Classifier;
.source "HumanInteractionClassifier.java"


# static fields
.field private static final CONFIG_ANSWER_FALSE_TOUCH_DETECTION_ENABLED:Ljava/lang/String; = "answer_false_touch_detection_enabled"


# instance fields
.field private final mEnabled:Z

.field private final mGestureClassifiers:[Lcom/android/incallui/answer/impl/classifier/GestureClassifier;

.field private final mHistoryEvaluator:Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;

.field private final mStrokeClassifiers:[Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/Classifier;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 44
    new-instance v2, Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-direct {v2, v1, v0}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;-><init>(FF)V

    iput-object v2, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    .line 45
    new-instance v0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;

    invoke-direct {v0}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;

    .line 47
    invoke-static {p1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p1

    const-string v0, "answer_false_touch_detection_enabled"

    const/4 v1, 0x1

    .line 48
    invoke-interface {p1, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mEnabled:Z

    const/16 p1, 0x9

    new-array p1, p1, [Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;

    .line 50
    new-instance v0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;

    iget-object v2, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v2}, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    const/4 v2, 0x0

    aput-object v0, p1, v2

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/SpeedClassifier;

    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v3}, Lcom/android/incallui/answer/impl/classifier/SpeedClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    aput-object v0, p1, v1

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/DurationCountClassifier;

    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v3}, Lcom/android/incallui/answer/impl/classifier/DurationCountClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    const/4 v3, 0x2

    aput-object v0, p1, v3

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/EndPointRatioClassifier;

    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v4}, Lcom/android/incallui/answer/impl/classifier/EndPointRatioClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    const/4 v4, 0x3

    aput-object v0, p1, v4

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/EndPointLengthClassifier;

    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v4}, Lcom/android/incallui/answer/impl/classifier/EndPointLengthClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    const/4 v4, 0x4

    aput-object v0, p1, v4

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;

    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v4}, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    const/4 v4, 0x5

    aput-object v0, p1, v4

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;

    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v4}, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    const/4 v4, 0x6

    aput-object v0, p1, v4

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/LengthCountClassifier;

    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v4}, Lcom/android/incallui/answer/impl/classifier/LengthCountClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    const/4 v4, 0x7

    aput-object v0, p1, v4

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/DirectionClassifier;

    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v4}, Lcom/android/incallui/answer/impl/classifier/DirectionClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    const/16 v4, 0x8

    aput-object v0, p1, v4

    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;

    new-array p1, v3, [Lcom/android/incallui/answer/impl/classifier/GestureClassifier;

    .line 63
    new-instance v0, Lcom/android/incallui/answer/impl/classifier/PointerCountClassifier;

    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v3}, Lcom/android/incallui/answer/impl/classifier/PointerCountClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    aput-object v0, p1, v2

    new-instance v0, Lcom/android/incallui/answer/impl/classifier/ProximityClassifier;

    iget-object v2, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-direct {v0, v2}, Lcom/android/incallui/answer/impl/classifier/ProximityClassifier;-><init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/incallui/answer/impl/classifier/GestureClassifier;

    return-void
.end method

.method private addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 83
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->update(Landroid/view/MotionEvent;)V

    .line 85
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 86
    invoke-virtual {v4, p1}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/incallui/answer/impl/classifier/GestureClassifier;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 90
    invoke-virtual {v4, p1}, Lcom/android/incallui/answer/impl/classifier/GestureClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_2
    const/4 v3, 0x0

    if-ge v1, v0, :cond_3

    .line 95
    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-virtual {v4}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/answer/impl/classifier/Stroke;

    .line 97
    iget-object v5, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;

    array-length v6, v5

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 98
    invoke-virtual {v8, v4}, Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;->getFalseTouchEvaluation(Lcom/android/incallui/answer/impl/classifier/Stroke;)F

    move-result v8

    add-float/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;

    invoke-virtual {v4, v3}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->addStroke(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/incallui/answer/impl/classifier/GestureClassifier;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    .line 109
    invoke-virtual {v4}, Lcom/android/incallui/answer/impl/classifier/GestureClassifier;->getFalseTouchEvaluation()F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;

    invoke-virtual {v0, v3}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->addGesture(F)V

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/incallui/answer/impl/classifier/ClassifierData;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/classifier/ClassifierData;->cleanUp(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "HIC"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mEnabled:Z

    return v0
.end method

.method isFalseTouch()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->getEvaluation()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/incallui/answer/impl/classifier/StrokeClassifier;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 121
    invoke-virtual {v4, p1}, Lcom/android/incallui/answer/impl/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/incallui/answer/impl/classifier/GestureClassifier;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 125
    invoke-virtual {v3, p1}, Lcom/android/incallui/answer/impl/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
