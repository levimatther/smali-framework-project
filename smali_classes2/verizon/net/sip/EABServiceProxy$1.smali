.class Lverizon/net/sip/EABServiceProxy$1;
.super Ljava/lang/Object;
.source "EABServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/EABServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lverizon/net/sip/EABServiceProxy;


# direct methods
.method constructor <init>(Lverizon/net/sip/EABServiceProxy;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lverizon/net/sip/EABServiceProxy$1;->this$0:Lverizon/net/sip/EABServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Eab onBindingDied with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EABServiceProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_0
    iget-object p1, p0, Lverizon/net/sip/EABServiceProxy$1;->this$0:Lverizon/net/sip/EABServiceProxy;

    invoke-virtual {p1}, Lverizon/net/sip/EABServiceProxy;->tryToStartService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "EABServiceProxy"

    const-string v0, "Eab onServiceConnected"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p0, Lverizon/net/sip/EABServiceProxy$1;->this$0:Lverizon/net/sip/EABServiceProxy;

    invoke-static {p2}, Lverizon/net/sip/IEABService$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/IEABService;

    move-result-object p2

    invoke-static {p1, p2}, Lverizon/net/sip/EABServiceProxy;->access$002(Lverizon/net/sip/EABServiceProxy;Lverizon/net/sip/IEABService;)Lverizon/net/sip/IEABService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "EABServiceProxy"

    const-string v0, "Eab onServiceDisconnected"

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lverizon/net/sip/EABServiceProxy$1;->this$0:Lverizon/net/sip/EABServiceProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lverizon/net/sip/EABServiceProxy;->access$002(Lverizon/net/sip/EABServiceProxy;Lverizon/net/sip/IEABService;)Lverizon/net/sip/IEABService;

    return-void
.end method
