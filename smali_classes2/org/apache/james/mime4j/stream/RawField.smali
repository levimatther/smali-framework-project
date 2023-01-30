.class public final Lorg/apache/james/mime4j/stream/RawField;
.super Ljava/lang/Object;
.source "RawField.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/Field;


# instance fields
.field private final body:Ljava/lang/String;

.field private final delimiterIdx:I

.field private final name:Ljava/lang/String;

.field private final raw:Lorg/apache/james/mime4j/util/ByteSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/util/ByteSequence;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 44
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 45
    iput p2, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 46
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/lang/String;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 4

    .line 63
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v0}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v0

    .line 68
    iget v1, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_1

    .line 69
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-interface {v3, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 72
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelimiterIdx()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
