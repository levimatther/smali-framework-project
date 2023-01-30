.class Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;
.super Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;
.source "UploadStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompressDataState"
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;


# direct methods
.method private constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V
    .locals 1

    .line 512
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V
    .locals 0

    .line 512
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V

    return-void
.end method

.method private compress()Z
    .locals 4

    .line 564
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getSameFileNameWithZipSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[compress]: zipFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    .line 569
    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/ZipUtils;->compress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->addTaskFlag(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enter()V
    .locals 2

    const-string v0, "[CompressDataState] enter"

    .line 515
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->isEnableCompress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1400(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1400(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 533
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x5

    .line 553
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->setDetailState(I)V

    .line 554
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1000(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;

    move-result-object p1

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;->onCompressUploadDataFailed()V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x4

    .line 548
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->setDetailState(I)V

    .line 549
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->addTaskFlag(I)V

    .line 550
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1400(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_0

    .line 535
    :pswitch_3
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->isEnableCompress()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 536
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->compress()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 537
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 542
    :cond_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    :goto_0
    :pswitch_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
