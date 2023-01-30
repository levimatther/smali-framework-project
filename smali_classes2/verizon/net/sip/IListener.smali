.class public interface abstract Lverizon/net/sip/IListener;
.super Ljava/lang/Object;
.source "IListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/IListener$Stub;,
        Lverizon/net/sip/IListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCapabilityAndAvailabilityPublished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceCapabilityAndAvailabilityReceived(ILjava/lang/String;[Lverizon/net/sip/SipProfile;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
