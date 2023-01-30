.class public Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
.super Ljava/lang/Object;
.source "GeolocSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;,
        Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    }
.end annotation


# instance fields
.field private mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

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

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->abortSharing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 388
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 389
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

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 361
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

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 328
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 329
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGeoloc()Lcom/gsma/services/rcs/Geoloc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getGeoloc()Lcom/gsma/services/rcs/Geoloc;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 274
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 275
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 310
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 311
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

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 256
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 257
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

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getSharingId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->valueOf(I)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 292
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 293
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

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getTimestamp()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 347
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 348
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

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 374
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
