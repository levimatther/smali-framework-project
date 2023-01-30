.class public Lverizon/net/sip/EABServiceProxy;
.super Lverizon/net/sip/IEABServiceProxy$Stub;
.source "EABServiceProxy.java"


# static fields
.field private static final SERVER_PKG:Ljava/lang/String; = "com.tct.cs.rcs"


# instance fields
.field private mApi:Lverizon/net/sip/IEABService;

.field private final mApiConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lverizon/net/sip/IEABServiceProxy$Stub;-><init>()V

    .line 24
    new-instance v0, Lverizon/net/sip/EABServiceProxy$1;

    invoke-direct {v0, p0}, Lverizon/net/sip/EABServiceProxy$1;-><init>(Lverizon/net/sip/EABServiceProxy;)V

    iput-object v0, p0, Lverizon/net/sip/EABServiceProxy;->mApiConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lverizon/net/sip/EABServiceProxy;Lverizon/net/sip/IEABService;)Lverizon/net/sip/IEABService;
    .locals 0

    .line 12
    iput-object p1, p0, Lverizon/net/sip/EABServiceProxy;->mApi:Lverizon/net/sip/IEABService;

    return-object p1
.end method


# virtual methods
.method public getEabService()Lverizon/net/sip/IEABService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lverizon/net/sip/EABServiceProxy;->mApi:Lverizon/net/sip/IEABService;

    return-object v0
.end method

.method public tryToStartService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lverizon/net/sip/IEABService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 21
    iget-object v2, p0, Lverizon/net/sip/EABServiceProxy;->mApiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
