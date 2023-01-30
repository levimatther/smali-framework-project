.class public Lorg/apache/james/mime4j/message/BasicBodyFactory;
.super Ljava/lang/Object;
.source "BasicBodyFactory.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/BodyFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bufferContent(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 53
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input stream may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/BinaryBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/apache/james/mime4j/message/BasicBinaryBody;

    invoke-static {p1}, Lorg/apache/james/mime4j/message/BasicBodyFactory;->bufferContent(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/message/BasicBinaryBody;-><init>([B)V

    return-object v0
.end method

.method public binaryBody([B)Lorg/apache/james/mime4j/dom/BinaryBody;
    .locals 1

    .line 83
    new-instance v0, Lorg/apache/james/mime4j/message/BasicBinaryBody;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/message/BasicBinaryBody;-><init>([B)V

    return-object v0
.end method

.method public textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/TextBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/apache/james/mime4j/message/BasicTextBody;

    invoke-static {p1}, Lorg/apache/james/mime4j/message/BasicBodyFactory;->bufferContent(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/message/BasicTextBody;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public textBody(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/TextBody;
    .locals 1

    .line 79
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/BasicBodyFactory;->textBody(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/dom/TextBody;

    move-result-object p1

    return-object p1
.end method

.method public textBody(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/TextBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 63
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    .line 65
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/message/StringBody;

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/message/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {p1}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public textBody(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/dom/TextBody;
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Lorg/apache/james/mime4j/message/StringBody;

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/message/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
