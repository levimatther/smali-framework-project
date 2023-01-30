.class public Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;
.super Ljava/lang/Object;
.source "DefaultFieldBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/FieldBuilder;


# static fields
.field private static final FIELD_CHARS:Ljava/util/BitSet;


# instance fields
.field private final buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private final maxlen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->FIELD_CHARS:Ljava/util/BitSet;

    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 38
    sget-object v1, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->FIELD_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 41
    sget-object v1, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->FIELD_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 50
    iput p1, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->maxlen:I

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/io/MaxHeaderLengthLimitException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 62
    iget v1, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->maxlen:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->maxlen:I

    if-ge v1, v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/io/MaxHeaderLengthLimitException;

    const-string v0, "Maximum header length limit exceeded"

    invoke-direct {p1, v0}, Lorg/apache/james/mime4j/io/MaxHeaderLengthLimitException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    return-void
.end method

.method public build()Lorg/apache/james/mime4j/stream/RawField;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 71
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 74
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 78
    :cond_1
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>([BIZ)V

    .line 79
    sget-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseField(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/RawField;->getName()Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 83
    sget-object v4, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->FIELD_CHARS:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_2
    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIME field name contains illegal characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/RawField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object v0
.end method

.method public getRaw()Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    return-void
.end method
