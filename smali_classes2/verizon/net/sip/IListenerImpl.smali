.class public Lverizon/net/sip/IListenerImpl;
.super Lverizon/net/sip/IListener$Stub;
.source "IListenerImpl.java"


# instance fields
.field private mL:Lverizon/net/sip/EABService$Listener;


# direct methods
.method public constructor <init>(Lverizon/net/sip/EABService$Listener;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lverizon/net/sip/IListener$Stub;-><init>()V

    .line 12
    iput-object p1, p0, Lverizon/net/sip/IListenerImpl;->mL:Lverizon/net/sip/EABService$Listener;

    return-void
.end method


# virtual methods
.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lverizon/net/sip/IListenerImpl;->mL:Lverizon/net/sip/EABService$Listener;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Lverizon/net/sip/EABService$Listener;->onCapabilityAndAvailabilityPublished(I)V

    :cond_0
    return-void
.end method

.method public onServiceCapabilityAndAvailabilityReceived(ILjava/lang/String;[Lverizon/net/sip/SipProfile;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lverizon/net/sip/IListenerImpl;->mL:Lverizon/net/sip/EABService$Listener;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1, p2, p3, p4}, Lverizon/net/sip/EABService$Listener;->onServiceCapabilityAndAvailabilityReceived(ILjava/lang/String;[Lverizon/net/sip/SipProfile;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
