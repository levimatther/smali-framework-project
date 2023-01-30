.class Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;
.super Ljava/lang/Object;
.source "IPCallService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/rcs/service/ipcalldraft/IPCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;


# direct methods
.method constructor <init>(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->setApi(Landroid/os/IInterface;)V

    .line 131
    :try_start_0
    iget-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->access$000(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;->printStackTrace()V

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->access$100(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->access$200(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 142
    :try_start_0
    iget-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->access$300(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;->printStackTrace()V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->setApi(Landroid/os/IInterface;)V

    .line 147
    iget-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->access$400(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->access$500(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {p1, v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    return-void
.end method
