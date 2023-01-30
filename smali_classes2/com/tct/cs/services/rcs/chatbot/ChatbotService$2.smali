.class Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;
.super Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;
.source "ChatbotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/ChatbotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;


# direct methods
.method constructor <init>(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-direct {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastUserNotify(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1117
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v1, :cond_1

    .line 1119
    invoke-static {p2}, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->valueOf(I)Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onUserNotify(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/UserEvent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAnonymousResultReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1093
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v1, :cond_1

    .line 1095
    invoke-static {p2}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    move-result-object v2

    invoke-static {p3}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onAnonymousResultReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onBotInfoReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1045
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v1, :cond_1

    .line 1047
    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onBotInfoReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onBotInfoRetrieveFailed(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1105
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v1, :cond_1

    .line 1107
    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onBotInfoRetrieveFailed(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onComposingEvent(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1033
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v1, :cond_1

    .line 1035
    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onComposingEvent(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1069
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v1, :cond_1

    .line 1071
    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onMessageReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageStatusChanged(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1017
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1020
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v2, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v2, :cond_1

    .line 1023
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v6

    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1022
    invoke-interface/range {v2 .. v7}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onMessageStatusChanged(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessagesDeleted(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
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

    .line 1054
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1057
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v1, :cond_1

    .line 1059
    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onMessagesDeleted(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onReportSpamProcessed(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1081
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    if-eqz v1, :cond_1

    .line 1083
    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onReportSpamProcessed(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
