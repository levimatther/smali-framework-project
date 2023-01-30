.class Lcom/gsma/services/rcs/RcsService$2;
.super Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/RcsService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/RcsService;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService$2;->this$0:Lcom/gsma/services/rcs/RcsService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceRegistered()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService$2;->this$0:Lcom/gsma/services/rcs/RcsService;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService;->access$100(Lcom/gsma/services/rcs/RcsService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 549
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService$2;->this$0:Lcom/gsma/services/rcs/RcsService;

    invoke-static {v1}, Lcom/gsma/services/rcs/RcsService;->access$100(Lcom/gsma/services/rcs/RcsService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/RcsServiceRegistrationListener;

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceUnregistered(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService$2;->this$0:Lcom/gsma/services/rcs/RcsService;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService;->access$100(Lcom/gsma/services/rcs/RcsService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 561
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService$2;->this$0:Lcom/gsma/services/rcs/RcsService;

    invoke-static {v1}, Lcom/gsma/services/rcs/RcsService;->access$100(Lcom/gsma/services/rcs/RcsService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/RcsServiceRegistrationListener;

    if-eqz v1, :cond_1

    .line 563
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gsma/services/rcs/RcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method
