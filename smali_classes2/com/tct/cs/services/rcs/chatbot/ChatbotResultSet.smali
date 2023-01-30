.class public Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;
.super Ljava/lang/Object;
.source "ChatbotResultSet.java"


# instance fields
.field private mResultSet:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;


# direct methods
.method public constructor <init>(Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;->mResultSet:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    return-void
.end method


# virtual methods
.method public getBots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/Bot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;->mResultSet:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;->getBots()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/Bot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;->mResultSet:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;->getMore()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMore()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;->mResultSet:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;->isMore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
