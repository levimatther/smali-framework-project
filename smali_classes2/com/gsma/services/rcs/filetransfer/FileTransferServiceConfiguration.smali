.class public Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;
.super Ljava/lang/Object;
.source "FileTransferServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    }
.end annotation


# instance fields
.field private mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    return-void
.end method


# virtual methods
.method public getImageResizeOption()Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getImageResizeOption()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIsDownloadUpToFtWarnSize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getIsDownloadUpToFtWarnSize()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxAudioMessageDuration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxAudioMessageDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxFileTransferIncomingSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxFileTransferIncomingSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 405
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxFileTransfers()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxFileTransfers()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 263
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getWarnSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getWarnSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAutoAcceptEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAutoAcceptInRoamingEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptInRoamingEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAutoAcceptModeChangeable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptModeChangeable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isFtHttpFallbackBySMS()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isFtHttpFallbackBySMS()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 389
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isGroupFileTransferSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isGroupFileTransferSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAutoAccept(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setAutoAccept(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;->assertException(Ljava/lang/Exception;)V

    .line 189
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 190
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setAutoAcceptInRoaming(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setAutoAcceptInRoaming(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 229
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;->assertException(Ljava/lang/Exception;)V

    .line 230
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 231
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 232
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFtAutoDeleteStorageLimitation(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setFtAutoDeleteStorageLimitation(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 346
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setImageResizeOption(Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->toInt()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setImageResizeOption(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 293
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setIsDownloadUpToFtWarnSize(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setIsDownloadUpToFtWarnSize(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 357
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setWarningFileTransferSize(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x400

    mul-long/2addr v0, p1

    .line 327
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mIFtServiceConfig:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {p1, v0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setWarningFileTransferSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 329
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
