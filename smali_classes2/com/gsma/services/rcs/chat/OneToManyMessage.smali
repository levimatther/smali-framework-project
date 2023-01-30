.class public Lcom/gsma/services/rcs/chat/OneToManyMessage;
.super Ljava/lang/Object;
.source "OneToManyMessage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/chat/OneToManyMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private chatId:Ljava/lang/String;

.field private messageDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private ralateId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToManyMessage$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/OneToManyMessage$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->messageDetails:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->chatId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->ralateId:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->messageDetails:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->messageDetails:Ljava/util/List;

    return-object v0
.end method

.method public getRalateId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->ralateId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chatId:"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ralateId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->ralateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",messageDetails.size:"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->messageDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->chatId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->ralateId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/OneToManyMessage;->messageDetails:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
