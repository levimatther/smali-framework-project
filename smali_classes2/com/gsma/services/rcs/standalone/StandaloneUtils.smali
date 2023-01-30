.class public Lcom/gsma/services/rcs/standalone/StandaloneUtils;
.super Ljava/lang/Object;
.source "StandaloneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageType(Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->getMessage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 44
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->getMessage()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/standalone/entity/Entity;

    .line 45
    instance-of v0, p0, Lcom/gsma/services/rcs/standalone/entity/TextEntity;

    if-eqz v0, :cond_0

    .line 46
    sget-object p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->TEXT_MESSAGE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    return-object p0

    .line 48
    :cond_0
    instance-of v0, p0, Lcom/gsma/services/rcs/standalone/entity/GeolocEntity;

    if-eqz v0, :cond_1

    .line 49
    sget-object p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->GEOLOC:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    return-object p0

    .line 50
    :cond_1
    instance-of v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/entity/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->GEOLOC:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    return-object p0

    .line 53
    :cond_2
    instance-of p0, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;

    if-eqz p0, :cond_3

    .line 54
    sget-object p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->CHATBOT:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    return-object p0

    .line 56
    :cond_3
    sget-object p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->FILE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    return-object p0

    .line 59
    :cond_4
    sget-object p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->SLIDESHOW:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    return-object p0
.end method

.method public static getStandaloneMessageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;
    .locals 2

    .line 71
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    invoke-direct {v0}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;-><init>()V

    .line 72
    sget-object v1, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->TEXT_MESSAGE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance p1, Lcom/gsma/services/rcs/standalone/entity/TextEntity;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/standalone/entity/TextEntity;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->addMessage(Lcom/gsma/services/rcs/standalone/entity/Entity;)V

    return-object v0

    .line 79
    :cond_0
    sget-object v1, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->GEOLOC:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance p1, Lcom/gsma/services/rcs/standalone/entity/GeolocEntity;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/standalone/entity/GeolocEntity;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->addMessage(Lcom/gsma/services/rcs/standalone/entity/Entity;)V

    return-object v0

    .line 86
    :cond_1
    sget-object v1, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->CHATBOT:Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    invoke-virtual {v1, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    new-instance v1, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;

    invoke-direct {v1, p0, p1}, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->addMessage(Lcom/gsma/services/rcs/standalone/entity/Entity;)V

    return-object v0

    .line 92
    :cond_2
    new-instance p1, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 94
    new-instance p0, Lcom/gsma/services/rcs/standalone/entity/EntityParser;

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/standalone/entity/EntityParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->parse()V

    .line 97
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->getEntities()Ljava/util/List;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/standalone/entity/Entity;

    .line 99
    invoke-virtual {v0, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->addMessage(Lcom/gsma/services/rcs/standalone/entity/Entity;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 103
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
