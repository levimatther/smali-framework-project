.class public Lcom/tct/cs/services/rcs/provisioning/ProvisioningListenerImpl;
.super Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Stub;
.source "ProvisioningListenerImpl.java"


# instance fields
.field private final mListener:Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;


# direct methods
.method public constructor <init>(Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Stub;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListenerImpl;->mListener:Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;

    return-void
.end method


# virtual methods
.method public onServiceEndUserAckResponse(Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListenerImpl;->mListener:Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;

    invoke-virtual {v0, p1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;->onServiceEndUserAckResponse(Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;)V

    return-void
.end method

.method public onServiceEndUserConfirmationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListenerImpl;->mListener:Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;

    invoke-virtual {v0, p1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;->onServiceEndUserConfirmationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;)V

    return-void
.end method

.method public onServiceEndUserNotificationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsNotificationRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListenerImpl;->mListener:Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;

    invoke-virtual {v0, p1}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;->onServiceEndUserNotificationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsNotificationRequest;)V

    return-void
.end method
