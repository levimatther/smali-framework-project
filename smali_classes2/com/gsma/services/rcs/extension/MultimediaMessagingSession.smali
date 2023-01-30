.class public Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
.super Lcom/gsma/services/rcs/extension/MultimediaSession;
.source "MultimediaMessagingSession.java"


# instance fields
.field private mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSession;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

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

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->abortSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 192
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 193
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

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 161
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flushMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->flushMessages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 248
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 249
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

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

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

.method public getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 129
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

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 82
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

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getServiceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 97
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

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getSessionId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 67
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

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 113
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

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 177
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendMessage([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->sendMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 212
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 213
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 214
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sendMessage([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->sendMessage2([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 231
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 232
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 233
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public storedMapAsPicture(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->storedMapAsPicture(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 262
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 263
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public storedSketchAsPicture(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->mSessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->storedSketchAsPicture(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 276
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 277
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
