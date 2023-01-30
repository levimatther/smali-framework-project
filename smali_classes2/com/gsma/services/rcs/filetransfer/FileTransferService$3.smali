.class Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;
.super Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;
.source "FileTransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 1064
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1067
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {v1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    if-eqz v1, :cond_1

    .line 1069
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onDeleted(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1042
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {v1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    if-eqz v2, :cond_1

    .line 1045
    invoke-static {p4}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v6

    invoke-static {p5}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1044
    invoke-virtual/range {v2 .. v7}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1055
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {v1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    if-eqz v2, :cond_1

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .line 1057
    invoke-virtual/range {v2 .. v8}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1030
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {v1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    if-eqz v1, :cond_1

    .line 1032
    invoke-static {p3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v2

    invoke-static {p4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method
