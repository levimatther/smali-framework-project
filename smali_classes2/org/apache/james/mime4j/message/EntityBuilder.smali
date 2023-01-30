.class Lorg/apache/james/mime4j/message/EntityBuilder;
.super Ljava/lang/Object;
.source "EntityBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/ContentHandler;


# instance fields
.field private final bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

.field private final entity:Lorg/apache/james/mime4j/dom/Entity;

.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/dom/Entity;Lorg/apache/james/mime4j/message/BodyFactory;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->entity:Lorg/apache/james/mime4j/dom/Entity;

    .line 53
    iput-object p2, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 54
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' found \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 216
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 217
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/stream/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const-class v0, Lorg/apache/james/mime4j/dom/Entity;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 150
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lorg/apache/james/mime4j/message/BodyFactory;->textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/TextBody;

    move-result-object p1

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-interface {p1, p2}, Lorg/apache/james/mime4j/message/BodyFactory;->binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/BinaryBody;

    move-result-object p1

    .line 156
    :goto_0
    iget-object p2, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/james/mime4j/dom/Entity;

    .line 157
    invoke-interface {p2, p1}, Lorg/apache/james/mime4j/dom/Entity;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    return-void
.end method

.method public endBodyPart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 182
    const-class v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 183
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 106
    const-class v0, Lorg/apache/james/mime4j/dom/Header;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 107
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/Header;

    .line 108
    const-class v1, Lorg/apache/james/mime4j/dom/Entity;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 109
    iget-object v1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/Entity;

    invoke-interface {v1, v0}, Lorg/apache/james/mime4j/dom/Entity;->setHeader(Lorg/apache/james/mime4j/dom/Header;)V

    return-void
.end method

.method public endMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 83
    const-class v0, Lorg/apache/james/mime4j/dom/Message;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endMultipart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const-class v0, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 191
    invoke-static {p1}, Lorg/apache/james/mime4j/message/EntityBuilder;->loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/MultipartImpl;->setEpilogueRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V

    return-void
.end method

.method public field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 98
    const-class v0, Lorg/apache/james/mime4j/dom/Header;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 99
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/Header;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->addField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const-class v0, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 200
    invoke-static {p1}, Lorg/apache/james/mime4j/message/EntityBuilder;->loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/MultipartImpl;->setPreambleRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V

    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startBodyPart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 171
    const-class v0, Lorg/apache/james/mime4j/dom/Multipart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 173
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 174
    iget-object v1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/Multipart;

    invoke-interface {v1, v0}, Lorg/apache/james/mime4j/dom/Multipart;->addBodyPart(Lorg/apache/james/mime4j/dom/Entity;)V

    .line 175
    iget-object v1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->entity:Lorg/apache/james/mime4j/dom/Entity;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    const-class v0, Lorg/apache/james/mime4j/dom/Entity;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 73
    new-instance v0, Lorg/apache/james/mime4j/message/MessageImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/MessageImpl;-><init>()V

    .line 74
    iget-object v1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/Entity;

    invoke-interface {v1, v0}, Lorg/apache/james/mime4j/dom/Entity;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    .line 75
    iget-object v1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public startMultipart(Lorg/apache/james/mime4j/stream/BodyDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 116
    const-class v0, Lorg/apache/james/mime4j/dom/Entity;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/EntityBuilder;->expect(Ljava/lang/Class;)V

    .line 118
    iget-object v0, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/Entity;

    .line 119
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getSubType()Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance v1, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/message/MultipartImpl;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Entity;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    .line 122
    iget-object p1, p0, Lorg/apache/james/mime4j/message/EntityBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
