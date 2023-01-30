.class public Lcom/gsma/services/rcs/standalone/entity/FileEntity;
.super Lcom/gsma/services/rcs/standalone/entity/Entity;
.source "FileEntity.java"


# instance fields
.field private final file:Landroid/net/Uri;

.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/entity/Entity;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->file:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/standalone/entity/Entity;-><init>(Landroid/os/Parcel;)V

    .line 54
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->file:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->name:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->mimeType:Ljava/lang/String;

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->size:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->file:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Landroid/net/Uri;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->file:Landroid/net/Uri;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->size:J

    return-wide v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileEntity -> file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->file:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 101
    const-class v0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->file:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->name:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_0
    iget-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->mimeType:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    :goto_1
    iget-wide v0, p0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
