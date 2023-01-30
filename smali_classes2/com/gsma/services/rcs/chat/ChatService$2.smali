.class Lcom/gsma/services/rcs/chat/ChatService$2;
.super Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/chat/ChatService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/ChatService;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$600(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$600(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$600(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$600(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v2, Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    if-eqz v2, :cond_1

    .line 645
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v6

    .line 646
    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 645
    invoke-virtual/range {v2 .. v7}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

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

    .line 665
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$600(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 668
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$2;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$600(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    if-eqz v1, :cond_1

    .line 670
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method
