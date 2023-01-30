.class public Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;
.super Ljava/lang/Object;
.source "MultimediaSessionServiceConfiguration.java"


# instance fields
.field private final mIConfig:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    return-void
.end method


# virtual methods
.method public getMessageMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->getMessageMaxLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMessagingSessionInactivityTimeout(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->getMessagingSessionInactivityTimeout(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isServiceActivated(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->isServiceActivated(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 86
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
