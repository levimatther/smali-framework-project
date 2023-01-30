.class public Lverizon/net/sip/EabServiceManager;
.super Ljava/lang/Object;
.source "EabServiceManager.java"


# instance fields
.field private mProxy:Lverizon/net/sip/IEABServiceProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lverizon/net/sip/IEABServiceProxy;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lverizon/net/sip/EabServiceManager;->mProxy:Lverizon/net/sip/IEABServiceProxy;

    return-void
.end method


# virtual methods
.method public advertiseCapabilitiesAndAvailability(Lverizon/net/sip/IListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lverizon/net/sip/IListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lverizon/net/sip/EabServiceManager;->mProxy:Lverizon/net/sip/IEABServiceProxy;

    invoke-interface {v0}, Lverizon/net/sip/IEABServiceProxy;->getEabService()Lverizon/net/sip/IEABService;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {p4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    new-instance v3, Lverizon/net/sip/AvailabilityPolicy;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v3, v4, v2}, Lverizon/net/sip/AvailabilityPolicy;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v0, p1, p2, p3, v1}, Lverizon/net/sip/IEABService;->advertiseCapabilitiesAndAvailability(Lverizon/net/sip/IListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    return p1

    .line 35
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Eab server not start!"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAvailability([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/IListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lverizon/net/sip/EabServiceManager;->mProxy:Lverizon/net/sip/IEABServiceProxy;

    invoke-interface {v0}, Lverizon/net/sip/IEABServiceProxy;->getEabService()Lverizon/net/sip/IEABService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1, p2, p3}, Lverizon/net/sip/IEABService;->getAvailability([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/IListener;)Z

    move-result p1

    return p1

    .line 50
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Eab server not start!"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCapabilities([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/IListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lverizon/net/sip/EabServiceManager;->mProxy:Lverizon/net/sip/IEABServiceProxy;

    invoke-interface {v0}, Lverizon/net/sip/IEABServiceProxy;->getEabService()Lverizon/net/sip/IEABService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1, p2, p3}, Lverizon/net/sip/IEABService;->getCapabilities([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/IListener;)Z

    move-result p1

    return p1

    .line 26
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Eab server not start!"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEabServiceStatus()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lverizon/net/sip/EabServiceManager;->mProxy:Lverizon/net/sip/IEABServiceProxy;

    invoke-interface {v0}, Lverizon/net/sip/IEABServiceProxy;->getEabService()Lverizon/net/sip/IEABService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lverizon/net/sip/IEABService;->getEabServiceStatus()Z

    move-result v0

    return v0

    .line 74
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Eab server not start!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEabServiceStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lverizon/net/sip/EabServiceManager;->mProxy:Lverizon/net/sip/IEABServiceProxy;

    invoke-interface {v0}, Lverizon/net/sip/IEABServiceProxy;->getEabService()Lverizon/net/sip/IEABService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lverizon/net/sip/IEABService;->setEabServiceStatus(Z)V

    return-void

    .line 66
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "Eab server not start!"

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFeatureTags(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lverizon/net/sip/EabServiceManager;->mProxy:Lverizon/net/sip/IEABServiceProxy;

    invoke-interface {v0}, Lverizon/net/sip/IEABServiceProxy;->getEabService()Lverizon/net/sip/IEABService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1, p2}, Lverizon/net/sip/IEABService;->setFeatureTags(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Eab server not start!"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryToStartService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lverizon/net/sip/EabServiceManager;->mProxy:Lverizon/net/sip/IEABServiceProxy;

    invoke-interface {v0}, Lverizon/net/sip/IEABServiceProxy;->tryToStartService()V

    return-void
.end method
