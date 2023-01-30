.class Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;
.super Ljava/lang/Object;
.source "HistoryEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-5f

.field private static final HISTORY_FACTOR:F = 0.9f

.field private static final INTERVAL:F = 50.0f


# instance fields
.field private final mGestureWeights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdate:J

.field private final mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mLastUpdate:J

    return-void
.end method

.method private decayValue()V
    .locals 6

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 74
    iget-wide v2, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mLastUpdate:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 79
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 81
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    .line 82
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    .line 83
    iput-wide v0, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mLastUpdate:J

    return-void
.end method

.method private decayValue(Ljava/util/ArrayList;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;",
            ">;F)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 89
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;

    iget v4, v3, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v4, p2

    iput v4, v3, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;->weight:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;

    iget p2, p2, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;->weight:F

    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->isZero(F)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isZero(F)Z
    .locals 1

    const v0, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, -0x48d83a54    # -1.0E-5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private weightedAverage(Ljava/util/ArrayList;)F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;",
            ">;)F"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 59
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;

    .line 60
    iget v6, v5, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;->evaluation:F

    iget v7, v5, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 61
    iget v5, v5, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;->weight:F

    add-float/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float p1, v3, v1

    if-nez p1, :cond_1

    return v1

    :cond_1
    div-float/2addr v4, v3

    return v4
.end method


# virtual methods
.method public addGesture(F)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->decayValue()V

    .line 46
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;

    invoke-direct {v1, p1}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStroke(F)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->decayValue()V

    .line 41
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;

    invoke-direct {v1, p1}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEvaluation()F
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
