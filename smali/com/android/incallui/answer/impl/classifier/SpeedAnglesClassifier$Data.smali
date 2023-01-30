.class Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;
.super Ljava/lang/Object;
.source "SpeedAnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# static fields
.field private static final ANGLE_DEVIATION:F = 0.31415927f

.field private static final DURATION_SCALE:F = 1.0E8f

.field private static final LENGTH_SCALE:F = 1.0f


# instance fields
.field private mAcceleratingAngles:F

.field private mAnglesCount:F

.field private mCount:F

.field private mDist:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/answer/impl/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousAngle:F

.field private mPreviousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

    const v0, 0x40490fdb    # (float)Math.PI

    .line 94
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    .line 96
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mSum:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mCount:F

    .line 98
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mDist:F

    .line 99
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/incallui/answer/impl/classifier/Point;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

    if-eqz v0, :cond_0

    .line 104
    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mDist:F

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/classifier/Point;->dist(Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mDist:F

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

    .line 108
    new-instance v0, Lcom/android/incallui/answer/impl/classifier/Point;

    iget-wide v1, p1, Lcom/android/incallui/answer/impl/classifier/Point;->timeOffsetNano:J

    long-to-float p1, v1

    const v1, 0x4cbebc20    # 1.0E8f

    div-float/2addr p1, v1

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mDist:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lcom/android/incallui/answer/impl/classifier/Point;-><init>(FF)V

    .line 113
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {p1, v0}, Lcom/android/incallui/answer/impl/classifier/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 117
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/classifier/Point;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/impl/classifier/Point;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {p1, v0, v1}, Lcom/android/incallui/answer/impl/classifier/Point;->getAngle(Lcom/android/incallui/answer/impl/classifier/Point;Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result p1

    .line 122
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    const v0, 0x4034f4ac

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 124
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    .line 127
    :cond_2
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    sub-float v0, p1, v0

    .line 128
    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mSum:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mSum:F

    .line 129
    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    .line 130
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mCount:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mCount:F

    .line 131
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    :cond_3
    return-void
.end method

.method public getAnglesPercentage()F
    .locals 2

    .line 141
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 144
    :cond_0
    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    div-float/2addr v1, v0

    return v1
.end method

.method public getAnglesVariance()F
    .locals 4

    .line 137
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mCount:F

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/SpeedAnglesClassifier$Data;->mSum:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    return v0
.end method
