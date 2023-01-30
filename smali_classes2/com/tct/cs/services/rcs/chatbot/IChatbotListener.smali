.class public interface abstract Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;
.super Ljava/lang/Object;
.source "IChatbotListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;,
        Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Default;
    }
.end annotation


# virtual methods
.method public abstract broadcastUserNotify(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAnonymousResultReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBotInfoReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBotInfoRetrieveFailed(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onComposingEvent(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMessageReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMessageStatusChanged(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReportSpamProcessed(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
