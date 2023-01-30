.class Lcom/gsma/services/rcs/chat/ChatService$1;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 137
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {p2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatService;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gsma/services/rcs/chat/ChatService;->setApi(Landroid/os/IInterface;)V

    .line 141
    :try_start_0
    iget-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/ChatService;->access$000(Lcom/gsma/services/rcs/chat/ChatService;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;->printStackTrace()V

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/ChatService;->access$100(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/ChatService;->access$200(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 152
    :try_start_0
    iget-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/ChatService;->access$300(Lcom/gsma/services/rcs/chat/ChatService;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;->printStackTrace()V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/chat/ChatService;->setApi(Landroid/os/IInterface;)V

    .line 157
    iget-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/ChatService;->access$400(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/ChatService;->access$500(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {p1, v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    return-void
.end method
