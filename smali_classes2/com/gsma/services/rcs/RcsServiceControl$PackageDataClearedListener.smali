.class Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;
.super Landroid/content/BroadcastReceiver;
.source "RcsServiceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsServiceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDataClearedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/RcsServiceControl;


# direct methods
.method private constructor <init>(Lcom/gsma/services/rcs/RcsServiceControl;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gsma/services/rcs/RcsServiceControl;Lcom/gsma/services/rcs/RcsServiceControl$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;-><init>(Lcom/gsma/services/rcs/RcsServiceControl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.tct.cs.rcs"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceControl;->access$000()Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive(),rcs stopped,restart it. this="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceControl;->access$000()Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object p1

    const-string p2, "com.gsma.rcs.service.RestartService"

    invoke-virtual {p1, p2}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 107
    :try_start_0
    iget-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceControl;->access$100(Lcom/gsma/services/rcs/RcsServiceControl;)Lcom/gsma/services/rcs/RestartService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$PackageDataClearedListener;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceControl;->access$100(Lcom/gsma/services/rcs/RcsServiceControl;)Lcom/gsma/services/rcs/RestartService;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/gsma/services/rcs/RestartService;->restartRcsService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
