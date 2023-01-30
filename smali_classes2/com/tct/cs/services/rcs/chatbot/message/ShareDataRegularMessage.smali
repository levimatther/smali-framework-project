.class public Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;
.super Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;
.source "ShareDataRegularMessage.java"


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.botsharedclientdata.v1.0+json"


# instance fields
.field private deviceInfo:Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;)V
    .locals 1

    const-string v0, "application/vnd.gsma.botsharedclientdata.v1.0+json"

    .line 42
    invoke-direct {p0, v0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;->deviceInfo:Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;->deviceInfo:Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;->deviceInfo:Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceModel"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;->deviceInfo:Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->getPlatformVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platformVersion"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;->deviceInfo:Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->getClientVendor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientVendor"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;->deviceInfo:Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->getClientVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientVersion"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;->deviceInfo:Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->getBatteryRemainingMinutes()Ljava/lang/String;

    move-result-object v1

    const-string v2, "batteryRemainingMinutes"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
