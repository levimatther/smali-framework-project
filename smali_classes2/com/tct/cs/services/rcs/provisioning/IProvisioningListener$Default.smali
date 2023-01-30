.class public Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Default;
.super Ljava/lang/Object;
.source "IProvisioningListener.java"

# interfaces
.implements Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceEndUserAckResponse(Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onServiceEndUserConfirmationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onServiceEndUserNotificationRequest(Lcom/tct/cs/services/rcs/provisioning/TermsNotificationRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
