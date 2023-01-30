.class public abstract Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;
.super Ljava/lang/Object;
.source "RegularMessage.java"


# instance fields
.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getContent()Ljava/lang/String;
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->mimeType:Ljava/lang/String;

    const-string v2, "mimeType"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
