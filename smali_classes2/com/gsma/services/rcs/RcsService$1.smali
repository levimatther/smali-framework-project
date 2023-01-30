.class Lcom/gsma/services/rcs/RcsService$1;
.super Landroid/content/BroadcastReceiver;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/RcsService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/RcsService;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService$1;->this$0:Lcom/gsma/services/rcs/RcsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 507
    :goto_0
    invoke-static {}, Lcom/gsma/services/rcs/RcsService;->access$000()Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive,action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gsma/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    const-string p2, "com.gsma.services.rcs.action.SERVICE_UP"

    .line 508
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 510
    :try_start_0
    iget-object p1, p0, Lcom/gsma/services/rcs/RcsService$1;->this$0:Lcom/gsma/services/rcs/RcsService;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsService;->connect()V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 512
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
