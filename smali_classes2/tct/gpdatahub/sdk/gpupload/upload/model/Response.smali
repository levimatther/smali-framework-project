.class public Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field protected mException:Ljava/lang/Exception;

.field protected mProtocolCode:I

.field protected mResponse:Ljava/lang/Object;

.field protected mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResultCode:I

    .line 5
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mProtocolCode:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResponse:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResultCode:I

    .line 5
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mProtocolCode:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResponse:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mException:Ljava/lang/Exception;

    .line 10
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResultCode:I

    .line 11
    iput-object p3, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResponse:Ljava/lang/Object;

    .line 12
    iput-object p4, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mException:Ljava/lang/Exception;

    .line 13
    iput p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mProtocolCode:I

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 33
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getProtocolCode()I
    .locals 1

    .line 25
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mProtocolCode:I

    return v0
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 21
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResultCode:I

    return v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 49
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mException:Ljava/lang/Exception;

    return-void
.end method

.method public setProtocolCode(I)V
    .locals 0

    .line 41
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mProtocolCode:I

    return-void
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 0

    .line 45
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResponse:Ljava/lang/Object;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 37
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->mResultCode:I

    return-void
.end method
