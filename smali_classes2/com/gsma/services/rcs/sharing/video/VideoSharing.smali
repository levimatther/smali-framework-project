.class public Lcom/gsma/services/rcs/sharing/video/VideoSharing;
.super Ljava/lang/Object;
.source "VideoSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$Encoding;,
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;,
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    }
.end annotation


# instance fields
.field private final mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    return-void
.end method


# virtual methods
.method public abortSharing()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->abortSharing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 363
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public acceptInvitation(Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 332
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)V

    .line 333
    iget-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {p1, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->acceptInvitation(Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 336
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 337
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 319
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 320
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDuration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 415
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 416
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 301
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 302
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

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 265
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 266
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

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getSharingId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 283
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 284
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

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getTimestamp()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 398
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 399
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 434
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 435
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVideoEncoding()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getVideoEncoding()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 379
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 380
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

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 350
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
