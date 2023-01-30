.class public Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z = false


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 366
    invoke-direct {p0, p1, v0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 354
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1

    .line 340
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 360
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 347
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 333
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 294
    invoke-direct {p0, p1, v0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 288
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    .line 43
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 49
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    .line 50
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    const/16 v0, 0x8

    .line 51
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    .line 274
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 275
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    sub-int/2addr p3, v1

    .line 276
    iput p3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 278
    iput p4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    .line 279
    new-array p1, p4, [C

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 280
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 281
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 154
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 155
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    return v0
.end method

.method public Done()V
    .locals 1

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 437
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 438
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 7

    .line 59
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    .line 60
    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    .line 61
    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v6

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 71
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v1, v5

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 75
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    .line 79
    iget p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v6

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 86
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v1, v5

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 89
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    .line 92
    iget p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    iget p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    .line 102
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    .line 103
    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    return-void

    :catchall_0
    move-exception p1

    .line 97
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected FillBuff()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 110
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    const/16 v4, 0x800

    if-ne v1, v0, :cond_2

    .line 112
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-le v0, v4, :cond_0

    .line 114
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 115
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 118
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 122
    :cond_2
    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-le v1, v5, :cond_3

    .line 123
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    goto :goto_0

    :cond_3
    sub-int v0, v5, v1

    if-ge v0, v4, :cond_4

    .line 125
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 127
    :cond_4
    iput v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    :cond_5
    :goto_0
    const/4 v0, -0x1

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 138
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    return-void

    .line 134
    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 135
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 142
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 143
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    .line 144
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v0, :cond_7

    .line 145
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 146
    :cond_7
    throw v1
.end method

.method public GetImage()Ljava/lang/String;
    .locals 5

    .line 409
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSuffix(I)[C
    .locals 6

    .line 419
    new-array v0, p1, [C

    .line 421
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    .line 422
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 392
    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 404
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1

    .line 380
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 386
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 398
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 373
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 327
    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 321
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 302
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    add-int/lit8 p3, p3, -0x1

    .line 303
    iput p3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 305
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    if-eqz p1, :cond_0

    array-length p1, p1

    if-eq p4, p1, :cond_1

    .line 307
    :cond_0
    iput p4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    .line 308
    new-array p1, p4, [C

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 309
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 310
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    :cond_1
    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 313
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    const/4 p1, -0x1

    .line 314
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    return-void
.end method

.method protected UpdateLineColumn(C)V
    .locals 4

    .line 162
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 164
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 166
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 167
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    goto :goto_0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_2

    .line 171
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    if-ne p1, v2, :cond_1

    .line 174
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 177
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    :cond_2
    :goto_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 183
    :cond_3
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_1

    .line 186
    :cond_4
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    .line 189
    :cond_5
    iget p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 190
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    rem-int v1, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 196
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    aput v1, p1, v0

    .line 197
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    aput v1, p1, v0

    return-void
.end method

.method public adjustBeginLineColumn(II)V
    .locals 9

    .line 446
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 449
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v0

    .line 451
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v2, v1, :cond_2

    .line 461
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    rem-int v6, v0, v5

    aget v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    rem-int v5, v0, v5

    aget v8, v3, v5

    if-ne v7, v8, :cond_1

    .line 463
    aput p1, v3, v6

    .line 464
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    aget v5, v3, v5

    add-int/2addr v5, v4

    aget v7, v3, v6

    sub-int/2addr v5, v7

    add-int/2addr v4, p2

    .line 465
    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v6

    :cond_2
    if-ge v2, v1, :cond_4

    .line 472
    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v5, v3

    .line 473
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    add-int/2addr p2, v4

    aput p2, p1, v3

    :goto_2
    add-int/lit8 p1, v2, 0x1

    if-ge v2, v1, :cond_4

    .line 477
    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v0, v2

    aget v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    rem-int v2, v0, v2

    aget v2, p2, v2

    if-eq v4, v2, :cond_3

    add-int/lit8 v2, v6, 0x1

    .line 478
    aput v6, p2, v3

    move v6, v2

    goto :goto_3

    .line 480
    :cond_3
    aput v6, p2, v3

    :goto_3
    move v2, p1

    goto :goto_2

    .line 484
    :cond_4
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    aget p1, p1, v3

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    .line 485
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    aget p1, p1, v3

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    return-void
.end method

.method public backup(I)V
    .locals 1

    .line 265
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    .line 266
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 267
    iget p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTabSize(I)I
    .locals 0

    .line 54
    iget p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    return p1
.end method

.method public readChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 205
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    .line 207
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    .line 213
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->FillBuff()V

    .line 216
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    .line 218
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->UpdateLineColumn(C)V

    return v0
.end method

.method protected setTabSize(I)V
    .locals 0

    .line 53
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    return-void
.end method
