.class public Lcom/gsma/rcs/service/ipcalldraft/IPCallServiceConfiguration;
.super Ljava/lang/Object;
.source "IPCallServiceConfiguration.java"


# instance fields
.field private final mIConfig:Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallServiceConfiguration;->mIConfig:Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;

    return-void
.end method


# virtual methods
.method public isVoiceCallBreakout()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallServiceConfiguration;->mIConfig:Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;->isVoiceCallBreakout()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
