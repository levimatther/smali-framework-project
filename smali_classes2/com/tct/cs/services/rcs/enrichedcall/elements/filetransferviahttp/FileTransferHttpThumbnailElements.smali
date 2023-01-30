.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;
.super Ljava/lang/Object;
.source "FileTransferHttpThumbnailElements.java"


# instance fields
.field private mExpiration:J

.field private mFileIcon:Landroid/net/Uri;

.field private mMimeType:Ljava/lang/String;

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mSize:I

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mExpiration:J

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;IJ)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mSize:I

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mExpiration:J

    .line 71
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mFileIcon:Landroid/net/Uri;

    .line 72
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mMimeType:Ljava/lang/String;

    .line 73
    iput p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mSize:I

    .line 74
    iput-wide p4, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mExpiration:J

    return-void
.end method


# virtual methods
.method public getExpiration()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mExpiration:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mSize:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mFileIcon:Landroid/net/Uri;

    return-object v0
.end method

.method public setExpiration(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mExpiration:J

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mSize:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->mFileIcon:Landroid/net/Uri;

    return-void
.end method
