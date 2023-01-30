.class public Lorg/apache/james/mime4j/message/DefaultMessageBuilder;
.super Ljava/lang/Object;
.source "DefaultMessageBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/MessageBuilder;


# instance fields
.field private bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

.field private bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

.field private config:Lorg/apache/james/mime4j/stream/MimeConfig;

.field private contentDecoding:Z

.field private fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field

.field private flatMode:Z

.field private monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    .line 52
    iput-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 53
    iput-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 54
    iput-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->contentDecoding:Z

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->flatMode:Z

    .line 57
    iput-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    return-void
.end method


# virtual methods
.method public copy(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Body;
    .locals 1

    if-eqz p1, :cond_3

    .line 192
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/Message;

    if-eqz v0, :cond_0

    .line 193
    check-cast p1, Lorg/apache/james/mime4j/dom/Message;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;

    move-result-object p1

    return-object p1

    .line 195
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/Multipart;

    if-eqz v0, :cond_1

    .line 196
    check-cast p1, Lorg/apache/james/mime4j/dom/Multipart;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;

    move-result-object p1

    return-object p1

    .line 198
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/SingleBody;

    if-eqz v0, :cond_2

    .line 199
    check-cast p1, Lorg/apache/james/mime4j/dom/SingleBody;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/dom/SingleBody;->copy()Lorg/apache/james/mime4j/dom/SingleBody;

    move-result-object p1

    return-object p1

    .line 201
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported body class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Body is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;
    .locals 2

    .line 102
    new-instance v0, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    .line 103
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Header;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/stream/Field;

    .line 104
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/HeaderImpl;->addField(Lorg/apache/james/mime4j/stream/Field;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;
    .locals 2

    .line 223
    new-instance v0, Lorg/apache/james/mime4j/message/MessageImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/MessageImpl;-><init>()V

    .line 224
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/MessageImpl;->setHeader(Lorg/apache/james/mime4j/dom/Header;)V

    .line 227
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Body;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/MessageImpl;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    :cond_1
    return-object v0
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;
    .locals 3

    .line 156
    new-instance v0, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/MultipartImpl;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/dom/Entity;

    .line 158
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Entity;)Lorg/apache/james/mime4j/message/BodyPart;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/message/MultipartImpl;->addBodyPart(Lorg/apache/james/mime4j/dom/Entity;)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getPreamble()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/MultipartImpl;->setPreamble(Ljava/lang/String;)V

    .line 161
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getEpilogue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/MultipartImpl;->setEpilogue(Ljava/lang/String;)V

    return-object v0
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Entity;)Lorg/apache/james/mime4j/message/BodyPart;
    .locals 2

    .line 127
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 128
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setHeader(Lorg/apache/james/mime4j/dom/Header;)V

    .line 131
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Body;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/BodyPart;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    :cond_1
    return-object v0
.end method

.method public newHeader()Lorg/apache/james/mime4j/dom/Header;
    .locals 1

    .line 234
    new-instance v0, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    return-object v0
.end method

.method public newHeader(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;

    move-result-object p1

    return-object p1
.end method

.method public newMessage()Lorg/apache/james/mime4j/dom/Message;
    .locals 1

    .line 283
    new-instance v0, Lorg/apache/james/mime4j/message/MessageImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/MessageImpl;-><init>()V

    return-object v0
.end method

.method public newMessage(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;
    .locals 0

    .line 287
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;

    move-result-object p1

    return-object p1
.end method

.method public newMultipart(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Multipart;
    .locals 1

    .line 242
    new-instance v0, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/message/MultipartImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newMultipart(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;

    move-result-object p1

    return-object p1
.end method

.method public parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Header;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>()V

    .line 251
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result v0

    .line 252
    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    if-eqz v1, :cond_1

    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    .line 254
    :goto_2
    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    if-eqz v1, :cond_3

    move-object v5, v1

    goto :goto_4

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {}, Lorg/apache/james/mime4j/field/LenientFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v0

    :goto_3
    move-object v5, v0

    .line 256
    :goto_4
    new-instance v0, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    .line 257
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>()V

    .line 258
    new-instance v8, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;-><init>(Lorg/apache/james/mime4j/message/DefaultMessageBuilder;Lorg/apache/james/mime4j/parser/MimeStreamParser;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/message/HeaderImpl;)V

    invoke-virtual {v1, v8}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 275
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 277
    new-instance v0, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v0
.end method

.method public parseMessage(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .line 292
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/message/MessageImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/MessageImpl;-><init>()V

    .line 293
    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-direct {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>()V

    .line 294
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result v2

    .line 295
    iget-object v3, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    sget-object v3, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 297
    :goto_1
    iget-object v4, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    if-eqz v4, :cond_3

    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    goto :goto_3

    :cond_3
    new-instance v4, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    if-eqz v6, :cond_4

    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-static {}, Lorg/apache/james/mime4j/field/LenientFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v2

    :goto_2
    invoke-direct {v4, v5, v2, v3}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    move-object v2, v4

    .line 300
    :goto_3
    iget-object v4, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    goto :goto_4

    :cond_6
    new-instance v4, Lorg/apache/james/mime4j/message/BasicBodyFactory;

    invoke-direct {v4}, Lorg/apache/james/mime4j/message/BasicBodyFactory;-><init>()V

    .line 301
    :goto_4
    new-instance v5, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v5, v1, v3, v2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    .line 304
    new-instance v1, Lorg/apache/james/mime4j/message/EntityBuilder;

    invoke-direct {v1, v0, v4}, Lorg/apache/james/mime4j/message/EntityBuilder;-><init>(Lorg/apache/james/mime4j/dom/Entity;Lorg/apache/james/mime4j/message/BodyFactory;)V

    invoke-virtual {v5, v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 305
    iget-boolean v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->contentDecoding:Z

    invoke-virtual {v5, v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentDecoding(Z)V

    .line 306
    iget-boolean v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->flatMode:Z

    if-eqz v1, :cond_7

    .line 307
    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setFlat()V

    goto :goto_5

    .line 309
    :cond_7
    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setRecurse()V

    .line 311
    :goto_5
    invoke-virtual {v5, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 314
    new-instance v0, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v0
.end method

.method public setBodyDescriptorBuilder(Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    return-void
.end method

.method public setBodyFactory(Lorg/apache/james/mime4j/message/BodyFactory;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    return-void
.end method

.method public setContentDecoding(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->contentDecoding:Z

    return-void
.end method

.method public setDecodeMonitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    return-void
.end method

.method public setFieldParser(Lorg/apache/james/mime4j/dom/FieldParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method public setFlatMode(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->flatMode:Z

    return-void
.end method

.method public setMimeEntityConfig(Lorg/apache/james/mime4j/stream/MimeConfig;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    return-void
.end method
