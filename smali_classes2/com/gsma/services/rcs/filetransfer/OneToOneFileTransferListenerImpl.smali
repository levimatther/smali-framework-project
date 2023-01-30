.class public Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListenerImpl;
.super Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;
.source "OneToOneFileTransferListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListenerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListenerImpl;->mListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListenerImpl;->mListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method

.method public onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListenerImpl;->mListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 1

    .line 48
    :try_start_0
    invoke-static {p3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object p3

    .line 49
    invoke-static {p4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListenerImpl;->mListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 56
    sget-object p2, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string p3, "onStateChanged"

    invoke-virtual {p2, p3, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
