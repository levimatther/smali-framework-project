.class public Lcom/gsma/services/rcs/CommonServiceConfiguration;
.super Ljava/lang/Object;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$DiallerMethod;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/ICommonServiceConfiguration;Landroid/content/Context;)V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    .line 290
    iput-object p2, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBuildVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getBuildVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 746
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDefaultDiallerMethod()Lcom/gsma/services/rcs/CommonServiceConfiguration$DiallerMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getDefaultDiallerMethod()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$DiallerMethod;->valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$DiallerMethod;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 448
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDefaultMessagingMethod()Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getDefaultMessagingMethod()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 416
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMessagingUX()Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getMessagingUX()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMinimumBatteryLevel()Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getMinimumBatteryLevel()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 385
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMyContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getMyContactId()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMyDisplayName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getMyDisplayName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRcsVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 718
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSpamNotificationText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 955
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getSpamNotificationText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 957
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getThrottlingValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getThrottlingValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 558
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTokenLinkNotificationText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getTokenLinkNotificationText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 971
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUPVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getUPVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 732
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUnavailableEndpointText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getUnavailableEndpointText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 944
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVideoAndEncallUx()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    if-eqz v0, :cond_0

    .line 866
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->getVideoAndEncallUx()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 868
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 863
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "CommonServiceConfiguration not init"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBlockChatEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isBlockChatEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 798
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBlockFiletransferEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    if-eqz v0, :cond_0

    .line 883
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isBlockFiletransferEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 885
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 880
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "CommonServiceConfiguration not init"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBlockOneToManyEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    if-eqz v0, :cond_0

    .line 835
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isBlockOneToManyEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 837
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 832
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "CommonServiceConfiguration not init"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBlockStandaloneEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    if-eqz v0, :cond_0

    .line 773
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isBlockStandaloneEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 775
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 770
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "CommonServiceConfiguration not init"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCallComposerSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isCallComposerSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 618
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isChatSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isChatSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 823
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isConfigValid()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isConfigValid()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDisplayMsgTech()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isDisplayMsgTech()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 914
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDisplayNotificationSwitchEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isDisplayNotificationSwitchEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 609
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isIR94VideoAUTH()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    if-eqz v0, :cond_0

    .line 761
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isIR94VideoAUTH()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 763
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 758
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v1, "CommonServiceConfiguration not init"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPrivacyDisable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isPrivacyDisable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 930
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSupportAggreationIMDN()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isSupportAggreationIMDN()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 525
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSupportChatbot()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isSupportChatbot()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 483
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSupportFToHTTP()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isSupportFToHTTP()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 539
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSupportGeolocationByFT()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isSupportGeolocationByFT()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 511
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSupportOGC()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isSupportOGC()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 497
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSupportOneToMany()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isSupportOneToMany()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 703
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSupportUP()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isSupportUP()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 572
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSupportUserAlias()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->isSupportUserAlias()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 588
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBlockChatEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->setBlockChatEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 811
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBlockFiletransferEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->setBlockFiletransferEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 897
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBlockOneToManyEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->setBlockOneToManyEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 845
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBlockStandaloneEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->setBlockStandaloneEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 783
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setDefaultDiallerMethod(Lcom/gsma/services/rcs/CommonServiceConfiguration$DiallerMethod;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$DiallerMethod;->toInt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->setDefaultDiallerMethod(I)V

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tct.cs.rcs.action.DEFAULT_DIALLER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "get_default_dialler_messaging"

    .line 462
    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$DiallerMethod;->RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$DiallerMethod;

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    iget-object p1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 465
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setDefaultMessagingMethod(Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->toInt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->setDefaultMessagingMethod(I)V

    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tct.cs.rcs.action.DEFAULT_SMS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "get_default_sms_messaging"

    .line 430
    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    iget-object p1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 433
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMinimumBatteryLevel(Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->toInt()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->setMinimumBatteryLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 401
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMyDisplayName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mIConfig:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->setMyDisplayName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 337
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 338
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 339
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
