.class public Lcom/gsma/services/rcs/upload/FileUpload;
.super Ljava/lang/Object;
.source "FileUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/FileUpload$State;
    }
.end annotation


# instance fields
.field private mUploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUpload;->mUploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    return-void
.end method


# virtual methods
.method public abortUpload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->mUploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->abortUpload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFile()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->mUploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->getFile()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->mUploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/upload/FileUpload$State;->valueOf(I)Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->mUploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->getUploadId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->mUploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
