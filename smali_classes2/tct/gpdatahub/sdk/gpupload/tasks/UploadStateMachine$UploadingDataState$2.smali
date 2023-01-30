.class Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState$2;
.super Ljava/lang/Object;
.source "UploadStateMachine.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;->requestConfigFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;)V
    .locals 0

    .line 886
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState$2;->this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Message;)V
    .locals 3

    .line 889
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState$2;->this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;

    iget-object v0, v0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestConfigFromServer]: onResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState$2;->this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;

    iget-object v0, v0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 891
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1b

    .line 898
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 899
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 900
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    .line 893
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 894
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 895
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState$2;->this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;

    iget-object p1, p1, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
