.class public Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;
.super Ljava/lang/Object;
.source "ChatbotMessageParse2.java"


# instance fields
.field private mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

.field private mDocument:Lorg/w3c/dom/Document;

.field private mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

.field private mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

.field private mRichCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRichCardList:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mDocument:Lorg/w3c/dom/Document;

    return-void
.end method

.method private formatSize(Ljava/lang/String;)I
    .locals 1

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 291
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private parseAction(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
    .locals 13

    .line 211
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 212
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "postback"

    const-string v3, "displayText"

    if-eqz v1, :cond_0

    const-string v0, "startTime"

    .line 213
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "endTime"

    .line 214
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "title"

    .line 215
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "description"

    .line 216
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 218
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 219
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 220
    :cond_0
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "phoneNumber"

    const-string v5, "action"

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "type"

    .line 223
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 224
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 225
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 227
    :cond_1
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/action/DeviceAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    new-instance v1, Lcom/tct/cs/services/rcs/chatbot/message/action/DeviceAction;

    invoke-direct {v1, v0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/DeviceAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 231
    :cond_2
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "subject"

    .line 234
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 235
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 236
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "fallbackUri"

    .line 237
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 238
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 239
    :cond_3
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/action/ReplyAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    new-instance v1, Lcom/tct/cs/services/rcs/chatbot/message/action/ReplyAction;

    invoke-direct {v1, v0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/ReplyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 243
    :cond_4
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/action/SettingsAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/action/SettingsAction;

    invoke-direct {v2, v0, v1, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/SettingsAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 249
    :cond_5
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 250
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 252
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "showLocation"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "latitude"

    .line 254
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "longitude"

    .line 255
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "label"

    .line 256
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "fallbackUrl"

    .line 257
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "query"

    .line 258
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_6
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;

    invoke-direct {v0, p1, v8, v9, v10}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_7
    const-string p1, "requestLocationPush"

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 268
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;

    invoke-direct {p1, v9, v10}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 270
    :cond_8
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "url"

    .line 271
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;

    invoke-direct {v2, v0, v1, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseLayout(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 153
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;-><init>()V

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    const-string v1, "cardOrientation"

    .line 154
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->setCardOrientation(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    const-string v1, "cardWidth"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->setCardWidth(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    const-string v1, "imageAlignment"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->setImageAlignment(Ljava/lang/String;)V

    return-void
.end method

.method private parseMessageElement(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 75
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseLayout(Lorg/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 78
    :cond_0
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseRichCardMessage(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 80
    :cond_1
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseMessageSuggestedChipList(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 82
    :cond_2
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseRegularMessage(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 84
    :cond_3
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseRegularMessage(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 86
    :cond_4
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseRegularMessage(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 88
    :cond_5
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseRegularMessage(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 90
    :cond_6
    const-class v1, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseRegularMessage(Lorg/w3c/dom/Element;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private parseMessageSuggestedChipList(Lorg/w3c/dom/Element;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseSuggestedChipList(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    return-void
.end method

.method private parseRegularMessage(Lorg/w3c/dom/Element;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 96
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 97
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "content"

    if-eqz v3, :cond_0

    const-string v2, "mimeType"

    .line 98
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v3, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;

    invoke-direct {v3, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    goto/16 :goto_0

    .line 101
    :cond_0
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;

    new-instance v3, Lcom/gsma/services/rcs/Geoloc;

    invoke-direct {v3, v1}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;-><init>(Lcom/gsma/services/rcs/Geoloc;)V

    iput-object v2, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    goto/16 :goto_0

    .line 104
    :cond_1
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "deviceModel"

    .line 105
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "platformVersion"

    .line 106
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clientVendor"

    .line 107
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "clientVersion"

    .line 108
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "batteryRemainingMinutes"

    .line 109
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    new-instance v6, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    invoke-direct {v6}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;-><init>()V

    .line 111
    invoke-virtual {v6, v2}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6, v3}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setPlatformVersion(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v6, v4}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setClientVendor(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v6, v5}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setClientVersion(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v6, v1}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setBatteryRemainingMinutes(Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;

    invoke-direct {v1, v6}, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;-><init>(Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;)V

    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    goto/16 :goto_0

    .line 117
    :cond_2
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "thumbnailSize"

    .line 120
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "thumbnailType"

    .line 121
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "thumbnailExpires"

    .line 122
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v3, "thumbnailUrl"

    .line 123
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "thumbnailUri"

    .line 124
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fileSize"

    .line 125
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "fileType"

    .line 126
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "fileExpires"

    .line 127
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v4, "fileUrl"

    .line 128
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "fileUri"

    .line 129
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v4, "fileName"

    .line 130
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 132
    new-instance v1, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-direct {v1}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;-><init>()V

    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    .line 133
    move-object v4, v1

    check-cast v4, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-direct {v0, v2}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->formatSize(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {v4 .. v9}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->setThumbnailAttr(ILjava/lang/String;JLjava/lang/String;)V

    .line 135
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    move-object v11, v1

    check-cast v11, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-direct {v0, v10}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->formatSize(Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {v11 .. v17}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->setFileAttr(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->setThumbnailUri(Landroid/net/Uri;)V

    .line 140
    :cond_3
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->setFileUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 144
    :cond_4
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "display"

    .line 145
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "postback"

    .line 146
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "relativeMessageId"

    .line 147
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v4, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;

    invoke-direct {v4, v2, v3, v1}, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    :cond_5
    :goto_0
    return-void
.end method

.method private parseRichCardMessage(Lorg/w3c/dom/Element;)V
    .locals 12

    .line 160
    new-instance v11, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-direct {v11}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;-><init>()V

    const-string v0, "title"

    .line 161
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "mediaUrl"

    .line 162
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "description"

    .line 163
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "mediaContentType"

    .line 164
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "mediaFileSize"

    .line 165
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->formatSize(Ljava/lang/String;)I

    move-result v5

    const-string v0, "thumbnailUrl"

    .line 167
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "thumbnailContentType"

    .line 168
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "thumbnailFileSize"

    .line 169
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->formatSize(Ljava/lang/String;)I

    move-result v8

    const-string v0, "mediaHeight"

    .line 171
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "contentDescription"

    .line 172
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    .line 173
    invoke-virtual/range {v0 .. v10}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "mediaUri"

    .line 175
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->setMediaUri(Landroid/net/Uri;)V

    :cond_0
    const-string v0, "thumbnailUri"

    .line 179
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->setMediaUri(Landroid/net/Uri;)V

    .line 184
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 185
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 186
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseSuggestedChipList(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    move-result-object p1

    invoke-virtual {v11, p1}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->setSuggestedChipList(Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRichCardList:Ljava/util/List;

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parseSuggestedChipList(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;
    .locals 3

    .line 199
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 201
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 202
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 203
    instance-of v2, v2, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    .line 204
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseAction(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/chatbot/message/action/Action;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    invoke-direct {p1, v0}, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;-><init>(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public getChatbotMessage()Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    return-object v0
.end method

.method public parseChatbotMessage()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 57
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 58
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 59
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 60
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-direct {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->parseMessageElement(Lorg/w3c/dom/Element;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "anonymousMode"

    .line 63
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "trafficType"

    .line 64
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    if-eqz v2, :cond_2

    .line 67
    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    invoke-direct {v2, v3, v4, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;-><init>(Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;Z)V

    iput-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    goto :goto_1

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRichCardList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 69
    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mRichCardList:Ljava/util/List;

    iget-object v5, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;-><init>(Lcom/tct/cs/services/rcs/chatbot/message/Layout;Ljava/util/List;Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;Z)V

    iput-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    .line 71
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse2;->mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    invoke-virtual {v1, v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->setTrafficType(Ljava/lang/String;)V

    return-void
.end method
