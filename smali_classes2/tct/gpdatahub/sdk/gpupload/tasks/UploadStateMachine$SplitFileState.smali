.class Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;
.super Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;
.source "UploadStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitFileState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;
    }
.end annotation


# static fields
.field private static final MAX_UPLOAD_FILE_SIZE:I = 0x80000


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;


# direct methods
.method private constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V
    .locals 1

    .line 580
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V
    .locals 0

    .line 580
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V

    return-void
.end method

.method private splitFileIfNeed()V
    .locals 5

    .line 631
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x80000

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 634
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SplitFileState]: ether file.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->isEnableSplitFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1500(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    const-string v0, "[SplitFileState] enter"

    .line 586
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 589
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->splitFileIfNeed()V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1500(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1500(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    .line 600
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x5

    .line 620
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->setDetailState(I)V

    .line 621
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1000(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;

    move-result-object p1

    invoke-interface {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;->onSplitFileFailed()V

    goto/16 :goto_0

    :pswitch_2
    const/4 p1, 0x4

    .line 615
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->setDetailState(I)V

    .line 616
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->addTaskFlag(I)V

    .line 617
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1500(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->transitionTo(Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    .line 610
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->setDetailState(I)V

    .line 611
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting the split file condition enable. thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :pswitch_4
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->setDetailState(I)V

    .line 603
    new-instance p1, Ljava/lang/Thread;

    new-instance v8, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    .line 604
    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getDate()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    .line 605
    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x80000

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 607
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
