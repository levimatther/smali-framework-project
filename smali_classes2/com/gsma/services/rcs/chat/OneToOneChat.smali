.class public Lcom/gsma/services/rcs/chat/OneToOneChat;
.super Ljava/lang/Object;
.source "OneToOneChat.java"


# instance fields
.field private final mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/IOneToOneChat;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    return-void
.end method


# virtual methods
.method public acceptInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 219
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 221
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addReadReportBlackList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->addReadReportBlackList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 255
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 256
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteReadReportBlackList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->deleteReadReportBlackList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 271
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 272
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileTransferMaxSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->getFileTransferMaxSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 361
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 362
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

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public inviteParticipants(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->inviteParticipants(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 202
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isAllowedToSendGeoSMS()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->isAllowedToSendGeoSMS()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 307
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 308
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToSendGeoloc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->isAllowedToSendGeoloc()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 343
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 344
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToSendGeolocPush()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->isAllowedToSendGeolocPush()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 324
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 325
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToSendMessage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->isAllowedToSendMessage()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 85
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isInOneToOneReadReportBlackList()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->isInOneToOneReadReportBlackList()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 288
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openChat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->openChat()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 236
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 238
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resendMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->resendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 180
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 182
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sendMessage(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 120
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatMessage;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->sendMessage2(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 125
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 100
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatMessage;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 103
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 105
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setComposingStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChat;->mOneToOneChatInf:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->setComposingStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 149
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
