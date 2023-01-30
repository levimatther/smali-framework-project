.class Lcom/android/incallui/answer/impl/classifier/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public timeOffsetNano:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    .line 26
    iput p2, p0, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    const-wide/16 p1, 0x0

    .line 27
    iput-wide p1, p0, Lcom/android/incallui/answer/impl/classifier/Point;->timeOffsetNano:J

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    .line 32
    iput p2, p0, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    .line 33
    iput-wide p3, p0, Lcom/android/incallui/answer/impl/classifier/Point;->timeOffsetNano:J

    return-void
.end method


# virtual methods
.method public crossProduct(Lcom/android/incallui/answer/impl/classifier/Point;Lcom/android/incallui/answer/impl/classifier/Point;)F
    .locals 4

    .line 61
    iget v0, p1, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    sub-float/2addr v0, v1

    iget v2, p2, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    iget v3, p0, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget p1, p1, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    sub-float/2addr p1, v3

    iget p2, p2, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    sub-float/2addr p2, v1

    mul-float/2addr p1, p2

    sub-float/2addr v0, p1

    return v0
.end method

.method public dist(Lcom/android/incallui/answer/impl/classifier/Point;)F
    .locals 4

    .line 53
    iget v0, p1, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p1, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    sub-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public dotProduct(Lcom/android/incallui/answer/impl/classifier/Point;Lcom/android/incallui/answer/impl/classifier/Point;)F
    .locals 3

    .line 69
    iget v0, p1, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    sub-float/2addr v0, v1

    iget v2, p2, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    iget p1, p1, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    sub-float/2addr p1, v1

    iget p2, p2, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    sub-float/2addr p2, v1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 38
    instance-of v0, p1, Lcom/android/incallui/answer/impl/classifier/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    check-cast p1, Lcom/android/incallui/answer/impl/classifier/Point;

    .line 42
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    iget v2, p1, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    iget p1, p1, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAngle(Lcom/android/incallui/answer/impl/classifier/Point;Lcom/android/incallui/answer/impl/classifier/Point;)F
    .locals 4

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/incallui/answer/impl/classifier/Point;->dist(Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result v0

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/incallui/answer/impl/classifier/Point;->dist(Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/answer/impl/classifier/Point;->crossProduct(Lcom/android/incallui/answer/impl/classifier/Point;Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result v2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/answer/impl/classifier/Point;->dotProduct(Lcom/android/incallui/answer/impl/classifier/Point;Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    div-float/2addr p1, v0

    div-float/2addr p1, v1

    .line 88
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double p1, p1

    .line 89
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double v0, v2

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_1

    const p2, 0x40c90fdb

    sub-float p1, p2, p1

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 47
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/Point;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget v2, p0, Lcom/android/incallui/answer/impl/classifier/Point;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    return v0
.end method
