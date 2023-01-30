.class public Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;
.super Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
.source "UrlAction.java"


# static fields
.field public static final ACTION_openUrl:Ljava/lang/String; = "openUrl"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Landroid/os/Parcel;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "openUrl"

    .line 46
    invoke-direct {p0, v0, p2, p3}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 73
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
