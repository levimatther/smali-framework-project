.class Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;
.super Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;
.source "UploadStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptDataState"
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;


# direct methods
.method private constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V
    .locals 1

    .line 434
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V

    return-void
.end method

.method private encrypt()Z
    .locals 5

    .line 489
    new-instance v0, Ltct/gpdatahub/sdk/common/utils/DESUtil;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/common/utils/DESUtil;-><init>()V

    .line 490
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getFileNameWithoutSuffix(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_en.josn"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[encrypt]: encryptFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ltct/gpdatahub/sdk/common/utils/DESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 504
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->setLocalPath(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->addTaskFlag(I)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 499
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enter()V
    .locals 2

    const-string v0, "[EncryptDataState] enter"

    .line 437
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->isEnableEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1300(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_0

    .line 450
    :cond_2
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1300(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 456
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    .line 478
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->setDetailState(I)V

    .line 479
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1000(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;

    move-result-object p1

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;->onEncryptUploadDataFailed()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 473
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->setDetailState(I)V

    .line 474
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->addTaskFlag(I)V

    .line 475
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1300(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->setDetailState(I)V

    .line 470
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[EncryptDataState]: MSG_TASK_ENCRYPT_DATA_WAITING"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_3
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->isEnableEncrypt()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 459
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->encrypt()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 460
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-virtual {p1, v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 462
    :cond_4
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-virtual {p1, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 465
    :cond_5
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-virtual {p1, v3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
