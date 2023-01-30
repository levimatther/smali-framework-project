.class public Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
.super Ljava/lang/Object;
.source "FileUploadServiceConfiguration.java"


# instance fields
.field mConfiguration:Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;->mConfiguration:Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;

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

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;->mConfiguration:Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;->getMaxSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
