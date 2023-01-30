.class Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;
.super Ljava/lang/Object;
.source "ChatbotService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 104
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->setApi(Landroid/os/IInterface;)V

    .line 108
    :try_start_0
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$000(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;->printStackTrace()V

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$100(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$200(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 119
    :try_start_0
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$300(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;->printStackTrace()V

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->setApi(Landroid/os/IInterface;)V

    .line 124
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$400(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;->this$0:Lcom/tct/cs/services/rcs/chatbot/ChatbotService;

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->access$500(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {p1, v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    return-void
.end method
