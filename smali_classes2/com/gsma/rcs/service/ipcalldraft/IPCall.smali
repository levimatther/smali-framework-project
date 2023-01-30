.class public Lcom/gsma/rcs/service/ipcalldraft/IPCall;
.super Ljava/lang/Object;
.source "IPCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;,
        Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;
    }
.end annotation


# instance fields
.field private callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;


# direct methods
.method constructor <init>(Lcom/gsma/rcs/service/ipcalldraft/IIPCall;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    return-void
.end method


# virtual methods
.method public abortCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->abortCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 351
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation(Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IPCallRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0, p1, p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->acceptInvitation(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 325
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addVideo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->addVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 378
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public continueCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->continueCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 431
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAudioCodec()Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->getAudioCodec()Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->getCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;->valueOf(I)Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 281
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 251
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;->valueOf(I)Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->getTimestamp()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVideoCodec()Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->getVideoCodec()Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 445
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public holdCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->holdCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isOnHold()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->isOnHold()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 405
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isVideo()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->isVideo()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 365
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeVideo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;->callInf:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->removeVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
