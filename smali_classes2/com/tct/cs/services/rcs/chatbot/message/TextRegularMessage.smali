.class public Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;
.super Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;
.source "TextRegularMessage.java"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
