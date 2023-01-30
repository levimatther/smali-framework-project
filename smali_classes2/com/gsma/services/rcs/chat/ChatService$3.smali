.class Lcom/gsma/services/rcs/chat/ChatService$3;
.super Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;
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

    .line 676
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 694
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/GroupChatListener;

    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {v1, p1, p2, p3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDeleted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 741
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 744
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/GroupChatListener;

    if-eqz v1, :cond_1

    .line 746
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onDeleted(Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 719
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v2, Lcom/gsma/services/rcs/chat/GroupChatListener;

    if-eqz v2, :cond_1

    .line 722
    invoke-static {p5}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v7

    invoke-static {p6}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    move-result-object v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 721
    invoke-virtual/range {v2 .. v8}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 706
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v2, Lcom/gsma/services/rcs/chat/GroupChatListener;

    if-eqz v2, :cond_1

    .line 709
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v6

    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 708
    invoke-virtual/range {v2 .. v7}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

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

    .line 753
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 756
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/GroupChatListener;

    if-eqz v1, :cond_1

    .line 758
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessagesDeleted(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 732
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/GroupChatListener;

    if-eqz v1, :cond_1

    .line 734
    invoke-static {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 682
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/GroupChatListener;

    if-eqz v1, :cond_1

    .line 684
    invoke-static {p2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v2

    invoke-static {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUserNotify(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 768
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService$3;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {v1}, Lcom/gsma/services/rcs/chat/ChatService;->access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/chat/GroupChatListener;

    if-eqz v1, :cond_1

    .line 770
    invoke-static {p2}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onUserNotify(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;)V

    goto :goto_0

    :cond_2
    return-void
.end method
