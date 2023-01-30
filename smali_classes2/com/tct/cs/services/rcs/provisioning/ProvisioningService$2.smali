.class Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;
.super Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Stub;
.source "ProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;


# direct methods
.method constructor <init>(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;->this$0:Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;

    invoke-direct {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceEndUserAckResponse(Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;->this$0:Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->access$600(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;->this$0:Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->access$600(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;

    if-eqz v1, :cond_1

    .line 341
    invoke-virtual {v1, p1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;->onServiceEndUserAckResponse(Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceEndUserConfirmationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;->this$0:Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->access$600(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;->this$0:Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->access$600(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v1, p1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;->onServiceEndUserConfirmationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceEndUserNotificationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsNotificationRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;->this$0:Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;

    invoke-static {v0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->access$600(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 351
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;->this$0:Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;

    invoke-static {v1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->access$600(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Ljava/util/Set;

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

    check-cast v1, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v1, p1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;->onServiceEndUserNotificationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsNotificationRequest;)V

    goto :goto_0

    :cond_2
    return-void
.end method
