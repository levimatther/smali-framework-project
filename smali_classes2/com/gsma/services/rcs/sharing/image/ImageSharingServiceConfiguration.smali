.class public Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
.super Ljava/lang/Object;
.source "ImageSharingServiceConfiguration.java"


# instance fields
.field mConfiguration:Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mConfiguration:Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration;

    return-void
.end method


# virtual methods
.method public getMaxSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mConfiguration:Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration;->getMaxSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
