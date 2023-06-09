.class Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;
.super Ljava/lang/Object;
.source "AccelerationClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# static fields
.field static final MILLIS_TO_NANOS:F = 1000000.0f


# instance fields
.field maxSpeedRatio:F

.field previousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

.field previousSpeed:F


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/classifier/Point;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 74
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    .line 77
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/incallui/answer/impl/classifier/Point;)V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/classifier/Point;->dist(Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result v0

    .line 82
    iget-wide v1, p1, Lcom/android/incallui/answer/impl/classifier/Point;->timeOffsetNano:J

    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

    iget-wide v3, v3, Lcom/android/incallui/answer/impl/classifier/Point;->timeOffsetNano:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    const v2, 0x4b989680    # 2.0E7f

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    const v2, 0x4a989680    # 5000000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousSpeed:F

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 92
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    div-float v1, v0, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    .line 95
    :cond_1
    iput v0, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 96
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

    return-void

    .line 87
    :cond_2
    :goto_0
    iput v3, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 88
    iput-object p1, p0, Lcom/android/incallui/answer/impl/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/incallui/answer/impl/classifier/Point;

    return-void
.end method
