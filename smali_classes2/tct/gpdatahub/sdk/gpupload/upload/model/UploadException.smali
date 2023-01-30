.class public Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;
.super Ljava/lang/Object;
.source "UploadException.java"


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mIOException:Ljava/io/IOException;

.field private mMalformedURLException:Ljava/net/MalformedURLException;

.field private mNetworkException:Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;

.field private mResultCode:I


# direct methods
.method public constructor <init>(ILjava/io/IOException;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    .line 16
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mIOException:Ljava/io/IOException;

    .line 17
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mMalformedURLException:Ljava/net/MalformedURLException;

    .line 18
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mNetworkException:Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;

    .line 26
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    .line 27
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mIOException:Ljava/io/IOException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    .line 16
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mIOException:Ljava/io/IOException;

    .line 17
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mMalformedURLException:Ljava/net/MalformedURLException;

    .line 18
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mNetworkException:Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;

    .line 21
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    .line 22
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(ILjava/net/MalformedURLException;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    .line 16
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mIOException:Ljava/io/IOException;

    .line 17
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mMalformedURLException:Ljava/net/MalformedURLException;

    .line 18
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mNetworkException:Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;

    .line 31
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    .line 32
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mMalformedURLException:Ljava/net/MalformedURLException;

    return-void
.end method

.method public constructor <init>(ILtct/gpdatahub/sdk/gpupload/upload/model/NetworkException;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    .line 16
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mIOException:Ljava/io/IOException;

    .line 17
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mMalformedURLException:Ljava/net/MalformedURLException;

    .line 18
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mNetworkException:Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;

    .line 36
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    .line 37
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mNetworkException:Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;

    return-void
.end method

.method public static makeUploadException(I)Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;
    .locals 2

    .line 97
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;

    new-instance v1, Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;-><init>(I)V

    invoke-direct {v0, p0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;-><init>(ILtct/gpdatahub/sdk/gpupload/upload/model/NetworkException;)V

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 49
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getExceptionInfo()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mMalformedURLException:Ljava/net/MalformedURLException;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mIOException:Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mNetworkException:Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_2
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "NULL"

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 41
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    return v0
.end method

.method public printStackTrace()V
    .locals 1

    .line 87
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mMalformedURLException:Ljava/net/MalformedURLException;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mIOException:Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setException(Ljava/lang/Exception;)Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;
    .locals 1

    .line 53
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Ljava/net/MalformedURLException;

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mMalformedURLException:Ljava/net/MalformedURLException;

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Ljava/io/IOException;

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mIOException:Ljava/io/IOException;

    goto :goto_0

    .line 58
    :cond_1
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mException:Ljava/lang/Exception;

    :goto_0
    return-object p0
.end method

.method public setResultCode(I)V
    .locals 0

    .line 45
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  UploadException={ mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ExceptionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;->getExceptionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
