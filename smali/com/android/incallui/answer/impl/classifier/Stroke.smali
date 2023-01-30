.class Lcom/android/incallui/answer/impl/classifier/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# static fields
.field private static final NANOS_TO_SECONDS:F = 1.0E9f


# instance fields
.field private final mDpi:F

.field private mEndTimeNano:J

.field private mLength:F

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/incallui/answer/impl/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeNano:J


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    .line 36
    iput p3, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mDpi:F

    .line 37
    iput-wide p1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mEndTimeNano:J

    iput-wide p1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mStartTimeNano:J

    return-void
.end method


# virtual methods
.method public addPoint(FFJ)V
    .locals 3

    .line 41
    iput-wide p3, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mEndTimeNano:J

    .line 42
    new-instance v0, Lcom/android/incallui/answer/impl/classifier/Point;

    iget v1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mDpi:F

    div-float/2addr p1, v1

    div-float/2addr p2, v1

    iget-wide v1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mStartTimeNano:J

    sub-long/2addr p3, v1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/incallui/answer/impl/classifier/Point;-><init>(FFJ)V

    .line 43
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 44
    iget p1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mLength:F

    iget-object p2, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {p2, v0}, Lcom/android/incallui/answer/impl/classifier/Point;->dist(Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mLength:F

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDurationNanos()J
    .locals 4

    .line 62
    iget-wide v0, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mEndTimeNano:J

    iget-wide v2, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mStartTimeNano:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationSeconds()F
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/classifier/Stroke;->getDurationNanos()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    return v0
.end method

.method public getEndPointLength()F
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/impl/classifier/Point;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/answer/impl/classifier/Point;

    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/classifier/Point;->dist(Lcom/android/incallui/answer/impl/classifier/Point;)F

    move-result v0

    return v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/incallui/answer/impl/classifier/Point;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalLength()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/incallui/answer/impl/classifier/Stroke;->mLength:F

    return v0
.end method
