.class public Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;
.super Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;
.source "GeolocRegularMessage.java"


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.rcspushlocation+xml"


# instance fields
.field private geoloc:Lcom/gsma/services/rcs/Geoloc;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/Geoloc;)V
    .locals 1

    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    .line 30
    invoke-direct {p0, v0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;->geoloc:Lcom/gsma/services/rcs/Geoloc;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;->geoloc:Lcom/gsma/services/rcs/Geoloc;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/Geoloc;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeoloc()Lcom/gsma/services/rcs/Geoloc;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;->geoloc:Lcom/gsma/services/rcs/Geoloc;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 56
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;->geoloc:Lcom/gsma/services/rcs/Geoloc;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/Geoloc;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
