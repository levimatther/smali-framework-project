.class Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;
.super Ljava/lang/Object;
.source "UploadStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileSplit"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mPartFileLength:I

.field mSourceFilePath:Ljava/lang/String;

.field mSplitTag:Ljava/lang/String;

.field final synthetic this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;


# direct methods
.method public constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 657
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mContext:Landroid/content/Context;

    .line 659
    iput-object p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mHandler:Landroid/os/Handler;

    .line 660
    iput-object p4, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mSplitTag:Ljava/lang/String;

    .line 661
    iput-object p5, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mSourceFilePath:Ljava/lang/String;

    .line 662
    iput p6, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mPartFileLength:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 669
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mSplitTag:Ljava/lang/String;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mSourceFilePath:Ljava/lang/String;

    iget v3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mPartFileLength:I

    invoke-static {v0, v1, v2, v3}, Ltct/gpdatahub/sdk/common/utils/SplitFileUtils;->splitFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 672
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;

    iget-object v1, v1, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 675
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->this$1:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;

    iget-object v1, v1, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;->this$0:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->setSplitFilesDir(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 678
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState$FileSplit;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method
