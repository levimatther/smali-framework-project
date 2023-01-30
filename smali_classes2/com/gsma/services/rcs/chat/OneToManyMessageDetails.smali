.class public Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;
.super Ljava/lang/Object;
.source "OneToManyMessageDetails.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private contactId:Lcom/gsma/services/rcs/contact/ContactId;

.field private msgId:Ljava/lang/String;

.field private relateId:Ljava/lang/String;

.field private status:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

.field private statusUpdateTime:J

.field private technology:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;IIJ)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->msgId:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->relateId:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->contactId:Lcom/gsma/services/rcs/contact/ContactId;

    .line 67
    invoke-static {p4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->technology:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    .line 68
    invoke-static {p5}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->status:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    .line 69
    iput-wide p6, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->statusUpdateTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->contactId:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelateId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->relateId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/gsma/services/rcs/chat/OneToManyData$Status;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->status:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    return-object v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->statusUpdateTime:J

    return-wide v0
.end method

.method public getTechnology()Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->technology:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relateId:"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->relateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",msgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",contactId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->contactId:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",technology:"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->technology:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->status:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",statusUpdateTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->statusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 91
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->msgId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->relateId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->contactId:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->technology:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->toInt()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->status:Lcom/gsma/services/rcs/chat/OneToManyData$Status;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/OneToManyData$Status;->toInt()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-wide v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;->statusUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
