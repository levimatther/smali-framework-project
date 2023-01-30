.class Lcom/gsma/services/rcs/standalone/StandaloneService$2;
.super Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;
.source "StandaloneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/StandaloneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/standalone/StandaloneService;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupStandaloneDeleted(Ljava/lang/String;Ljava/util/List;)V
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

    .line 406
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v1}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/standalone/StandaloneListener;

    if-eqz v1, :cond_1

    .line 411
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onGroupStandaloneDeleted(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageStatusChanged(Ljava/lang/String;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v1}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/standalone/StandaloneListener;

    if-eqz v1, :cond_1

    .line 386
    invoke-static {p2}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    move-result-object v2

    .line 387
    invoke-static {p3}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    move-result-object v3

    .line 386
    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onMessageStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 3
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

    .line 394
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v1}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/standalone/StandaloneListener;

    if-eqz v1, :cond_1

    .line 399
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onNewStandaloneMessageReceived(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 421
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v1}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/standalone/StandaloneListener;

    if-eqz v1, :cond_1

    .line 423
    new-instance v2, Lcom/gsma/services/rcs/standalone/StandaloneMessage;

    invoke-direct {v2, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;-><init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V

    invoke-virtual {v1, v2}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onNewStandaloneMessageReceived(Lcom/gsma/services/rcs/standalone/StandaloneMessage;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSendFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService$2;->this$0:Lcom/gsma/services/rcs/standalone/StandaloneService;

    invoke-static {v1}, Lcom/gsma/services/rcs/standalone/StandaloneService;->access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/standalone/StandaloneListener;

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v1, p1, p2, p3}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onSendFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
