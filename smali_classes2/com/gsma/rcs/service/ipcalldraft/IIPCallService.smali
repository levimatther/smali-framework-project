.class public interface abstract Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;
.super Ljava/lang/Object;
.source "IIPCallService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;,
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Default;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract addEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCommonConfiguration()Lcom/gsma/services/rcs/ICommonServiceConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConfiguration()Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIPCall(Ljava/lang/String;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIPCalls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServiceRegistrationReasonCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServiceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initiateCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initiateVisioCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isServiceRegistered()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
