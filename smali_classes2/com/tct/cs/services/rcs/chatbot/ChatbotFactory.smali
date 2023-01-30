.class public Lcom/tct/cs/services/rcs/chatbot/ChatbotFactory;
.super Ljava/lang/Object;
.source "ChatbotFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBotId(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/BotId;
    .locals 1

    .line 26
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/BotId;

    invoke-direct {v0, p0}, Lcom/tct/cs/services/rcs/chatbot/BotId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
