.class public Lorg/apache/james/mime4j/stream/RawFieldParser;
.super Ljava/lang/Object;
.source "RawFieldParser.java"


# static fields
.field static final COLON:Ljava/util/BitSet;

.field public static final DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

.field static final EQUAL_OR_SEMICOLON:Ljava/util/BitSet;

.field static final SEMICOLON:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x3a

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 47
    invoke-static {v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/stream/RawFieldParser;->COLON:Ljava/util/BitSet;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 48
    fill-array-data v1, :array_0

    invoke-static {v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/stream/RawFieldParser;->EQUAL_OR_SEMICOLON:Ljava/util/BitSet;

    new-array v0, v0, [I

    const/16 v1, 0x3b

    aput v1, v0, v3

    .line 49
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->SEMICOLON:Ljava/util/BitSet;

    .line 51
    new-instance v0, Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    return-void

    :array_0
    .array-data 4
        0x3d
        0x3b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs INIT_BITSET([I)Ljava/util/BitSet;
    .locals 3

    .line 40
    new-instance v0, Ljava/util/BitSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    .line 41
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 42
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public copyContent(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 319
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v0

    .line 320
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 321
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 323
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eqz p3, :cond_0

    .line 324
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 329
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    return-void
.end method

.method public copyQuotedContent(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/lang/StringBuilder;)V
    .locals 9

    .line 344
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v0

    .line 348
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 349
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getUpperBound()I

    move-result v2

    .line 350
    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v1, v2, :cond_7

    .line 358
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    const/16 v8, 0x5c

    if-eqz v6, :cond_3

    if-eq v7, v4, :cond_2

    if-eq v7, v8, :cond_2

    .line 361
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    :cond_2
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_1

    :cond_3
    if-ne v7, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-ne v7, v8, :cond_5

    move v6, v3

    goto :goto_1

    :cond_5
    const/16 v8, 0xd

    if-eq v7, v8, :cond_6

    const/16 v8, 0xa

    if-eq v7, v8, :cond_6

    .line 373
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_7
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    return-void
.end method

.method public parseField(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/stream/RawField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance v1, Lorg/apache/james/mime4j/stream/ParserCursor;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 63
    sget-object v2, Lorg/apache/james/mime4j/stream/RawFieldParser;->COLON:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    new-instance v3, Lorg/apache/james/mime4j/stream/RawField;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    invoke-direct {v3, p1, v1, v2, v0}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;ILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 65
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MIME field: no name/value separator found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseParameter(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/stream/NameValuePair;
    .locals 4

    .line 132
    sget-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->EQUAL_OR_SEMICOLON:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 134
    new-instance p1, Lorg/apache/james/mime4j/stream/NameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/james/mime4j/stream/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 136
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v1

    .line 137
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_1

    .line 139
    new-instance p1, Lorg/apache/james/mime4j/stream/NameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/james/mime4j/stream/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 141
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/stream/RawFieldParser;->SEMICOLON:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 145
    :cond_2
    new-instance p2, Lorg/apache/james/mime4j/stream/NameValuePair;

    invoke-direct {p2, v0, p1}, Lorg/apache/james/mime4j/stream/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public parseParameters(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/util/ByteSequence;",
            "Lorg/apache/james/mime4j/stream/ParserCursor;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/stream/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    .line 117
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseParameter(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/stream/NameValuePair;

    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public parseRawBody(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/RawBody;
    .locals 3

    .line 77
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getDelimiterIdx()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Lorg/apache/james/mime4j/stream/RawBody;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Lorg/apache/james/mime4j/stream/RawBody;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    .line 84
    :cond_0
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-interface {v0}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v2

    invoke-direct {p1, v1, v2}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 88
    invoke-virtual {p0, v0, p1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseRawBody(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/stream/RawBody;

    move-result-object p1

    return-object p1
.end method

.method public parseRawBody(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/stream/RawBody;
    .locals 2

    .line 98
    sget-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->SEMICOLON:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance p1, Lorg/apache/james/mime4j/stream/RawBody;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, p2}, Lorg/apache/james/mime4j/stream/RawBody;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    .line 102
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 103
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseParameters(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Ljava/util/List;

    move-result-object p1

    .line 104
    new-instance p2, Lorg/apache/james/mime4j/stream/RawBody;

    invoke-direct {p2, v0, p1}, Lorg/apache/james/mime4j/stream/RawBody;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

.method public parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 5

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    .line 160
    :goto_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_4

    .line 161
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    .line 168
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->copyContent(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 177
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 6

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    .line 193
    :goto_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_6

    .line 194
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eqz p3, :cond_0

    .line 195
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 197
    :cond_0
    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_1

    :cond_2
    const/16 v4, 0x22

    const/16 v5, 0x20

    if-ne v3, v4, :cond_4

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-eqz v2, :cond_3

    .line 204
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->copyQuotedContent(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 209
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    if-eqz v2, :cond_5

    .line 210
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->copyContent(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 216
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public skipAllWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V
    .locals 2

    .line 295
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 297
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 300
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V
    .locals 10

    .line 250
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v0

    .line 254
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 255
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getUpperBound()I

    move-result v2

    .line 256
    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    const/4 v5, 0x0

    move v7, v3

    move v6, v5

    :goto_0
    if-ge v1, v2, :cond_7

    .line 266
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    const/16 v9, 0x5c

    if-ne v8, v9, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    if-ne v8, v4, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/16 v9, 0x29

    if-ne v8, v9, :cond_5

    add-int/lit8 v7, v7, -0x1

    :cond_5
    :goto_1
    if-gtz v7, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_7
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    return-void
.end method

.method public skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V
    .locals 4

    .line 227
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v0

    .line 228
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 229
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 231
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 232
    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    return-void
.end method
