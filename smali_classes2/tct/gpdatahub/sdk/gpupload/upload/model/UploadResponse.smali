.class public Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;
.super Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
.source "UploadResponse.java"


# instance fields
.field private mUploadCompletedInfo:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadCompletedInfo;

.field private mUploadException:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;-><init>(ILtct/gpdatahub/sdk/gpupload/upload/model/UploadException;)V

    return-void
.end method

.method public constructor <init>(ILtct/gpdatahub/sdk/gpupload/upload/model/UploadException;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mUploadException:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;

    .line 10
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mUploadCompletedInfo:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadCompletedInfo;

    .line 18
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mResultCode:I

    .line 19
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mUploadException:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;

    return-void
.end method

.method public static makeUnSuccessResponse(I)Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;
    .locals 2

    .line 49
    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->makeUploadException(I)Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;

    move-result-object v0

    .line 50
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

    invoke-direct {v1, p0, v0}, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;-><init>(ILtct/gpdatahub/sdk/gpupload/upload/model/UploadException;)V

    return-object v1
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 23
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mResultCode:I

    return v0
.end method

.method public getUploadCompletedInfo()Ltct/gpdatahub/sdk/gpupload/upload/model/UploadCompletedInfo;
    .locals 1

    .line 40
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mUploadCompletedInfo:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadCompletedInfo;

    return-object v0
.end method

.method public getUploadException()Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;
    .locals 1

    .line 31
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mUploadException:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;

    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0

    .line 27
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mResultCode:I

    return-void
.end method

.method public setUploadCompletedInfo(Ltct/gpdatahub/sdk/gpupload/upload/model/UploadCompletedInfo;)V
    .locals 0

    .line 44
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mUploadCompletedInfo:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadCompletedInfo;

    return-void
.end method

.method public setUploadException(Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;)Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;
    .locals 0

    .line 35
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->mUploadException:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;

    return-object p0
.end method
