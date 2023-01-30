.class public Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;
.super Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;
.source "ReplyRegularMessage.java"


# static fields
.field public static final MIMETYPE:Ljava/lang/String; = "application/vnd.gsma.botsuggestion.response.v1.0+json"


# instance fields
.field private display:Ljava/lang/String;

.field private postback:Ljava/lang/String;

.field private relativeMessageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "application/vnd.gsma.botsuggestion.response.v1.0+json"

    .line 46
    invoke-direct {p0, v0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->display:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->postback:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->relativeMessageId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getPostback()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->postback:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeMessageId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->relativeMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->display:Ljava/lang/String;

    const-string v2, "display"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->postback:Ljava/lang/String;

    const-string v2, "postback"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;->relativeMessageId:Ljava/lang/String;

    const-string v2, "relativeMessageId"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
