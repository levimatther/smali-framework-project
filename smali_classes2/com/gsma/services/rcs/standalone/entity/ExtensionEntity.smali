.class public Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;
.super Lcom/gsma/services/rcs/standalone/entity/Entity;
.source "ExtensionEntity.java"


# static fields
.field public static final FT_HTTP_MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.rcs-ft-http+xml"

.field public static final GEOLOC_MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.rcspushlocation+xml"


# instance fields
.field private final content:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private size:J


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/standalone/entity/Entity;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->mimeType:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->content:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->size:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/entity/Entity;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->mimeType:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->content:Ljava/lang/String;

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

    .line 59
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->size:J

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->mimeType:Ljava/lang/String;

    const-string v1, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "utf-8"

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->content:Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->size:J

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->content:Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->size:J

    .line 72
    :goto_0
    iget-wide v0, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtensionEntity -> mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 82
    const-class p2, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/entity/ExtensionEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
