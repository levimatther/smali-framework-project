.class public Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;
.super Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;
.source "UploadParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddParams:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mEndRecordId:J

.field private mEventType:I

.field private mFailedTimes:I

.field private mFileName:Ljava/lang/String;

.field private mFileType:Ljava/lang/String;

.field private mLocalPath:Ljava/lang/String;

.field private mSplitFilesDir:Ljava/lang/String;

.field private mStartRecordId:J

.field private mUnQueryRecordId:J

.field private mUploadId:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 242
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$1;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$1;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 121
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUploadId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFailedTimes:I

    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mStartRecordId:J

    .line 20
    iput-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUnQueryRecordId:J

    .line 21
    iput-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEndRecordId:J

    .line 22
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEventType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJILjava/lang/String;)V
    .locals 4

    move-object v0, p0

    .line 127
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUploadId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    iput v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFailedTimes:I

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mStartRecordId:J

    .line 20
    iput-wide v2, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUnQueryRecordId:J

    .line 21
    iput-wide v2, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEndRecordId:J

    .line 22
    iput v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEventType:I

    move-object v1, p1

    .line 128
    iput-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mDate:Ljava/lang/String;

    move-object v1, p2

    .line 129
    iput-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUrl:Ljava/lang/String;

    move-object v1, p3

    .line 130
    iput-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mLocalPath:Ljava/lang/String;

    move-object v1, p4

    .line 131
    iput-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mSplitFilesDir:Ljava/lang/String;

    move-object v1, p5

    .line 132
    iput-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileName:Ljava/lang/String;

    move-object v1, p6

    .line 133
    iput-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileType:Ljava/lang/String;

    move v1, p7

    .line 134
    iput v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFailedTimes:I

    move-wide v1, p8

    .line 135
    iput-wide v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mStartRecordId:J

    move-wide v1, p10

    .line 136
    iput-wide v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUnQueryRecordId:J

    move-wide/from16 v1, p12

    .line 137
    iput-wide v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEndRecordId:J

    move/from16 v1, p14

    .line 138
    iput v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEventType:I

    move-object/from16 v1, p15

    .line 139
    iput-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mAddParams:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUploadId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;J)J
    .locals 0

    .line 10
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEndRecordId:J

    return-wide p1
.end method

.method static synthetic access$102(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;I)I
    .locals 0

    .line 10
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEventType:I

    return p1
.end method

.method static synthetic access$1202(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mAddParams:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mLocalPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mSplitFilesDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;I)I
    .locals 0

    .line 10
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFailedTimes:I

    return p1
.end method

.method static synthetic access$802(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;J)J
    .locals 0

    .line 10
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mStartRecordId:J

    return-wide p1
.end method

.method static synthetic access$902(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;J)J
    .locals 0

    .line 10
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUnQueryRecordId:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 292
    :cond_1
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUploadId:Ljava/lang/String;

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    iget-object p1, p1, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUploadId:Ljava/lang/String;

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAddParams()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mAddParams:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEndRecordId()J
    .locals 2

    .line 209
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEndRecordId:J

    return-wide v0
.end method

.method public getEventType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEventType:I

    return v0
.end method

.method public getEventTypeString()Ljava/lang/String;
    .locals 1

    .line 218
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEventType:I

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFailedTimes()I
    .locals 1

    .line 187
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFailedTimes:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileType:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitFilesDir()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mSplitFilesDir:Ljava/lang/String;

    return-object v0
.end method

.method public getStartRecordId()J
    .locals 2

    .line 205
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mStartRecordId:J

    return-wide v0
.end method

.method public getUnQueryRecordId()J
    .locals 2

    .line 222
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUnQueryRecordId:J

    return-wide v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAddParams(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mAddParams:Ljava/lang/String;

    return-void
.end method

.method public setFailedTimes(I)V
    .locals 0

    .line 191
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFailedTimes:I

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setSplitFilesDir(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mSplitFilesDir:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadParams [mUploadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSplitFilesDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mSplitFilesDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFailedTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFailedTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStartRecordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mStartRecordId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUnloadRecordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUnQueryRecordId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndRecordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEndRecordId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAddParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mAddParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 228
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUploadId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mLocalPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mSplitFilesDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFileType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mFailedTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mStartRecordId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mUnQueryRecordId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEndRecordId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mEventType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->mAddParams:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
