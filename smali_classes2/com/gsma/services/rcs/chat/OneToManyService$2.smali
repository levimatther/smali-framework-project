.class Lcom/gsma/services/rcs/chat/OneToManyService$2;
.super Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;
.source "OneToManyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/OneToManyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/chat/OneToManyService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/OneToManyService;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyService$2;->this$0:Lcom/gsma/services/rcs/chat/OneToManyService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService$2;->this$0:Lcom/gsma/services/rcs/chat/OneToManyService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/OneToManyService;->access$600(Lcom/gsma/services/rcs/chat/OneToManyService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 587
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyService$2;->this$0:Lcom/gsma/services/rcs/chat/OneToManyService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/OneToManyService;->access$600(Lcom/gsma/services/rcs/chat/OneToManyService;)Ljava/util/Set;

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

    check-cast v2, Lcom/gsma/services/rcs/chat/OneToManyListener;

    if-eqz v2, :cond_1

    .line 590
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v6

    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 589
    invoke-virtual/range {v2 .. v7}, Lcom/gsma/services/rcs/chat/OneToManyListener;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V
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

    .line 597
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService$2;->this$0:Lcom/gsma/services/rcs/chat/OneToManyService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/OneToManyService;->access$600(Lcom/gsma/services/rcs/chat/OneToManyService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 600
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyService$2;->this$0:Lcom/gsma/services/rcs/chat/OneToManyService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/OneToManyService;->access$600(Lcom/gsma/services/rcs/chat/OneToManyService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/OneToManyListener;

    if-eqz v1, :cond_1

    .line 602
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/chat/OneToManyListener;->onMessagesDeleted(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUpdateRecipientsFinished(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService$2;->this$0:Lcom/gsma/services/rcs/chat/OneToManyService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/OneToManyService;->access$600(Lcom/gsma/services/rcs/chat/OneToManyService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 612
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyService$2;->this$0:Lcom/gsma/services/rcs/chat/OneToManyService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/OneToManyService;->access$600(Lcom/gsma/services/rcs/chat/OneToManyService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/OneToManyListener;

    if-eqz v1, :cond_1

    .line 614
    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/rcs/chat/OneToManyListener;->onUpdateRecipientsFinished(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
