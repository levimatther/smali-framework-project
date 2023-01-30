.class public Lverizon/net/sip/EABService;
.super Ljava/lang/Object;
.source "EABService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/EABService$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advertiseCapabilitiesAndAvailability(Lverizon/net/sip/EABService$Listener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lverizon/net/sip/EABService$Listener;",
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

    if-eqz p0, :cond_0

    .line 29
    new-instance v0, Lverizon/net/sip/IListenerImpl;

    invoke-direct {v0, p0}, Lverizon/net/sip/IListenerImpl;-><init>(Lverizon/net/sip/EABService$Listener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-static {}, Lverizon/net/sip/EABService;->getManager()Lverizon/net/sip/EabServiceManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2, p3}, Lverizon/net/sip/EabServiceManager;->advertiseCapabilitiesAndAvailability(Lverizon/net/sip/IListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result p0

    return p0
.end method

.method public static getAvailability([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/EABService$Listener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 37
    new-instance v0, Lverizon/net/sip/IListenerImpl;

    invoke-direct {v0, p2}, Lverizon/net/sip/IListenerImpl;-><init>(Lverizon/net/sip/EABService$Listener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-static {}, Lverizon/net/sip/EABService;->getManager()Lverizon/net/sip/EabServiceManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v0}, Lverizon/net/sip/EabServiceManager;->getAvailability([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/IListener;)Z

    move-result p0

    return p0
.end method

.method public static getCapabilities([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/EABService$Listener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 19
    new-instance v0, Lverizon/net/sip/IListenerImpl;

    invoke-direct {v0, p2}, Lverizon/net/sip/IListenerImpl;-><init>(Lverizon/net/sip/EABService$Listener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {}, Lverizon/net/sip/EABService;->getManager()Lverizon/net/sip/EabServiceManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v0}, Lverizon/net/sip/EabServiceManager;->getCapabilities([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/IListener;)Z

    move-result p0

    return p0
.end method

.method public static getEabServiceStatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-static {}, Lverizon/net/sip/EABService;->getManager()Lverizon/net/sip/EabServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lverizon/net/sip/EabServiceManager;->getEabServiceStatus()Z

    move-result v0

    return v0
.end method

.method private static getManager()Lverizon/net/sip/EabServiceManager;
    .locals 2

    .line 13
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "eabService"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lverizon/net/sip/EabServiceManager;

    return-object v0
.end method

.method public static setEabServiceStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lverizon/net/sip/EABService;->getManager()Lverizon/net/sip/EabServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lverizon/net/sip/EabServiceManager;->setEabServiceStatus(Z)V

    return-void
.end method

.method public static setFeatureTags(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lverizon/net/sip/EABService;->getManager()Lverizon/net/sip/EabServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lverizon/net/sip/EabServiceManager;->setFeatureTags(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
