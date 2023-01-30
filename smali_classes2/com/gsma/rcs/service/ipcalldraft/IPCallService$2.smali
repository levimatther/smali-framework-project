.class Lcom/gsma/rcs/service/ipcalldraft/IPCallService$2;
.super Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener$Stub;
.source "IPCallService.java"


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

    .line 334
    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$2;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onIPCallStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$2;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {v0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->access$600(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$2;->this$0:Lcom/gsma/rcs/service/ipcalldraft/IPCallService;

    invoke-static {v1}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->access$600(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;

    if-eqz v1, :cond_1

    .line 342
    invoke-static {p3}, Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;->valueOf(I)Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;

    move-result-object v2

    invoke-static {p4}, Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;->valueOf(I)Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;->onIPCallStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method
