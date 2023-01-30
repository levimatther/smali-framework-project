.class public Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;
.super Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
.source "CalendarAction.java"


# static fields
.field public static final ACTION_createCalendarEvent:Ljava/lang/String; = "createCalendarEvent"


# instance fields
.field private description:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Landroid/os/Parcel;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->startTime:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->endTime:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->title:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "createCalendarEvent"

    .line 69
    invoke-direct {p0, v0, p5, p6}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->startTime:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->endTime:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->title:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 123
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->startTime:Ljava/lang/String;

    const-string v2, "startTime"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->endTime:Ljava/lang/String;

    const-string v2, "endTime"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->startTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->endTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
