.class public Lcom/gsma/services/rcs/upload/FileUploadInfo;
.super Ljava/lang/Object;
.source "FileUploadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/upload/FileUploadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExpiration:J

.field private mFile:Landroid/net/Uri;

.field private final mFileIcon:Landroid/net/Uri;

.field private final mFileIconExpiration:J

.field private final mFileIconMimeType:Ljava/lang/String;

.field private final mFileIconSize:J

.field private mFileName:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mSize:J

.field private mXmlSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUploadInfo$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/upload/FileUploadInfo$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    .line 100
    iput-wide p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mExpiration:J

    .line 101
    iput-object p4, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileName:Ljava/lang/String;

    .line 102
    iput-wide p5, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    .line 103
    iput-object p7, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    .line 104
    iput-object p8, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIcon:Landroid/net/Uri;

    .line 105
    iput-wide p9, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    .line 106
    iput-wide p11, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconSize:J

    .line 107
    iput-object p13, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconMimeType:Ljava/lang/String;

    .line 108
    iput-object p14, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mXmlSource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    .line 118
    iput-wide p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mExpiration:J

    .line 119
    iput-object p4, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileName:Ljava/lang/String;

    .line 120
    iput-wide p5, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    .line 121
    iput-object p7, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIcon:Landroid/net/Uri;

    const-wide/16 p2, 0x0

    .line 123
    iput-wide p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    .line 124
    iput-wide p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconSize:J

    .line 125
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconMimeType:Ljava/lang/String;

    .line 126
    iput-object p8, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mXmlSource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mExpiration:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIcon:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIcon:Landroid/net/Uri;

    .line 147
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconSize:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconMimeType:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mXmlSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExpiration()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mExpiration:J

    return-wide v0
.end method

.method public getFile()Landroid/net/Uri;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileIcon()Landroid/net/Uri;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIcon:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileIconExpiration()J
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    return-wide v0
.end method

.method public getFileIconMimeType()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileIconSize()J
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconSize:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 237
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    return-wide v0
.end method

.method public getXmlSource()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mXmlSource:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 172
    iget-object p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget-object p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-object p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIcon:Landroid/net/Uri;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 178
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIcon:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    :goto_0
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-object p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mXmlSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
