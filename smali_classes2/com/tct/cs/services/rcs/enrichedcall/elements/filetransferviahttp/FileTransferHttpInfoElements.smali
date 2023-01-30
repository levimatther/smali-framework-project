.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;
.super Ljava/lang/Object;
.source "FileTransferHttpInfoElements.java"


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.rcs-ft-http+xml"


# instance fields
.field private mExpiration:J

.field private mExtension:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;

.field private mFile:Landroid/net/Uri;

.field private mFileDisposition:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

.field private mFileIcon:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

.field private mFileName:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mPlayingLength:I

.field private mRemote:Lcom/gsma/services/rcs/contact/ContactId;

.field private mSize:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mSize:I

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mExpiration:J

    .line 70
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileDisposition:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mPlayingLength:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;JLcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mSize:I

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mExpiration:J

    .line 70
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileDisposition:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mPlayingLength:I

    .line 103
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFile:Landroid/net/Uri;

    .line 104
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileName:Ljava/lang/String;

    .line 105
    iput p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mSize:I

    .line 106
    iput-object p4, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mMimeType:Ljava/lang/String;

    .line 107
    iput-wide p5, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mExpiration:J

    .line 108
    iput-object p7, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileIcon:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    return-void
.end method


# virtual methods
.method public getExpiration()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mExpiration:J

    return-wide v0
.end method

.method public getExtension()Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mExtension:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;

    return-object v0
.end method

.method public getFileDisposition()Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileDisposition:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    return-object v0
.end method

.method public getFileThumbnail()Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileIcon:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingLength()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mPlayingLength:I

    return v0
.end method

.method public getRemote()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mSize:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFile:Landroid/net/Uri;

    return-object v0
.end method

.method public match(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setExpiration(J)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mExpiration:J

    return-void
.end method

.method public setExtension(Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mExtension:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;

    return-void
.end method

.method public setFileDisposition(Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileDisposition:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    return-void
.end method

.method public setFileThumbnail(Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileIcon:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setPlayingLength(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mPlayingLength:I

    return-void
.end method

.method public setRemote(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mSize:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mSource:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->mFile:Landroid/net/Uri;

    return-void
.end method
