.class Lcom/gsma/services/rcs/RcsServiceControl$1;
.super Ljava/lang/Object;
.source "RcsServiceControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsServiceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/RcsServiceControl;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/RcsServiceControl;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$1;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 557
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceControl;->access$000()Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object p1

    const-string v0, "onServiceConnected()"

    invoke-virtual {p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$1;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-static {p2}, Lcom/gsma/services/rcs/RestartService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/RestartService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gsma/services/rcs/RcsServiceControl;->access$102(Lcom/gsma/services/rcs/RcsServiceControl;Lcom/gsma/services/rcs/RestartService;)Lcom/gsma/services/rcs/RestartService;

    .line 559
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceControl;->access$000()Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "binded,mRestartService="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl$1;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->access$100(Lcom/gsma/services/rcs/RcsServiceControl;)Lcom/gsma/services/rcs/RestartService;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 564
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceControl;->access$000()Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-virtual {p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 565
    iget-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$1;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gsma/services/rcs/RcsServiceControl;->access$102(Lcom/gsma/services/rcs/RcsServiceControl;Lcom/gsma/services/rcs/RestartService;)Lcom/gsma/services/rcs/RestartService;

    .line 566
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceControl;->access$000()Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbinded,mRestartService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsServiceControl$1;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-static {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->access$100(Lcom/gsma/services/rcs/RcsServiceControl;)Lcom/gsma/services/rcs/RestartService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 568
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 569
    iget-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$1;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceControl;->access$400(Lcom/gsma/services/rcs/RcsServiceControl;)V

    .line 570
    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceControl;->access$000()Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebinded,mRestartService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsServiceControl$1;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-static {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->access$100(Lcom/gsma/services/rcs/RcsServiceControl;)Lcom/gsma/services/rcs/RestartService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 572
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
