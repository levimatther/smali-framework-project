.class public Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ChatbotMessageParse.java"


# instance fields
.field private isAnonymousMode:Z

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

.field private final mInputSource:Lorg/xml/sax/InputSource;

.field private mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

.field private mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

.field private mRichCardMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleRichCard:Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

.field private mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

.field private trafficType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRichCardMessages:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->trafficType:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mInputSource:Lorg/xml/sax/InputSource;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 250
    const-class p1, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    .line 252
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 253
    :cond_0
    const-class p1, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSingleRichCard:Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    invoke-virtual {p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->setSuggestedChipList(Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;)V

    .line 255
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRichCardMessages:Ljava/util/List;

    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSingleRichCard:Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 257
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSingleRichCard:Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    .line 258
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    goto :goto_1

    .line 259
    :cond_1
    const-class p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 260
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    if-eqz p1, :cond_2

    .line 262
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    iget-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->isAnonymousMode:Z

    invoke-direct {p1, p2, p3, v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;-><init>(Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;Z)V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    goto :goto_0

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRichCardMessages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 264
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    iget-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRichCardMessages:Ljava/util/List;

    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    iget-boolean v1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->isAnonymousMode:Z

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;-><init>(Lcom/tct/cs/services/rcs/chatbot/message/Layout;Ljava/util/List;Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;Z)V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    .line 267
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->trafficType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->setTrafficType(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public formatSize(Ljava/lang/String;)I
    .locals 1

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 275
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getChatbotMessage()Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mChatbotMessage:Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    return-object v0
.end method

.method public parse()Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 93
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "anonymousMode"

    .line 95
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->isAnonymousMode:Z

    const-string v1, "trafficType"

    .line 96
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->trafficType:Ljava/lang/String;

    goto/16 :goto_1

    .line 98
    :cond_0
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    new-instance v1, Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    invoke-direct {v1}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;-><init>()V

    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    const-string v3, "cardOrientation"

    .line 100
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->setCardOrientation(Ljava/lang/String;)V

    .line 101
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    const-string v3, "cardWidth"

    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->setCardWidth(Ljava/lang/String;)V

    .line 102
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mLayout:Lcom/tct/cs/services/rcs/chatbot/message/Layout;

    const-string v3, "imageAlignment"

    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->setImageAlignment(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 103
    :cond_1
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "thumbnailUri"

    const-string v5, "thumbnailUrl"

    const-string v6, "description"

    const-string v7, "title"

    if-eqz v3, :cond_3

    .line 104
    new-instance v1, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-direct {v1}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;-><init>()V

    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSingleRichCard:Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    .line 105
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "mediaUrl"

    .line 106
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "mediaContentType"

    .line 108
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "mediaFileSize"

    .line 109
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->formatSize(Ljava/lang/String;)I

    move-result v13

    .line 111
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "thumbnailContentType"

    .line 112
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "thumbnailFileSize"

    .line 113
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->formatSize(Ljava/lang/String;)I

    move-result v16

    const-string v1, "mediaHeight"

    .line 115
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "contentDescription"

    .line 116
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 117
    iget-object v8, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSingleRichCard:Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-virtual/range {v8 .. v18}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "mediaUri"

    .line 119
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    iget-object v3, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSingleRichCard:Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->setMediaUri(Landroid/net/Uri;)V

    .line 123
    :cond_2
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 125
    iget-object v2, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mSingleRichCard:Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->setMediaUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 127
    :cond_3
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "content"

    if-eqz v3, :cond_4

    const-string v1, "mimeType"

    .line 128
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-interface {v2, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v3, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;

    invoke-direct {v3, v1, v2}, Lcom/tct/cs/services/rcs/chatbot/message/TextRegularMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    goto/16 :goto_1

    .line 131
    :cond_4
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    invoke-interface {v2, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;

    new-instance v3, Lcom/gsma/services/rcs/Geoloc;

    invoke-direct {v3, v1}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/tct/cs/services/rcs/chatbot/message/GeolocRegularMessage;-><init>(Lcom/gsma/services/rcs/Geoloc;)V

    iput-object v2, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    goto/16 :goto_1

    .line 134
    :cond_5
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "deviceModel"

    .line 135
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "platformVersion"

    .line 136
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clientVendor"

    .line 137
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "clientVersion"

    .line 138
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "batteryRemainingMinutes"

    .line 139
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    new-instance v6, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;

    invoke-direct {v6}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;-><init>()V

    .line 141
    invoke-virtual {v6, v1}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v6, v3}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setPlatformVersion(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6, v4}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setClientVendor(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v6, v5}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setClientVersion(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6, v2}, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->setBatteryRemainingMinutes(Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;

    invoke-direct {v1, v6}, Lcom/tct/cs/services/rcs/chatbot/message/ShareDataRegularMessage;-><init>(Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;)V

    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    goto/16 :goto_1

    .line 147
    :cond_6
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v1, "thumbnailSize"

    .line 150
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "thumbnailType"

    .line 151
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "thumbnailExpires"

    .line 152
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 153
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 154
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fileSize"

    .line 155
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fileType"

    .line 156
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "fileExpires"

    .line 157
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v5, "fileUrl"

    .line 158
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "fileUri"

    .line 159
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fileName"

    .line 160
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 162
    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-direct {v2}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;-><init>()V

    iput-object v2, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    .line 163
    move-object v6, v2

    check-cast v6, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-virtual {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->formatSize(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {v6 .. v11}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->setThumbnailAttr(ILjava/lang/String;JLjava/lang/String;)V

    .line 165
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    move-object v12, v1

    check-cast v12, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-virtual {v0, v4}, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->formatSize(Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {v12 .. v18}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->setFileAttr(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 168
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->setThumbnailUri(Landroid/net/Uri;)V

    .line 170
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 171
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->setFileUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 174
    :cond_8
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "postback"

    if-eqz v3, :cond_9

    const-string v1, "display"

    .line 175
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "relativeMessageId"

    .line 177
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    new-instance v4, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;

    invoke-direct {v4, v1, v3, v2}, Lcom/tct/cs/services/rcs/chatbot/message/ReplyRegularMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mRegularMessage:Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;

    goto/16 :goto_1

    .line 180
    :cond_9
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_1

    .line 182
    :cond_a
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "displayText"

    if-eqz v3, :cond_b

    const-string v1, "startTime"

    .line 183
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "endTime"

    .line 184
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 185
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 186
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 187
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 188
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 189
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/tct/cs/services/rcs/chatbot/message/action/CalendarAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 190
    :cond_b
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "phoneNumber"

    const-string v7, "action"

    if-eqz v3, :cond_c

    .line 191
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 192
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "type"

    .line 193
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 194
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 195
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 196
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/tct/cs/services/rcs/chatbot/message/action/ComposeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 197
    :cond_c
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/action/DeviceAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 198
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v3, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    new-instance v4, Lcom/tct/cs/services/rcs/chatbot/message/action/DeviceAction;

    invoke-direct {v4, v1, v2}, Lcom/tct/cs/services/rcs/chatbot/message/action/DeviceAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 201
    :cond_d
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 202
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 203
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "subject"

    .line 204
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 205
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 206
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "fallbackUri"

    .line 207
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 208
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/tct/cs/services/rcs/chatbot/message/action/DialerAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 209
    :cond_e
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/action/ReplyAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 210
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    iget-object v3, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    new-instance v4, Lcom/tct/cs/services/rcs/chatbot/message/action/ReplyAction;

    invoke-direct {v4, v1, v2}, Lcom/tct/cs/services/rcs/chatbot/message/action/ReplyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 213
    :cond_f
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/action/SettingsAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 214
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    iget-object v4, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    new-instance v5, Lcom/tct/cs/services/rcs/chatbot/message/action/SettingsAction;

    invoke-direct {v5, v1, v3, v2}, Lcom/tct/cs/services/rcs/chatbot/message/action/SettingsAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 219
    :cond_10
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 220
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "showLocation"

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v1, "latitude"

    .line 224
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "longitude"

    .line 225
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "label"

    .line 226
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "fallbackUrl"

    .line 227
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "query"

    .line 228
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 231
    new-instance v1, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_11
    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;

    invoke-direct {v2, v1, v10, v11, v12}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 236
    :goto_0
    iget-object v2, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_12
    const-string v2, "requestLocationPush"

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 238
    iget-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    new-instance v2, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;

    invoke-direct {v2, v11, v12}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_13
    const-class v3, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "url"

    .line 241
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    iget-object v4, v0, Lcom/tct/cs/services/rcs/chatbot/parse/ChatbotMessageParse;->mActions:Ljava/util/List;

    new-instance v5, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;

    invoke-direct {v5, v1, v3, v2}, Lcom/tct/cs/services/rcs/chatbot/message/action/UrlAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_1
    return-void
.end method
