.class public Lorg/apache/james/mime4j/dom/datetime/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# instance fields
.field private final date:Ljava/util/Date;

.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final second:I

.field private final timeZone:I

.field private final year:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->convertToYear(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 39
    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->convertToDate(IIIIIII)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    .line 40
    iput p2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    .line 41
    iput p3, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    .line 42
    iput p4, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    .line 43
    iput p5, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    .line 44
    iput p6, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    .line 45
    iput p7, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    return-void
.end method

.method public static convertToDate(IIIIIII)Ljava/util/Date;
    .locals 8

    .line 65
    new-instance v7, Ljava/util/GregorianCalendar;

    const-string v0, "GMT+0"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    add-int/lit8 v2, p1, -0x1

    move-object v0, v7

    move v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 66
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    const/4 p1, 0x0

    .line 67
    invoke-virtual {v7, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/high16 p0, -0x80000000

    if-eq p6, p0, :cond_0

    .line 70
    div-int/lit8 p0, p6, 0x64

    mul-int/lit8 p0, p0, 0x3c

    rem-int/lit8 p6, p6, 0x64

    add-int/2addr p0, p6

    const/16 p1, 0xc

    mul-int/lit8 p0, p0, -0x1

    .line 71
    invoke-virtual {v7, p1, p0}, Ljava/util/Calendar;->add(II)V

    .line 74
    :cond_0
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private convertToYear(Ljava/lang/String;)I
    .locals 2

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit16 v0, v0, 0x76c

    return v0

    :cond_1
    if-ltz v0, :cond_2

    const/16 p1, 0x32

    if-ge v0, p1, :cond_2

    add-int/lit16 v0, v0, 0x7d0

    return v0

    :cond_2
    add-int/lit16 v0, v0, 0x76c

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 141
    :cond_2
    check-cast p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;

    .line 142
    iget-object v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    if-nez v2, :cond_3

    .line 143
    iget-object v2, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    if-eqz v2, :cond_4

    return v1

    .line 145
    :cond_3
    iget-object v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 147
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    if-eq v2, v3, :cond_5

    return v1

    .line 149
    :cond_5
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    if-eq v2, v3, :cond_6

    return v1

    .line 151
    :cond_6
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    if-eq v2, v3, :cond_7

    return v1

    .line 153
    :cond_7
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    if-eq v2, v3, :cond_8

    return v1

    .line 155
    :cond_8
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    if-eq v2, v3, :cond_9

    return v1

    .line 157
    :cond_9
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    iget v3, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    if-eq v2, v3, :cond_a

    return v1

    .line 159
    :cond_a
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    iget p1, p1, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    if-eq v2, p1, :cond_b

    return v1

    :cond_b
    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    return v0
.end method

.method public getTimeZone()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 123
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->day:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 124
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->hour:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 125
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->minute:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 126
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->month:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 127
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->second:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 128
    iget v2, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->timeZone:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 129
    iget v1, p0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->year:I

    add-int/2addr v0, v1

    return v0
.end method

.method public print()V
    .locals 2

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getMonth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getDay()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getHour()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getMinute()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getSecond()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getTimeZone()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
