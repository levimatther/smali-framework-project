.class public Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;
.super Ltct/gpdatahub/sdk/gpupload/tasks/DataHubTask;
.source "UploadDataTask.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;
.implements Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTaskNotify;


# static fields
.field public static final NOTIFY_TYPE_COMPRESS:I = 0x3

.field public static final NOTIFY_TYPE_ENCRYPT:I = 0x2

.field public static final NOTIFY_TYPE_SPLIT:I = 0x4

.field public static final NOTIFY_TYPE_TRANSFER:I = 0x1

.field public static final NOTIFY_TYPE_UPLOADING:I = 0x5

.field public static final TASK_FLAG_ALREADY_COMPRESS:I = 0x4

.field public static final TASK_FLAG_ALREADY_ENCRYPT:I = 0x2

.field public static final TASK_FLAG_ALREADY_SPLIT:I = 0x8

.field public static final TASK_FLAG_ALREADY_TRANSFER:I = 0x1

.field public static final TASK_FLAG_ALREADY_UPLOAD:I = 0x20

.field public static final TASK_FLAG_ON_UPLOAD_WAITING:I = 0x10

.field public static final TASK_UPLOAD_FLAG_NEED_COMPRESS:I = 0x400

.field public static final TASK_UPLOAD_FLAG_NEED_ENCRYPT:I = 0x200

.field public static final TASK_UPLOAD_FLAG_NEED_SPLIT:I = 0x800

.field public static final TASK_UPLOAD_FLAG_NEED_TRANSFER:I = 0x100

.field public static final TASK_UPLOAD_FLAG_NEED_UPLOAD:I = 0x1000

.field private static volatile sTaskId:J


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mControlHandler:Landroid/os/Handler;

.field private mEnableCompress:Z

.field private mEnableEncrypt:Z

.field private mEnableSplitFile:Z

.field private mEnableTransform:Z

.field private mEnableUploading:Z

.field private mFinishUpload:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mTaskFlag:I

.field private mTaskId:J

.field private mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

.field private mUploadProgress:I

.field private mUploadResponse:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

.field private mUploadStateMachine:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;Landroid/os/Handler;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/DataHubTask;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 65
    iput-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskId:J

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskFlag:I

    .line 75
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableTransform:Z

    .line 76
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableEncrypt:Z

    .line 77
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableCompress:Z

    .line 80
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableSplitFile:Z

    .line 81
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableUploading:Z

    .line 82
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mFinishUpload:Z

    .line 84
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadResponse:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadProgress:I

    .line 88
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 91
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    .line 93
    iput-object p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    .line 94
    sget-wide p1, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->sTaskId:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    sput-wide v0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->sTaskId:J

    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskId:J

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskId:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setDefaultFlag()V

    return-void
.end method

.method private sendTaskFailedMessage(I)V
    .locals 2

    .line 343
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 344
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 346
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setDefaultFlag()V
    .locals 1

    const/16 v0, 0x1100

    .line 100
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->addTaskFlag(I)V

    const/16 v0, 0x400

    .line 109
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->addTaskFlag(I)V

    return-void
.end method

.method private setEnableByType(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iput-boolean p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableTransform:Z

    goto :goto_0

    .line 268
    :cond_1
    iput-boolean p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableSplitFile:Z

    goto :goto_0

    .line 265
    :cond_2
    iput-boolean p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableCompress:Z

    goto :goto_0

    .line 262
    :cond_3
    iput-boolean p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableEncrypt:Z

    goto :goto_0

    .line 259
    :cond_4
    iput-boolean p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableTransform:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addTaskFlag(I)V
    .locals 1

    .line 185
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskFlag:I

    return-void
.end method

.method public clearTaskFlag(I)V
    .locals 1

    .line 189
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskFlag:I

    not-int p1, p1

    or-int/2addr p1, v0

    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskFlag:I

    return-void
.end method

.method public createAndStartUploadStateMachine()V
    .locals 6

    .line 227
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UploadStateMachine-Thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 229
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 230
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 231
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UploadStateMachine-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;)V

    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadStateMachine:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    .line 232
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->onUploadTaskStartSync()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadDataTask(taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUploadParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    if-nez v1, :cond_0

    const-string v1, "null"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadStateMachine:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    if-nez v0, :cond_1

    const-string p1, "  UploadStateMachine=null"

    .line 368
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 373
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mEnableTransform="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableTransform:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mEnableEncrypt="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableEncrypt:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mEnableCompress="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableCompress:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mEnableUploading="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableUploading:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mFinishUpload="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mFinishUpload:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadResponse()Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 379
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadResponse()Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->getUploadException()Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 380
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadResponse()Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;->getUploadException()Ltct/gpdatahub/sdk/gpupload/upload/model/UploadException;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    const-string p1, "}"

    .line 382
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getTaskFlag()I
    .locals 1

    .line 177
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskFlag:I

    return v0
.end method

.method public getTaskId()J
    .locals 2

    .line 163
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskId:J

    return-wide v0
.end method

.method public getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;
    .locals 1

    .line 167
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    return-object v0
.end method

.method public getUploadProgress()I
    .locals 1

    .line 194
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadProgress:I

    return v0
.end method

.method public getUploadResponse()Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;
    .locals 1

    .line 172
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadResponse:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

    return-object v0
.end method

.method public isEnableCompress()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableCompress:Z

    return v0
.end method

.method public isEnableEncrypt()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableEncrypt:Z

    return v0
.end method

.method public isEnableSplitFile()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableSplitFile:Z

    return v0
.end method

.method public isEnableTransform()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableTransform:Z

    return v0
.end method

.method public isEnableUploading()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableUploading:Z

    return v0
.end method

.method public isFinishUpload()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mFinishUpload:Z

    return v0
.end method

.method public notifyConditionReady(I)Z
    .locals 2

    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableByType(IZ)V

    .line 239
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadStateMachine:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->notifyConditionReady(I)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public notifyConditionUnReady(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->setEnableByType(IZ)V

    .line 248
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadStateMachine:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->notifyConditionUnReady(I)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public onCompressUploadDataFailed()V
    .locals 2

    .line 311
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[onCompressUploadDataFailed]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 312
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->sendTaskFailedMessage(I)V

    return-void
.end method

.method public onEncryptUploadDataFailed()V
    .locals 2

    .line 305
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[onCompressUploadDataFailed]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 306
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->sendTaskFailedMessage(I)V

    return-void
.end method

.method public onServiceConfigUpdate(Ljava/lang/String;)Z
    .locals 2

    .line 329
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[onServiceConfigUpdate]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 331
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSplitFileFailed()V
    .locals 2

    .line 338
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[onSplitFileFailed]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 339
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->sendTaskFailedMessage(I)V

    return-void
.end method

.method public onTransDataFailed()V
    .locals 2

    .line 291
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[onTransDataFailed]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 292
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->sendTaskFailedMessage(I)V

    return-void
.end method

.method public onTransDataSuccess()V
    .locals 2

    .line 297
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[onTransDataSuccess]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 299
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUploadTaskSuccess()V
    .locals 2

    .line 282
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[notifyUploadTaskSuccess]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mFinishUpload:Z

    .line 284
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 285
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUploadingDataFailed(Landroid/os/Message;)V
    .locals 2

    .line 317
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[onUploadingDataFailed]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadResponse:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x6

    .line 323
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->sendTaskFailedMessage(I)V

    return-void
.end method

.method public setEnableCompress(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableCompress:Z

    return-void
.end method

.method public setEnableEncrypt(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableEncrypt:Z

    return-void
.end method

.method public setEnableSplitFile(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableSplitFile:Z

    return-void
.end method

.method public setEnableTransform(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableTransform:Z

    return-void
.end method

.method public setEnableUploading(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableUploading:Z

    return-void
.end method

.method public setTaskFlag(I)V
    .locals 0

    .line 181
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskFlag:I

    return-void
.end method

.method public setUploadProgress(I)V
    .locals 0

    .line 198
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadProgress:I

    return-void
.end method

.method public stopUploadTask()V
    .locals 2

    .line 202
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->TAG:Ljava/lang/String;

    const-string v1, "[stopUploadTask]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadResponse:Ltct/gpdatahub/sdk/gpupload/upload/model/UploadResponse;

    const/4 v1, 0x0

    .line 206
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableTransform:Z

    .line 207
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableEncrypt:Z

    .line 208
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableCompress:Z

    .line 209
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableSplitFile:Z

    .line 210
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableUploading:Z

    .line 211
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mFinishUpload:Z

    .line 213
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadStateMachine:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->onUploadTaskFinishSync()V

    .line 215
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadStateMachine:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    .line 217
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadDataTask(taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mTaskId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mUploadParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    const-string v2, "null"

    const-string v3, "\n"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadParams:Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mUploadStateMachine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadStateMachine:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnableTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableTransform:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableEncrypt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableEncrypt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableCompress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableCompress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableUploading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mEnableUploading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFinishUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mFinishUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUploadProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->mUploadProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
