.class public final Lorg/checkerframework/checker/signedness/SignednessUtil;
.super Ljava/lang/Object;
.source "SignednessUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteFromDouble(D)B
    .locals 0

    double-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public static byteFromFloat(F)B
    .locals 0

    float-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public static compareUnsigned(BB)I
    .locals 0

    .line 408
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(B)I

    move-result p1

    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->compareUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static compareUnsigned(II)I
    .locals 1

    const/high16 v0, -0x80000000

    add-int/2addr p0, v0

    add-int/2addr p1, v0

    .line 382
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static compareUnsigned(JJ)I
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr p0, v0

    add-long/2addr p2, v0

    .line 368
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static compareUnsigned(SS)I
    .locals 0

    .line 395
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(S)I

    move-result p0

    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(S)I

    move-result p1

    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->compareUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;)B
    .locals 0

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    return p0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;I)B
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method

.method public static getUnsigned(Ljava/nio/IntBuffer;I)I
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    return p0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;[BII)Ljava/nio/ByteBuffer;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;[B)V
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;)S
    .locals 0

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0
.end method

.method public static intFromDouble(D)I
    .locals 0

    double-to-int p0, p0

    return p0
.end method

.method public static intFromFloat(F)I
    .locals 0

    float-to-int p0, p0

    return p0
.end method

.method public static longFromDouble(D)J
    .locals 0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static longFromFloat(F)J
    .locals 2

    float-to-long v0, p0

    return-wide v0
.end method

.method public static putUnsigned(Ljava/nio/ByteBuffer;B)Ljava/nio/ByteBuffer;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsigned(Ljava/nio/ByteBuffer;IB)Ljava/nio/ByteBuffer;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;II)Ljava/nio/IntBuffer;
    .locals 0

    .line 130
    invoke-virtual {p0, p1, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;[I)Ljava/nio/IntBuffer;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;[III)Ljava/nio/IntBuffer;
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 0

    .line 200
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsignedLong(Ljava/nio/ByteBuffer;IJ)Ljava/nio/ByteBuffer;
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;IS)Ljava/nio/ByteBuffer;
    .locals 0

    .line 180
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static readFullyUnsigned(Ljava/io/RandomAccessFile;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method

.method public static readUnsigned(Ljava/io/RandomAccessFile;[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public static readUnsignedByte(Ljava/io/RandomAccessFile;)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result p0

    return p0
.end method

.method public static readUnsignedChar(Ljava/io/RandomAccessFile;)C
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readChar()C

    move-result p0

    return p0
.end method

.method public static readUnsignedInt(Ljava/io/RandomAccessFile;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    return p0
.end method

.method public static readUnsignedLong(Ljava/io/RandomAccessFile;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static readUnsignedShort(Ljava/io/RandomAccessFile;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    return p0
.end method

.method public static shortFromDouble(D)S
    .locals 0

    double-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static shortFromFloat(F)S
    .locals 0

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static toDouble(B)D
    .locals 2

    .line 577
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(I)D
    .locals 2

    .line 587
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(J)D
    .locals 0

    .line 592
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static toDouble(S)D
    .locals 2

    .line 582
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(B)F
    .locals 2

    .line 557
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    return p0
.end method

.method public static toFloat(I)F
    .locals 2

    .line 567
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    return p0
.end method

.method public static toFloat(J)F
    .locals 0

    .line 572
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    return p0
.end method

.method public static toFloat(S)F
    .locals 2

    .line 562
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    return p0
.end method

.method private static toUnsignedBigInteger(J)Ljava/math/BigInteger;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 493
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    long-to-int p0, p0

    .line 499
    invoke-static {v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 500
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 501
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static toUnsignedInt(C)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static toUnsignedInt(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static toUnsignedLong(B)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(C)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(S)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedShort(B)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static toUnsignedShort(C)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static toUnsignedString(B)Ljava/lang/String;
    .locals 2

    .line 473
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedString(BI)Ljava/lang/String;
    .locals 2

    .line 480
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedString(I)Ljava/lang/String;
    .locals 2

    .line 441
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedString(II)Ljava/lang/String;
    .locals 2

    .line 452
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedString(J)Ljava/lang/String;
    .locals 0

    .line 419
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedString(JI)Ljava/lang/String;
    .locals 0

    .line 430
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedString(S)Ljava/lang/String;
    .locals 2

    .line 459
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnsignedString(SI)Ljava/lang/String;
    .locals 2

    .line 466
    invoke-static {p0}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrapUnsigned([B)Ljava/nio/ByteBuffer;
    .locals 0

    .line 30
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrapUnsigned([BII)Ljava/nio/ByteBuffer;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static writeUnsigned(Ljava/io/RandomAccessFile;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method public static writeUnsignedByte(Ljava/io/RandomAccessFile;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(B)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    return-void
.end method

.method public static writeUnsignedChar(Ljava/io/RandomAccessFile;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(C)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeChar(I)V

    return-void
.end method

.method public static writeUnsignedInt(Ljava/io/RandomAccessFile;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    return-void
.end method

.method public static writeUnsignedLong(Ljava/io/RandomAccessFile;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    return-void
.end method

.method public static writeUnsignedShort(Ljava/io/RandomAccessFile;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(S)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    return-void
.end method
