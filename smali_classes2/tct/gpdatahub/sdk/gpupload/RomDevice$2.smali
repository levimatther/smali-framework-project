.class Ltct/gpdatahub/sdk/gpupload/RomDevice$2;
.super Ljava/lang/Object;
.source "RomDevice.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/gpupload/RomDevice;->sendHeadBeatToServerIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/gpupload/RomDevice;)V
    .locals 0

    .line 436
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Message;)V
    .locals 4

    .line 439
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendHeadBeatToServerIfNeed]:  onResult what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 442
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendHeadBeatToServerIfNeed]: success msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$500(Ltct/gpdatahub/sdk/gpupload/RomDevice;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 449
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$600(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ltct/gpdatahub/sdk/gpupload/IProcessor;

    move-result-object p1

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->onRequestConfigFromServer()V

    goto :goto_2

    .line 453
    :cond_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->uploadFixedRecIfNeed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 458
    :cond_2
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$700(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    .line 459
    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$100(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadPolicyFlag()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_1

    .line 465
    :cond_3
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->uploadDailyDataIfNeed()Z

    goto :goto_2

    .line 460
    :cond_4
    :goto_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$600(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ltct/gpdatahub/sdk/gpupload/IProcessor;

    move-result-object p1

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 462
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$800(Ltct/gpdatahub/sdk/gpupload/RomDevice;)I

    move-result v0

    invoke-interface {p1, v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onRequireUploadNewTask(I)V

    goto :goto_2

    .line 469
    :cond_5
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[sendHeadBeatToServerIfNeed]: failed"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_6
    :goto_2
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$2;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$902(Ltct/gpdatahub/sdk/gpupload/RomDevice;Z)Z

    return-void
.end method
