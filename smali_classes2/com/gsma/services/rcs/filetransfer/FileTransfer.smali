.class public Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/FileTransfer$MessageType;,
        Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;,
        Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;,
        Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;,
        Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    }
.end annotation


# instance fields
.field private final mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    return-void
.end method


# virtual methods
.method public abortTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->abortTransfer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 869
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 870
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public acceptInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 833
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;->assertException(Ljava/lang/Exception;)V

    .line 834
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 835
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 836
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getChatId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getChatId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 553
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 554
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 742
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 743
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDisposition()Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getDisposition()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1064
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 1065
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFile()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFile()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 687
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 688
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileExpiration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileExpiration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 1009
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 1010
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileIcon()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileIcon()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 653
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 654
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileIconExpiration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileIconExpiration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 1026
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 1027
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileIconMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileIconMimeType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 670
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 671
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 602
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 603
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 619
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 620
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getMimeType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 636
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 637
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 724
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 725
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 585
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 586
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 705
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 706
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTimestamp()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 761
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 762
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimestampDelivered()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTimestampDelivered()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 798
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 799
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimestampDisplayed()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTimestampDisplayed()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 816
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 817
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimestampSent()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTimestampSent()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 780
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 781
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTransferId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTransferId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 569
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToPauseTransfer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isAllowedToPauseTransfer()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 887
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToResendTransfer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 955
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isAllowedToResendTransfer()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 958
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 959
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToResumeTransfer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isAllowedToResumeTransfer()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 922
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 923
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isExpiredDelivery()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isExpiredDelivery()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1046
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 1047
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isRead()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isRead()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 992
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 993
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pauseTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->pauseTransfer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 901
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 902
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;->assertException(Ljava/lang/Exception;)V

    .line 903
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 852
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;->assertException(Ljava/lang/Exception;)V

    .line 853
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 854
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 855
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resendTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->resendTransfer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 974
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 975
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;->assertException(Ljava/lang/Exception;)V

    .line 976
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resumeTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 937
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->mTransferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->resumeTransfer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 939
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 940
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 941
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
