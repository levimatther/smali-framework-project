.class Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;
.super Ljava/lang/Object;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/classifier/AnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# static fields
.field private static final ANGLE_DEVIATION:F = 0.15707964f

.field private static final MIN_MOVE_DIST_DP:F = 0.01f


# instance fields
.field private mAnglesCount:F

.field private mBiggestAngle:F

.field private mCount:F

.field private mFirstAngleVariance:F

.field private mFirstLength:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/answer/impl/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftAngles:F

.field private mLength:F

.field private mPreviousAngle:F

.field private mRightAngles:F

.field private mSecondCount:F

.field private mSecondSum:F

.field private mSecondSumSquares:F

.field private mStraightAngles:F

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    const v1, 0x40490fdb    # (float)Math.PI

    .line 109
    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    .line 110
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    .line 111
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSumSquares:F

    .line 112
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSum:F

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSum:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 113
    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondCount:F

    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mCount:F

    .line 114
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mFirstLength:F

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLength:F

    .line 115
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mStraightAngles:F

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mRightAngles:F

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLeftAngles:F

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mAnglesCount:F

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/incallui/answer/impl/classifier/Point;)V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/classifier/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/classifier/Point;->dist(Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLength:F

    iget-object v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {v2, p1}, Lcom/android/incallui/answer/impl/classifier/Point;->dist(Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLength:F

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 130
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/classifier/Point;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/impl/classifier/Point;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {p1, v0, v1}, Lcom/android/incallui/answer/impl/classifier/Point;->getAngle(Lcom/android/incallui/answer/impl/classifier/Point;Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result p1

    .line 135
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mAnglesCount:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mAnglesCount:F

    float-to-double v2, p1

    const-wide v4, 0x4007e0485c442d18L    # 2.9845130165391645

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    .line 137
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLeftAngles:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLeftAngles:F

    goto :goto_0

    :cond_2
    const-wide v4, 0x400a63ae4c442d18L    # 3.298672290640422

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_3

    .line 139
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mStraightAngles:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mStraightAngles:F

    goto :goto_0

    .line 141
    :cond_3
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mRightAngles:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mRightAngles:F

    .line 144
    :goto_0
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    sub-float v0, p1, v0

    .line 149
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_4

    .line 150
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    .line 151
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLength:F

    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mFirstLength:F

    .line 152
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSumSquares:F

    iget v3, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSum:F

    iget v4, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mCount:F

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    const/4 v2, 0x0

    .line 153
    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    .line 154
    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSum:F

    .line 155
    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondCount:F

    goto :goto_1

    .line 157
    :cond_4
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSum:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSum:F

    .line 158
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    .line 159
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondCount:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondCount:F

    .line 162
    :goto_1
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSum:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSum:F

    .line 163
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSumSquares:F

    mul-float/2addr v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSumSquares:F

    .line 164
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mCount:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mCount:F

    .line 165
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    :cond_5
    return-void
.end method

.method public getAnglesPercentage()F
    .locals 2

    .line 187
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 190
    :cond_0
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLeftAngles:F

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mRightAngles:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mStraightAngles:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mAnglesCount:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getAnglesVariance()F
    .locals 5

    .line 175
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSumSquares:F

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSum:F

    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mCount:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v0

    .line 176
    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mFirstLength:F

    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mLength:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 177
    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    iget v3, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondSum:F

    iget v4, p0, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->mSecondCount:F

    .line 181
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/answer/impl/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v2

    add-float/2addr v1, v2

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_0
    return v0
.end method

.method public getAnglesVariance(FFF)F
    .locals 0

    div-float/2addr p1, p3

    div-float/2addr p2, p3

    mul-float/2addr p2, p2

    sub-float/2addr p1, p2

    return p1
.end method
