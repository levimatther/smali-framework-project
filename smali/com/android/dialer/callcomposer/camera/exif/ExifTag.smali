.class public Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field static final SIZE_UNDEFINED:I = 0x0

.field static final TYPE_ASCII:S = 0x2s

.field static final TYPE_LONG:S = 0x9s

.field static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field static final TYPE_UNDEFINED:S = 0x7s

.field static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field static final TYPE_UNSIGNED_LONG:S = 0x4s

.field static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "US-ASCII"

    .line 63
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 64
    sput-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v2, 0x4

    aput v2, v0, v2

    const/4 v3, 0x5

    const/16 v4, 0x8

    aput v4, v0, v3

    const/4 v3, 0x7

    aput v1, v0, v3

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-short p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mTagId:S

    .line 122
    iput-short p2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    .line 123
    iput p3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    .line 124
    iput-boolean p5, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 125
    iput p4, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mIfd:I

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkOverflowForRational([Lcom/android/dialer/callcomposer/camera/exif/Rational;)Z
    .locals 8

    .line 541
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 542
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 543
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 544
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 545
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 4

    .line 520
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-gez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 7

    .line 511
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p1, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    const-wide v5, 0xffffffffL

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedRational([Lcom/android/dialer/callcomposer/camera/exif/Rational;)Z
    .locals 8

    .line 529
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 530
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 531
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 532
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 533
    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5

    .line 502
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const v4, 0xffff

    if-gt v3, v4, :cond_1

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    return-object p0

    :pswitch_1
    const-string p0, "RATIONAL"

    return-object p0

    :pswitch_2
    const-string p0, "LONG"

    return-object p0

    :pswitch_3
    const-string p0, "UNDEFINED"

    return-object p0

    :pswitch_4
    const-string p0, "UNSIGNED_RATIONAL"

    return-object p0

    :pswitch_5
    const-string p0, "UNSIGNED_LONG"

    return-object p0

    :pswitch_6
    const-string p0, "UNSIGNED_SHORT"

    return-object p0

    :pswitch_7
    const-string p0, "ASCII"

    return-object p0

    :pswitch_8
    const-string p0, "UNSIGNED_BYTE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private forceGetValueAsString()Ljava/lang/String;
    .locals 5

    .line 393
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 395
    :cond_0
    instance-of v2, v0, [B

    if-eqz v2, :cond_2

    .line 396
    iget-short v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 397
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v2, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 399
    :cond_1
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    :cond_2
    instance-of v2, v0, [J

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 402
    move-object v1, v0

    check-cast v1, [J

    check-cast v1, [J

    array-length v1, v1

    if-ne v1, v4, :cond_3

    .line 403
    check-cast v0, [J

    check-cast v0, [J

    aget-wide v1, v0, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 405
    :cond_3
    check-cast v0, [J

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 407
    :cond_4
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 408
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v4, :cond_6

    .line 409
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return-object v1

    .line 413
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 416
    :cond_6
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 419
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getElementSize(S)I
    .locals 1

    .line 142
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget p0, v0, p0

    return p0
.end method

.method static isValidIfd(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static isValidType(S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private setValue([BII)Z
    .locals 4

    .line 348
    invoke-direct {p0, p3}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 351
    :cond_0
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    return v1

    .line 354
    :cond_1
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 355
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    iput p3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 557
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    if-eqz v1, :cond_a

    .line 558
    check-cast p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    .line 559
    iget-short v1, p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mTagId:S

    iget-short v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mTagId:S

    if-ne v1, v2, :cond_a

    iget v1, p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    iget v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    if-ne v1, v2, :cond_a

    iget-short v1, p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    iget-short v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 565
    iget-object p1, p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v0

    .line 567
    :cond_2
    instance-of v2, v1, [J

    if-eqz v2, :cond_4

    .line 568
    instance-of v2, p1, [J

    if-nez v2, :cond_3

    return v0

    .line 571
    :cond_3
    check-cast v1, [J

    check-cast v1, [J

    check-cast p1, [J

    check-cast p1, [J

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 572
    :cond_4
    instance-of v2, v1, [Lcom/android/dialer/callcomposer/camera/exif/Rational;

    if-eqz v2, :cond_6

    .line 573
    instance-of v2, p1, [Lcom/android/dialer/callcomposer/camera/exif/Rational;

    if-nez v2, :cond_5

    return v0

    .line 576
    :cond_5
    check-cast v1, [Lcom/android/dialer/callcomposer/camera/exif/Rational;

    check-cast v1, [Lcom/android/dialer/callcomposer/camera/exif/Rational;

    check-cast p1, [Lcom/android/dialer/callcomposer/camera/exif/Rational;

    check-cast p1, [Lcom/android/dialer/callcomposer/camera/exif/Rational;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 577
    :cond_6
    instance-of v2, v1, [B

    if-eqz v2, :cond_8

    .line 578
    instance-of v2, p1, [B

    if-nez v2, :cond_7

    return v0

    .line 581
    :cond_7
    check-cast v1, [B

    check-cast v1, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 583
    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 586
    :cond_9
    iget-object p1, p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    :goto_0
    return v0
.end method

.method forceSetComponentCount(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    return-void
.end method

.method getComponentCount()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method getDataSize()I
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method getDataType()S
    .locals 1

    .line 180
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    return v0
.end method

.method getIfd()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mOffset:I

    return v0
.end method

.method protected getString()Ljava/lang/String;
    .locals 3

    .line 446
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 450
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v2, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    .line 448
    invoke-static {v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getTagId()S
    .locals 1

    .line 164
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method getValueAsInts()[I
    .locals 5

    .line 373
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 375
    :cond_0
    instance-of v2, v0, [J

    if-eqz v2, :cond_1

    .line 376
    check-cast v0, [J

    check-cast v0, [J

    .line 377
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 378
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 379
    aget-wide v3, v0, v2

    long-to-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method getValueAt(I)J
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [J

    if-eqz v1, :cond_0

    .line 432
    check-cast v0, [J

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    .line 433
    :cond_0
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    .line 434
    check-cast v0, [B

    check-cast v0, [B

    aget-byte p1, v0, p1

    int-to-long v0, p1

    return-wide v0

    .line 436
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get integer value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    .line 437
    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method hasDefinedCount()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method hasValue()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 594
    iget-short v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mTagId:S

    .line 595
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    .line 596
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 597
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    .line 598
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mIfd:I

    .line 599
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mOffset:I

    .line 601
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 594
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method setHasDefinedCount(Z)V
    .locals 0

    .line 467
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return-void
.end method

.method setIfd(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mIfd:I

    return-void
.end method

.method protected setOffset(I)V
    .locals 0

    .line 463
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mOffset:I

    return-void
.end method

.method setValue(Ljava/lang/String;)Z
    .locals 5

    .line 283
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return v3

    .line 287
    :cond_0
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 289
    array-length v0, p1

    const/4 v4, 0x1

    if-lez v0, :cond_2

    .line 290
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    if-eqz v0, :cond_3

    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p1

    add-int/2addr v0, v4

    .line 293
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    .line 294
    :cond_2
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    if-ne v0, v4, :cond_3

    new-array p1, v4, [B

    aput-byte v3, p1, v3

    .line 297
    :cond_3
    :goto_0
    array-length v0, p1

    .line 298
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    .line 301
    :cond_4
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    .line 302
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    return v4
.end method

.method setValue([B)Z
    .locals 2

    .line 362
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue([BII)Z

    move-result p1

    return p1
.end method

.method setValue([I)Z
    .locals 5

    .line 223
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 226
    :cond_0
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    .line 231
    :cond_1
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 233
    :cond_2
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 237
    :cond_3
    array-length v0, p1

    new-array v0, v0, [J

    .line 238
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 239
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_4
    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 242
    array-length p1, p1

    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    const/4 p1, 0x1

    return p1
.end method

.method setValue([J)Z
    .locals 3

    .line 257
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 263
    :cond_1
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 264
    array-length p1, p1

    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method setValue([Lcom/android/dialer/callcomposer/camera/exif/Rational;)Z
    .locals 4

    .line 320
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 323
    :cond_0
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    const/16 v2, 0xa

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    .line 326
    :cond_1
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/android/dialer/callcomposer/camera/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 328
    :cond_2
    iget-short v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->checkOverflowForRational([Lcom/android/dialer/callcomposer/camera/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 332
    :cond_3
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 333
    array-length p1, p1

    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mTagId:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "tag id: %04X\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mDataType:S

    .line 610
    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
