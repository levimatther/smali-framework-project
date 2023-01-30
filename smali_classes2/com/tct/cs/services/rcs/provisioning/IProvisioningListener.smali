.class public interface abstract Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;
.super Ljava/lang/Object;
.source "IProvisioningListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Stub;,
        Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onServiceEndUserAckResponse(Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceEndUserConfirmationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceEndUserNotificationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsNotificationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
