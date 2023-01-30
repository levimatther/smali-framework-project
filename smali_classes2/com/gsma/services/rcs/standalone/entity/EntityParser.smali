.class public Lcom/gsma/services/rcs/standalone/entity/EntityParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "EntityParser.java"


# instance fields
.field private entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/standalone/entity/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputSource:Lorg/xml/sax/InputSource;


# direct methods
.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->mInputSource:Lorg/xml/sax/InputSource;

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    const-string v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    const-string v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method public getEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/standalone/entity/Entity;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->entities:Ljava/util/List;

    return-object v0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->mInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method

.method public startDocument()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->entities:Ljava/util/List;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 55
    const-class p1, Lcom/gsma/services/rcs/standalone/entity/TextEntity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "content"

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/gsma/services/rcs/standalone/entity/TextEntity;

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/standalone/entity/TextEntity;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->entities:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    const-class p1, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "mimetype"

    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    new-instance p3, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;

    invoke-direct {p3, p2, p1}, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->entities:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    const-class p1, Lcom/gsma/services/rcs/standalone/entity/FileEntity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "name"

    .line 67
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "size"

    .line 68
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 70
    new-instance p4, Lcom/gsma/services/rcs/standalone/entity/FileEntity;

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/gsma/services/rcs/standalone/entity/FileEntity;-><init>(Landroid/net/Uri;)V

    .line 72
    invoke-virtual {p4, p2}, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->setMimeType(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p4, p3}, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->setName(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p4, v0, v1}, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->setSize(J)V

    .line 75
    iget-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/EntityParser;->entities:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
