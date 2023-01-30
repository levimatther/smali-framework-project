.class public Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;
.super Ljava/lang/Object;
.source "ChatServiceConfiguration.java"


# instance fields
.field private final mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    return-void
.end method


# virtual methods
.method public getGeolocExpirationTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGeolocExpirationTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGeolocLabelMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGeolocLabelMaxLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGroupChatIconMaxSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatIconMaxSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 438
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGroupChatMaxParticipants()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatMaxParticipants()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGroupChatMessageMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatMessageMaxLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGroupChatMinParticipants()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatMinParticipants()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGroupChatSubjectMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getGroupChatSubjectMaxLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIsComposingActiveStateRefreshTimeout()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getIsComposingActiveStateRefreshTimeout()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 333
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIsComposingTimeout()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getIsComposingTimeout()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxStandaloneSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getMaxStandaloneSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 380
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOneToOneChatMessageMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getOneToOneChatMessageMaxLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOpenGroupChatMaxParticipants()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->getOpenGroupChatMaxParticipants()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 428
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isChatAutoAccepted()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isChatAutoAccepted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 302
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isChatWarnSF()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isChatWarnSF()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isGroupChatAutoAccepted()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isGroupChatAutoAccepted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 316
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isGroupChatSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isGroupChatSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isRequestDisplayReportsEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isRequestDisplayReportsEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isRespondToDisplayReportsEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isRespondToDisplayReportsEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSmsFallback()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->isSmsFallback()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIsComposingActiveStateRefreshTimeout(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->setIsComposingActiveStateRefreshTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 348
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setIsComposingTimeout(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->setIsComposingTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 363
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setIsTypingEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->setIsTypingEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 397
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMaxMMSSize(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->setMaxMMSSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 414
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setRequestDisplayReports(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->setRequestDisplayReports(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 286
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setRespondToDisplayReports(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->setRespondToDisplayReports(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 253
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
