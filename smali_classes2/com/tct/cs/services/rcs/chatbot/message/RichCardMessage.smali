.class public Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;
.super Ljava/lang/Object;
.source "RichCardMessage.java"


# static fields
.field public static final GENERAL_PURPOSE_CARD:Ljava/lang/String; = "generalPurposeCard"

.field public static final GENERAL_PURPOSE_CARD_CAROUSEL:Ljava/lang/String; = "generalPurposeCardCarousel"

.field public static final MEDIUM_HEIGHT:Ljava/lang/String; = "MEDIUM_HEIGHT"

.field public static final MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.botmessage.v1.0+json"

.field public static final SHORT_HEIGHT:Ljava/lang/String; = "SHORT_HEIGHT"

.field public static final TALL_HEIGHT:Ljava/lang/String; = "TALL_HEIGHT"


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

.field private mediaContentType:Ljava/lang/String;

.field private mediaFileSize:I

.field private mediaHeight:Ljava/lang/String;

.field private mediaUri:Landroid/net/Uri;

.field private mediaUrl:Ljava/lang/String;

.field private thumbnailContentType:Ljava/lang/String;

.field private thumbnailFileSize:I

.field private thumbnailUri:Landroid/net/Uri;

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaContentType()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaFileSize()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaFileSize:I

    return v0
.end method

.method public getMediaHeight()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaUri()Landroid/net/Uri;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestedChipList()Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    return-object v0
.end method

.method public getThumbnailContentType()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailFileSize()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailFileSize:I

    return v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaUrl:Ljava/lang/String;

    const-string v2, "mediaUrl"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaUri"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaContentType:Ljava/lang/String;

    const-string v2, "mediaContentType"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaFileSize:I

    const-string v2, "mediaFileSize"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)V

    .line 264
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailUrl:Ljava/lang/String;

    const-string v2, "thumbnailUrl"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbnailUri"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailContentType:Ljava/lang/String;

    const-string v2, "thumbnailContentType"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailFileSize:I

    const-string v2, "thumbnailFileSize"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)V

    .line 270
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaHeight:Ljava/lang/String;

    const-string v2, "mediaHeight"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->contentDescription:Ljava/lang/String;

    const-string v2, "contentDescription"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-object v0
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->title:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->description:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaUrl:Ljava/lang/String;

    .line 238
    iput-object p4, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaContentType:Ljava/lang/String;

    .line 239
    iput p5, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaFileSize:I

    .line 240
    iput-object p6, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailUrl:Ljava/lang/String;

    .line 241
    iput-object p7, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailContentType:Ljava/lang/String;

    .line 242
    iput-object p9, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaHeight:Ljava/lang/String;

    .line 243
    iput p8, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailFileSize:I

    .line 244
    iput-object p10, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->contentDescription:Ljava/lang/String;

    return-void
.end method

.method public setMediaUri(Landroid/net/Uri;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mediaUri:Landroid/net/Uri;

    return-void
.end method

.method public setSuggestedChipList(Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->mSuggestedChipList:Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;

    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/RichCardMessage;->thumbnailUri:Landroid/net/Uri;

    return-void
.end method
