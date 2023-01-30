.class public Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;
.super Lorg/apache/james/mime4j/dom/MessageServiceFactory;
.source "MessageServiceFactoryImpl.java"


# instance fields
.field private bodyDescriptorBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

.field private bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

.field private contentDecoding:Ljava/lang/Boolean;

.field private decodeMonitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private flatMode:Ljava/lang/Boolean;

.field private mimeEntityConfig:Lorg/apache/james/mime4j/stream/MimeConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/MessageServiceFactory;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 37
    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->mimeEntityConfig:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 38
    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->bodyDescriptorBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .line 39
    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->decodeMonitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 40
    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->flatMode:Ljava/lang/Boolean;

    .line 41
    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->contentDecoding:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public newMessageBuilder()Lorg/apache/james/mime4j/dom/MessageBuilder;
    .locals 2

    .line 45
    new-instance v0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;-><init>()V

    .line 46
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->setBodyFactory(Lorg/apache/james/mime4j/message/BodyFactory;)V

    .line 47
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->mimeEntityConfig:Lorg/apache/james/mime4j/stream/MimeConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->setMimeEntityConfig(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 48
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->bodyDescriptorBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->setBodyDescriptorBuilder(Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    .line 49
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->flatMode:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->setFlatMode(Z)V

    .line 50
    :cond_3
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->contentDecoding:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->setContentDecoding(Z)V

    .line 51
    :cond_4
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->decodeMonitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->setDecodeMonitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    :cond_5
    return-object v0
.end method

.method public newMessageWriter()Lorg/apache/james/mime4j/dom/MessageWriter;
    .locals 1

    .line 57
    new-instance v0, Lorg/apache/james/mime4j/message/DefaultMessageWriter;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/DefaultMessageWriter;-><init>()V

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "BodyFactory"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Unsupported attribute value type for "

    if-eqz v0, :cond_1

    .line 64
    instance-of v0, p2, Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v0, :cond_0

    .line 65
    check-cast p2, Lorg/apache/james/mime4j/message/BodyFactory;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    return-void

    .line 67
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expected a BodyFactory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "MimeEntityConfig"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    instance-of v0, p2, Lorg/apache/james/mime4j/stream/MimeConfig;

    if-eqz v0, :cond_2

    .line 70
    check-cast p2, Lorg/apache/james/mime4j/stream/MimeConfig;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->mimeEntityConfig:Lorg/apache/james/mime4j/stream/MimeConfig;

    return-void

    .line 72
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expected a MimeConfig"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string v0, "MutableBodyDescriptorFactory"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    instance-of v0, p2, Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    if-eqz v0, :cond_4

    .line 75
    check-cast p2, Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->bodyDescriptorBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    return-void

    .line 77
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expected a MutableBodyDescriptorFactory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string v0, "DecodeMonitor"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 79
    instance-of v0, p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;

    if-eqz v0, :cond_6

    .line 80
    check-cast p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->decodeMonitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    return-void

    .line 82
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expected a DecodeMonitor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string v0, "FlatMode"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ", expected a Boolean"

    if-eqz v0, :cond_9

    .line 84
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->flatMode:Ljava/lang/Boolean;

    return-void

    .line 87
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const-string v0, "ContentDecoding"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 89
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/MessageServiceFactoryImpl;->contentDecoding:Ljava/lang/Boolean;

    return-void

    .line 92
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 95
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
