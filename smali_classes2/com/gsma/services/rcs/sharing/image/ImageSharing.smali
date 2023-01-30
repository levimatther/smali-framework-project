.class public Lcom/gsma/services/rcs/sharing/image/ImageSharing;
.super Ljava/lang/Object;
.source "ImageSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;,
        Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    }
.end annotation


# instance fields
.field private final mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    return-void
.end method


# virtual methods
.method public abortSharing()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->abortSharing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 453
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 454
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public acceptInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 426
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 412
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 413
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFile()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getFile()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 288
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 289
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 305
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 306
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getFileSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 322
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 323
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getMimeType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 339
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 340
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 394
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 395
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 271
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 272
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSharingId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getSharingId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 255
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->valueOf(I)Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 376
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 377
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getTimestamp()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 358
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 359
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 439
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
