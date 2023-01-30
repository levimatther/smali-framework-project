.class public interface abstract Lcom/gsma/services/rcs/standalone/IStandaloneService;
.super Ljava/lang/Object;
.source "IStandaloneService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;,
        Lcom/gsma/services/rcs/standalone/IStandaloneService$Default;
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

.method public abstract addStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteMessage(Ljava/lang/String;)V
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

.method public abstract getStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAllowedToSendStandaloneMessage()Z
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

.method public abstract markMessageAsRead(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reSendStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
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

.method public abstract removeStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendStandaloneMessage(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendStandaloneMessage2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendStandaloneMessageToGroup(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
