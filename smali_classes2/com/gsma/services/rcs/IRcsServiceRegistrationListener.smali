.class public interface abstract Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
.super Ljava/lang/Object;
.source "IRcsServiceRegistrationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;,
        Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onServiceRegistered()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceUnregistered(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
