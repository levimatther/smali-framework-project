.class public interface abstract Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;
.super Ljava/lang/Object;
.source "ChatbotListener.java"


# virtual methods
.method public abstract onAnonymousResultReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;)V
.end method

.method public abstract onBotInfoReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
.end method

.method public abstract onBotInfoRetrieveFailed(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
.end method

.method public abstract onComposingEvent(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
.end method

.method public abstract onMessageReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;)V
.end method

.method public abstract onMessageStatusChanged(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
.end method

.method public abstract onMessagesDeleted(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReportSpamProcessed(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
.end method

.method public abstract onUserNotify(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/UserEvent;)V
.end method
