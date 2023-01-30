.class public Lcom/gsma/services/rcs/sharing/video/VideoCodec;
.super Ljava/lang/Object;
.source "VideoCodec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBitRate:I

.field private final mClockRate:I

.field private final mEncoding:Ljava/lang/String;

.field private final mFrameRate:I

.field private final mHeight:I

.field private final mParameters:Ljava/lang/String;

.field private final mPayload:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mEncoding:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mPayload:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mClockRate:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mFrameRate:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mBitRate:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mWidth:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mHeight:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mParameters:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mEncoding:Ljava/lang/String;

    .line 86
    iput p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mPayload:I

    .line 87
    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mClockRate:I

    .line 88
    iput p4, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mFrameRate:I

    .line 89
    iput p5, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mBitRate:I

    .line 90
    iput p6, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mWidth:I

    .line 91
    iput p7, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mHeight:I

    .line 92
    iput-object p8, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mParameters:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mBitRate:I

    return v0
.end method

.method public getClockRate()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mClockRate:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mFrameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mHeight:I

    return v0
.end method

.method public getParameters()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mPayload:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 131
    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mPayload:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mClockRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mFrameRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mBitRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->mParameters:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
