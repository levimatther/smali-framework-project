.class Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataHubLocalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)V
    .locals 0

    .line 95
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;->this$0:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onReceive]: action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DataHubManagerService-Local"

    invoke-static {v0, p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v0, :cond_2

    const v0, -0x56ac2893

    if-eq p2, v0, :cond_1

    const v0, -0x45e5283a

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_2

    .line 111
    :cond_4
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;->this$0:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->access$100(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)Ltct/gpdatahub/sdk/gpupload/IProcessor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 112
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;->this$0:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->access$000(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object p1

    invoke-interface {p1, v3}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onScreenChanged(Z)V

    goto :goto_2

    .line 106
    :cond_5
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;->this$0:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->access$100(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)Ltct/gpdatahub/sdk/gpupload/IProcessor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 107
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;->this$0:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->access$000(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object p1

    invoke-interface {p1, v1}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onScreenChanged(Z)V

    goto :goto_2

    .line 103
    :cond_6
    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;->this$0:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-static {p2}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->access$000(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object p2

    invoke-interface {p2, p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onPhoneStatusChanged(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
