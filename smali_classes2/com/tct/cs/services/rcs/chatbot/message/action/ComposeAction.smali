.class public Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;
.super Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
.source "ComposeAction.java"


# static fields
.field public static final ACTION_RecordingMessage:Ljava/lang/String; = "composeRecordingMessage"

.field public static final ACTION_TextMessage:Ljava/lang/String; = "composeTextMessage"


# instance fields
.field private phoneNumber:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Landroid/os/Parcel;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->phoneNumber:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p4, p5}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->phoneNumber:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 115
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->phoneNumber:Ljava/lang/String;

    const-string v2, "phoneNumber"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
