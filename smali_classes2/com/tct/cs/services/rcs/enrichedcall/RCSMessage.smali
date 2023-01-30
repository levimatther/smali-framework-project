.class public Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;
.super Ljava/lang/Object;
.source "RCSMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallSessionId:Ljava/lang/String;

.field private mContact:Lcom/gsma/services/rcs/contact/ContactId;

.field private mContent:Ljava/lang/String;

.field private mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

.field private mFile:Landroid/net/Uri;

.field private mFileIcon:Landroid/net/Uri;

.field private mFileIconMimeType:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mMessageId:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mProviderId:I

.field private mReadStatus:I

.field private mReasonCode:I

.field private mStatus:I

.field private mTimestamp:J

.field private mTransferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/RcsService$Direction;JIIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 53
    iput v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mProviderId:I

    move-object v1, p2

    .line 54
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMessageId:Ljava/lang/String;

    move-object v1, p3

    .line 55
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    move-object v1, p4

    .line 56
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    move-wide v1, p5

    .line 57
    iput-wide v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTimestamp:J

    move v1, p7

    .line 58
    iput v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mStatus:I

    move v1, p8

    .line 59
    iput v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mReasonCode:I

    move-object v1, p11

    .line 60
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMimeType:Ljava/lang/String;

    move-object v1, p12

    .line 61
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFile:Landroid/net/Uri;

    move-object/from16 v1, p13

    .line 62
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileName:Ljava/lang/String;

    move-wide/from16 v1, p14

    .line 63
    iput-wide v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileSize:J

    move-object/from16 v1, p16

    .line 64
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileIcon:Landroid/net/Uri;

    move-object/from16 v1, p17

    .line 65
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileIconMimeType:Ljava/lang/String;

    move-wide/from16 v1, p18

    .line 66
    iput-wide v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTransferred:J

    move v1, p9

    .line 67
    iput v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mReadStatus:I

    move-object v1, p10

    .line 68
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContent:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 69
    iput-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mCallSessionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/RcsService$Direction;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mProviderId:I

    .line 76
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMessageId:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 78
    iput-object p4, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    .line 79
    iput-wide p5, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTimestamp:J

    .line 80
    iput p7, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mStatus:I

    .line 81
    iput p8, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mReasonCode:I

    .line 82
    iput-object p11, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMimeType:Ljava/lang/String;

    .line 83
    iput p9, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mReadStatus:I

    .line 84
    iput-object p10, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContent:Ljava/lang/String;

    .line 85
    iput-object p12, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mCallSessionId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMessageId:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTimestamp:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mStatus:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mReasonCode:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mProviderId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFile:Landroid/net/Uri;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMimeType:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileSize:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileIcon:Landroid/net/Uri;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileIconMimeType:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTransferred:J

    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContent:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMimeType:Ljava/lang/String;

    .line 110
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mCallSessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCSMessage{mProviderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mProviderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mContact="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDirection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mReasonCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mReasonCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFile:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFileSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mFileIcon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileIcon:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mReadStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mReadStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFileIconMimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileIconMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTransferred="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTransferred:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCallSessionId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mCallSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 115
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMessageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mDirection:Lcom/gsma/services/rcs/RcsService$Direction;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/RcsService$Direction;->toInt()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mReasonCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mProviderId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mProviderId:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 123
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFile:Landroid/net/Uri;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-wide v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileIcon:Landroid/net/Uri;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mFileIconMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mTransferred:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_2

    .line 131
    :cond_2
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    :goto_2
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;->mCallSessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
