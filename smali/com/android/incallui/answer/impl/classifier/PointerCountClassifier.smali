.class Lcom/android/incallui/answer/impl/classifier/PointerCountClassifier;
.super Lcom/android/incallui/answer/impl/classifier/GestureClassifier;
.source "PointerCountClassifier.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/ClassifierData;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/GestureClassifier;-><init>()V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/PointerCountClassifier;->mCount:I

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/PointerCountClassifier;->mCount:I

    invoke-static {v0}, Lcom/android/incallui/answer/impl/classifier/PointerCountEvaluator;->evaluate(I)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "PTR_CNT"

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 39
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/PointerCountClassifier;->mCount:I

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 43
    iget p1, p0, Lcom/android/incallui/answer/impl/classifier/PointerCountClassifier;->mCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/PointerCountClassifier;->mCount:I

    :cond_1
    return-void
.end method
