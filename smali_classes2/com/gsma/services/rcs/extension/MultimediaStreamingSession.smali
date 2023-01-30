.class public Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
.super Lcom/gsma/services/rcs/extension/MultimediaSession;
.source "MultimediaStreamingSession.java"


# instance fields
.field private mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSession;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    return-void
.end method


# virtual methods
.method public abortSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->abortSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 186
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 187
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public acceptInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 157
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getServiceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getSessionId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 172
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendPayload([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->sendPayload([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 203
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 204
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 205
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
