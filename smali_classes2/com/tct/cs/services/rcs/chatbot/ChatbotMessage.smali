.class public Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
.super Ljava/lang/Object;
.source "ChatbotMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ANONYMOUSMODE:Ljava/lang/String; = "anonymousMode"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIMETYPE:Ljava/lang/String; = "message/chatbot"


# instance fields
.field private isAnonymousMode:Z

.field private mBotId:Lcom/tct/cs/services/rcs/chatbot/BotId;

.field private mContributionId:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

.field private mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

.field private mMessageId:Ljava/lang/String;

.field private mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

.field private mRichCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

.field private mTimestamp:J

.field private mTrafficType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTrafficType:Ljava/lang/String;

    .line 308
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/chatbot/BotId;

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mBotId:Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mMessageId:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTimestamp:J

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mContributionId:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mConversationId:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->isAnonymousMode:Z

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTrafficType:Ljava/lang/String;

    .line 318
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->generateChatbotMessage(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1

    .line 319
    iget-object v0, p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    .line 320
    iget-object v0, p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    .line 321
    iget-object v0, p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRichCards:Ljava/util/List;

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRichCards:Ljava/util/List;

    .line 322
    iget-object p1, p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mSuggestChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mSuggestChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/tct/cs/services/rcs/chatbot/message/Layout;Ljava/util/List;Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tct/cs/services/rcs/chatbot/message/Layout;",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;",
            ">;",
            "Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;",
            "Z)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTrafficType:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    .line 71
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRichCards:Ljava/util/List;

    .line 72
    iput-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mSuggestChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    .line 73
    iput-boolean p4, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->isAnonymousMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;Z)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTrafficType:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    .line 58
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mSuggestChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    .line 59
    iput-boolean p3, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->isAnonymousMode:Z

    return-void
.end method

.method private getXmlContent()Ljava/lang/String;
    .locals 3

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 112
    iget-boolean v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->isAnonymousMode:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "anonymousMode"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTrafficType:Ljava/lang/String;

    const-string v2, "trafficType"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRichCards:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    .line 123
    invoke-virtual {v2}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mSuggestChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 129
    :cond_3
    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBotId()Lcom/tct/cs/services/rcs/chatbot/BotId;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mBotId:Lcom/tct/cs/services/rcs/chatbot/BotId;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->getXmlContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContributionId()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mContributionId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    return-object v0
.end method

.method public getLayout()Lcom/tct/cs/services/rcs/chatbot/message/Layout;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->isRegularMessage()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.gsma.botmessage.v1.0+json"

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    invoke-virtual {v0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegularMessage()Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    return-object v0
.end method

.method public getRichCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRichCards:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestChipList()Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mSuggestChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 249
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTimestamp:J

    return-wide v0
.end method

.method public getTrafficType()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTrafficType:Ljava/lang/String;

    return-object v0
.end method

.method public haveSuggestChip()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mSuggestChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnonymousMode()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->isAnonymousMode:Z

    return v0
.end method

.method public isRegularMessage()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleRichCard()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tct/cs/services/rcs/chatbot/exception/RegularMessageException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->isRegularMessage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mRichCards:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 175
    :cond_1
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/exception/RegularMessageException;

    const-string v1, "The message has no Rich Card"

    invoke-direct {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/exception/RegularMessageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/exception/RegularMessageException;

    const-string v1, "The message is Regular message!"

    invoke-direct {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/exception/RegularMessageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBotId(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mBotId:Lcom/tct/cs/services/rcs/chatbot/BotId;

    return-void
.end method

.method public setContributionId(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mContributionId:Ljava/lang/String;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public setDirection(Lcom/gsma/services/rcs/RcsService$Direction;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mMessageId:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 253
    iput-wide p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTimestamp:J

    return-void
.end method

.method public setTrafficType(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTrafficType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mBotId:Lcom/tct/cs/services/rcs/chatbot/BotId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 337
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    if-nez p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/gsma/services/rcs/RcsService$Direction;->toInt()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mMessageId:Ljava/lang/String;

    const-string v0, ""

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-wide v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTimestamp:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 340
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mContributionId:Ljava/lang/String;

    if-nez p2, :cond_2

    move-object p2, v0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mConversationId:Ljava/lang/String;

    if-nez p2, :cond_3

    move-object p2, v0

    :cond_3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-boolean p2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->isAnonymousMode:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->mTrafficType:Ljava/lang/String;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->getXmlContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
