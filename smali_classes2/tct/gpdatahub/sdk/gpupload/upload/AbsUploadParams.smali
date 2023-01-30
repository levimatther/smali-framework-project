.class public abstract Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;
.super Ljava/lang/Object;
.source "AbsUploadParams.java"


# static fields
.field public static final PARAM_TYPE_DATE:Ljava/lang/String; = "date"

.field public static final PARAM_TYPE_RECORD:Ljava/lang/String; = "record"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAddParams()Ljava/lang/String;
.end method

.method public abstract getDate()Ljava/lang/String;
.end method

.method public abstract getEndRecordId()J
.end method

.method public abstract getEventType()I
.end method

.method public abstract getFailedTimes()I
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFileType()Ljava/lang/String;
.end method

.method public abstract getLocalPath()Ljava/lang/String;
.end method

.method public abstract getSplitFilesDir()Ljava/lang/String;
.end method

.method public abstract getStartRecordId()J
.end method

.method public abstract getUnQueryRecordId()J
.end method

.method public abstract getUploadId()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public isDateType()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRecordType()Z
    .locals 2

    .line 50
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "record"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract setAddParams(Ljava/lang/String;)V
.end method

.method public abstract setFailedTimes(I)V
.end method

.method public abstract setLocalPath(Ljava/lang/String;)V
.end method

.method public abstract setSplitFilesDir(Ljava/lang/String;)V
.end method
