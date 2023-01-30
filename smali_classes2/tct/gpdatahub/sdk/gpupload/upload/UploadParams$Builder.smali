.class public Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
.super Ljava/lang/Object;
.source "UploadParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mDate:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mUrl:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mLocalPath:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mSplitFilesDir:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFileName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFileType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFailedTimes:I

    const-wide/16 v2, -0x1

    .line 40
    iput-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mStartRecordId:J

    .line 41
    iput-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mUnQueryRecordId:J

    .line 42
    iput-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mEndRecordId:J

    .line 43
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mEventType:I

    .line 44
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mAddParams:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;
    .locals 18

    move-object/from16 v0, p0

    .line 115
    new-instance v17, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    iget-object v2, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mDate:Ljava/lang/String;

    iget-object v3, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mLocalPath:Ljava/lang/String;

    iget-object v5, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mSplitFilesDir:Ljava/lang/String;

    iget-object v6, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFileName:Ljava/lang/String;

    iget-object v7, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFileType:Ljava/lang/String;

    iget v8, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFailedTimes:I

    iget-wide v9, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mStartRecordId:J

    iget-wide v11, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mUnQueryRecordId:J

    iget-wide v13, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mEndRecordId:J

    iget v15, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mEventType:I

    iget-object v1, v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mAddParams:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJILjava/lang/String;)V

    return-object v17
.end method

.method public setAddParams(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 90
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mAddParams:Ljava/lang/String;

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 49
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public setEndRecordId(J)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 100
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mEndRecordId:J

    return-object p0
.end method

.method public setEventType(I)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mEventType:I

    return-object p0
.end method

.method public setFailedTimes(I)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 84
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFailedTimes:I

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 72
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mFileType:Ljava/lang/String;

    return-object p0
.end method

.method public setLocalPath(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mLocalPath:Ljava/lang/String;

    return-object p0
.end method

.method public setSplitFilesDir(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mSplitFilesDir:Ljava/lang/String;

    return-void
.end method

.method public setStartRecordId(J)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 95
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mStartRecordId:J

    return-object p0
.end method

.method public setUnQueryRecordId(J)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 110
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mUnQueryRecordId:J

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;
    .locals 0

    .line 55
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$Builder;->mUrl:Ljava/lang/String;

    return-object p0
.end method
