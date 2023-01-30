.class public Lcom/android/dialer/callcomposer/camera/exif/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private final mDenominator:J

.field private final mNumerator:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mNumerator:J

    .line 33
    iput-wide p3, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mDenominator:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 54
    :cond_1
    instance-of v2, p1, Lcom/android/dialer/callcomposer/camera/exif/Rational;

    if-eqz v2, :cond_2

    .line 55
    check-cast p1, Lcom/android/dialer/callcomposer/camera/exif/Rational;

    .line 56
    iget-wide v2, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mNumerator:J

    iget-wide v4, p1, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mNumerator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mDenominator:J

    iget-wide v4, p1, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mDenominator:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method getDenominator()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mDenominator:J

    return-wide v0
.end method

.method getNumerator()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mNumerator:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    iget-wide v1, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mNumerator:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mDenominator:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mNumerator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/dialer/callcomposer/camera/exif/Rational;->mDenominator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
