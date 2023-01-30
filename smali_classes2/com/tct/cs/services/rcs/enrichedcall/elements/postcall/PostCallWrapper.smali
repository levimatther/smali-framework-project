.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;
.source "PostCallWrapper.java"


# static fields
.field private static mPostCallWrapper:Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;

.field private static final object:Ljava/lang/Object;

.field private static sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PostCallWrapper"

    .line 64
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->object:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;-><init>()V

    return-void
.end method

.method private getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3

    .line 96
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 98
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 99
    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_1

    .line 100
    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    .line 103
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;
    .locals 2

    .line 74
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->mPostCallWrapper:Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->mPostCallWrapper:Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;

    invoke-direct {v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;-><init>()V

    sput-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->mPostCallWrapper:Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;

    .line 81
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->mPostCallWrapper:Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;

    return-object v0

    :catchall_0
    move-exception v1

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getXml(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "rcsenvelope"

    .line 111
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "xmlns"

    const-string v2, "urn:gsma:params:xml:ns:rcs:rcs:calldata"

    .line 112
    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rcscalldata"

    .line 114
    invoke-virtual {p0, v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "note"

    .line 115
    invoke-virtual {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 116
    invoke-interface {v2, p1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 117
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 118
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method protected parseElement(Lorg/w3c/dom/Document;)Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 87
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "note"

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 90
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "parse data not found note message"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic parseElement(Lorg/w3c/dom/Document;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->parseElement(Lorg/w3c/dom/Document;)Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;

    move-result-object p1

    return-object p1
.end method
