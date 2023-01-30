.class public interface abstract Lverizon/net/sip/IEABServiceProxy;
.super Ljava/lang/Object;
.source "IEABServiceProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/IEABServiceProxy$Stub;,
        Lverizon/net/sip/IEABServiceProxy$Default;
    }
.end annotation


# virtual methods
.method public abstract getEabService()Lverizon/net/sip/IEABService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract tryToStartService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
