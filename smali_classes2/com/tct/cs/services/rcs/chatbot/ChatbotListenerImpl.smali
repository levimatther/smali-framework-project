.class public Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;
.super Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;
.source "ChatbotListenerImpl.java"


# instance fields
.field private final mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;


# direct methods
.method public constructor <init>(Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    return-void
.end method


# virtual methods
.method public broadcastUserNotify(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    invoke-static {p2}, Lcom/tct/cs/services/rcs/chatbot/UserEvent;->valueOf(I)Lcom/tct/cs/services/rcs/chatbot/UserEvent;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onUserNotify(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/UserEvent;)V

    return-void
.end method

.method public onAnonymousResultReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    invoke-static {p2}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    move-result-object p2

    invoke-static {p3}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onAnonymousResultReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;)V

    return-void
.end method

.method public onBotInfoReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onBotInfoReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V

    return-void
.end method

.method public onBotInfoRetrieveFailed(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onBotInfoRetrieveFailed(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V

    return-void
.end method

.method public onComposingEvent(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onComposingEvent(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V

    return-void
.end method

.method public onMessageReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onMessageReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;)V

    return-void
.end method

.method public onMessageStatusChanged(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v4

    .line 24
    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v5

    .line 25
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onMessageStatusChanged(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    return-void
.end method

.method public onMessagesDeleted(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;)V
    .locals 1
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

    .line 52
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onMessagesDeleted(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;)V

    return-void
.end method

.method public onReportSpamProcessed(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotListenerImpl;->mListener:Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;

    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;->onReportSpamProcessed(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V

    return-void
.end method
