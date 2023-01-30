.class public Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;
.super Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;
.source "FileRegularMessage.java"


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.rcs-ft-http+xml"


# instance fields
.field private fileExpires:J

.field private fileName:Ljava/lang/String;

.field private fileSize:I

.field private fileType:Ljava/lang/String;

.field private fileUri:Landroid/net/Uri;

.field private fileUrl:Ljava/lang/String;

.field private sendFileInfo:Ljava/lang/String;

.field private thumbnailExpires:J

.field private thumbnailSize:I

.field private thumbnailType:Ljava/lang/String;

.field private thumbnailUri:Landroid/net/Uri;

.field private thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "application/vnd.gsma.rcs-ft-http+xml"

    .line 43
    invoke-direct {p0, v0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->sendFileInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExpires()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileExpires:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileSize:I

    return v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSendFileInfo()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->sendFileInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailExpires()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailExpires:J

    return-wide v0
.end method

.method public getThumbnailSize()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailSize:I

    return v0
.end method

.method public getThumbnailType()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailType:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 5

    .line 115
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/RegularMessage;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 116
    iget v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailSize:I

    const-string v2, "thumbnailSize"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailType:Ljava/lang/String;

    const-string v2, "thumbnailType"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailExpires:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "thumbnailExpires"

    invoke-static {v0, v3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailUrl:Ljava/lang/String;

    const-string v3, "thumbnailUrl"

    invoke-static {v0, v3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "thumbnailUri"

    invoke-static {v0, v3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileSize:I

    const-string v3, "fileSize"

    invoke-static {v0, v3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;I)V

    .line 124
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileType:Ljava/lang/String;

    const-string v3, "fileType"

    invoke-static {v0, v3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileExpires:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileExpires"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileUrl:Ljava/lang/String;

    const-string v2, "fileUrl"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileName:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileUri"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public setFileAttr(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileSize:I

    .line 185
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileType:Ljava/lang/String;

    .line 186
    iput-wide p3, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileExpires:J

    .line 187
    iput-object p5, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileUrl:Ljava/lang/String;

    .line 188
    iput-object p6, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileUri(Landroid/net/Uri;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->fileUri:Landroid/net/Uri;

    return-void
.end method

.method public setSendFileInfo(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->sendFileInfo:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailAttr(ILjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailSize:I

    .line 158
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailType:Ljava/lang/String;

    .line 159
    iput-wide p3, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailExpires:J

    .line 160
    iput-object p5, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/FileRegularMessage;->thumbnailUri:Landroid/net/Uri;

    return-void
.end method
