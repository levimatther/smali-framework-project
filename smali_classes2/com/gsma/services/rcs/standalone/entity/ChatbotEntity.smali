.class public Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;
.super Lcom/gsma/services/rcs/standalone/entity/Entity;
.source "ChatbotEntity.java"


# instance fields
.field private final content:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/standalone/entity/Entity;-><init>(Landroid/os/Parcel;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/entity/Entity;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;->content:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;->mimeType:Ljava/lang/String;

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

    .line 42
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v1, "utf-8"

    .line 55
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextEntity -> content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 65
    const-class p2, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/gsma/services/rcs/standalone/entity/ChatbotEntity;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
