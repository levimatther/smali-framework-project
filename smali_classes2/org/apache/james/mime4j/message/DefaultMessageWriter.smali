.class public Lorg/apache/james/mime4j/message/DefaultMessageWriter;
.super Ljava/lang/Object;
.source "DefaultMessageWriter.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/MessageWriter;


# static fields
.field private static final CRLF:[B

.field private static final DASHES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 47
    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->CRLF:[B

    new-array v0, v0, [B

    .line 48
    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->DASHES:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBoundary(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 3

    .line 253
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object p1

    return-object p1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multipart boundary not specified. Mime-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Raw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContentType(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .locals 1

    .line 233
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getParent()Lorg/apache/james/mime4j/dom/Entity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 238
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "Content-Type"

    .line 243
    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    if-eqz p1, :cond_0

    return-object p1

    .line 246
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Content-Type field not specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing header in parent entity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing parent entity in multipart"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    instance-of v0, p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v0, :cond_0

    .line 264
    check-cast p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 265
    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected encodeStream(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->wrapBase64(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1

    .line 225
    :cond_0
    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 226
    invoke-static {p1, p3}, Lorg/apache/james/mime4j/codec/CodecUtil;->wrapQuotedPrintable(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public writeBody(Lorg/apache/james/mime4j/dom/Body;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/Message;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lorg/apache/james/mime4j/dom/Message;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeEntity(Lorg/apache/james/mime4j/dom/Entity;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 70
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/Multipart;

    if-eqz v0, :cond_1

    .line 71
    check-cast p1, Lorg/apache/james/mime4j/dom/Multipart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeMultipart(Lorg/apache/james/mime4j/dom/Multipart;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 72
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/SingleBody;

    if-eqz v0, :cond_2

    .line 73
    check-cast p1, Lorg/apache/james/mime4j/dom/SingleBody;

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/dom/SingleBody;->writeTo(Ljava/io/OutputStream;)V

    :goto_0
    return-void

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported body class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEntity(Lorg/apache/james/mime4j/dom/Entity;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0, v0, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeHeader(Lorg/apache/james/mime4j/dom/Header;Ljava/io/OutputStream;)V

    .line 96
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    instance-of v1, v0, Lorg/apache/james/mime4j/dom/BinaryBody;

    .line 101
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v1}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->encodeStream(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p1

    .line 104
    invoke-virtual {p0, v0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeBody(Lorg/apache/james/mime4j/dom/Body;Ljava/io/OutputStream;)V

    if-eq p1, p2, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing body"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing header"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeField(Lorg/apache/james/mime4j/stream/Field;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/james/mime4j/util/MimeUtil;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 198
    :cond_1
    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 199
    sget-object p1, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->CRLF:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeHeader(Lorg/apache/james/mime4j/dom/Header;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Header;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/stream/Field;

    .line 215
    invoke-virtual {p0, v0, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeField(Lorg/apache/james/mime4j/stream/Field;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 218
    :cond_0
    sget-object p1, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->CRLF:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeMessage(Lorg/apache/james/mime4j/dom/Message;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeEntity(Lorg/apache/james/mime4j/dom/Entity;Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeMultipart(Lorg/apache/james/mime4j/dom/Multipart;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->getContentType(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->getBoundary(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 145
    instance-of v1, p1, Lorg/apache/james/mime4j/message/MultipartImpl;

    if-eqz v1, :cond_0

    .line 146
    move-object v1, p1

    check-cast v1, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/MultipartImpl;->getPreambleRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    .line 147
    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/MultipartImpl;->getEpilogueRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getPreamble()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getPreamble()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 150
    :goto_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getEpilogue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getEpilogue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    :cond_2
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 153
    invoke-direct {p0, v2, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 154
    sget-object v2, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->CRLF:[B

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 157
    :cond_3
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/dom/Entity;

    .line 158
    sget-object v3, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->DASHES:[B

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 159
    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 160
    sget-object v3, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->CRLF:[B

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 162
    invoke-virtual {p0, v2, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeEntity(Lorg/apache/james/mime4j/dom/Entity;Ljava/io/OutputStream;)V

    .line 163
    sget-object v2, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->CRLF:[B

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    .line 166
    :cond_4
    sget-object p1, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->DASHES:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 167
    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 168
    sget-object p1, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->DASHES:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 169
    sget-object p1, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->CRLF:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    if-eqz v1, :cond_5

    .line 171
    invoke-direct {p0, v1, p2}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    :cond_5
    return-void
.end method
