.class public Lcom/gsma/services/rcs/upload/FileUploadListenerImpl;
.super Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;
.source "FileUploadListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/upload/FileUploadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/gsma/services/rcs/upload/FileUploadListenerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/upload/FileUploadListener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadListenerImpl;->mListener:Lcom/gsma/services/rcs/upload/FileUploadListener;

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadListenerImpl;->mListener:Lcom/gsma/services/rcs/upload/FileUploadListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onProgressUpdate(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;I)V
    .locals 1

    .line 42
    :try_start_0
    invoke-static {p2}, Lcom/gsma/services/rcs/upload/FileUpload$State;->valueOf(I)Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadListenerImpl;->mListener:Lcom/gsma/services/rcs/upload/FileUploadListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V

    return-void

    :catch_0
    move-exception p1

    .line 49
    sget-object p2, Lcom/gsma/services/rcs/upload/FileUploadListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadListenerImpl;->mListener:Lcom/gsma/services/rcs/upload/FileUploadListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V

    return-void
.end method
