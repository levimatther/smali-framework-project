.class public Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
.super Ljava/lang/Object;
.source "VideoSharingServiceConfiguration.java"


# instance fields
.field mConfiguration:Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->mConfiguration:Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;

    return-void
.end method


# virtual methods
.method public getMaxTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->mConfiguration:Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;->getMaxTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
