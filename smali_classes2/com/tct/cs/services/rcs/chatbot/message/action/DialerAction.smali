.class public Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;
.super Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
.source "DialerAction.java"


# static fields
.field public static final ACTION_dialEnrichedCall:Ljava/lang/String; = "dialEnrichedCall"

.field public static final ACTION_dialPhoneNumber:Ljava/lang/String; = "dialPhoneNumber"

.field public static final ACTION_dialVideoCall:Ljava/lang/String; = "dialVideoCall"


# instance fields
.field private fallbackUri:Ljava/lang/String;

.field private final phoneNumber:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Landroid/os/Parcel;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->phoneNumber:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->subject:Ljava/lang/String;

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->fallbackUri:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p5, p6}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->phoneNumber:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->subject:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->fallbackUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFallbackUri()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->fallbackUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 148
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->phoneNumber:Ljava/lang/String;

    const-string v2, "phoneNumber"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->subject:Ljava/lang/String;

    const-string v2, "subject"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->fallbackUri:Ljava/lang/String;

    const-string v2, "fallbackUri"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 157
    invoke-super {p0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->subject:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->subject:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    :goto_0
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->fallbackUri:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;->fallbackUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
