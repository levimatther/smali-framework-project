.class public Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;
.super Ljava/lang/Object;
.source "AudioCodec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encoding:Ljava/lang/String;

.field private parameters:Ljava/lang/String;

.field private payload:I

.field private sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec$1;

    invoke-direct {v0}, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec$1;-><init>()V

    sput-object v0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->encoding:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->payload:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->sampleRate:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->parameters:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->encoding:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->payload:I

    .line 62
    iput p3, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->sampleRate:I

    .line 63
    iput-object p4, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->parameters:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;)Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->parameters:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->payload:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->sampleRate:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    iget-object p2, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->encoding:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget p2, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->payload:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->sampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object p2, p0, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->parameters:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
