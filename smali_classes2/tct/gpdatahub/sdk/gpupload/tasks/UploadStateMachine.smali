.class public Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;
.super Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;
.source "UploadStateMachine.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTaskNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$InitialState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$DefaultState;,
        Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;
    }
.end annotation


# static fields
.field public static final MSG_TASK_COMPRESS_DATA_FAILED:I = 0x10

.field public static final MSG_TASK_COMPRESS_DATA_FINISHED:I = 0xf

.field public static final MSG_TASK_COMPRESS_DATA_READY:I = 0xe

.field public static final MSG_TASK_COMPRESS_DATA_START:I = 0xc

.field public static final MSG_TASK_COMPRESS_DATA_WAITING:I = 0xd

.field public static final MSG_TASK_ENCRYPT_DATA_FAILED:I = 0xb

.field public static final MSG_TASK_ENCRYPT_DATA_FINISHED:I = 0xa

.field public static final MSG_TASK_ENCRYPT_DATA_READY:I = 0x9

.field public static final MSG_TASK_ENCRYPT_DATA_START:I = 0x7

.field public static final MSG_TASK_ENCRYPT_DATA_WAITING:I = 0x8

.field public static final MSG_TASK_SPLIT_FILE_FAILED:I = 0x15

.field public static final MSG_TASK_SPLIT_FILE_FINISHED:I = 0x14

.field public static final MSG_TASK_SPLIT_FILE_READY:I = 0x13

.field public static final MSG_TASK_SPLIT_FILE_START:I = 0x11

.field public static final MSG_TASK_SPLIT_FILE_WAITING:I = 0x12

.field public static final MSG_TASK_TRANS_DATA_FAILED:I = 0x6

.field public static final MSG_TASK_TRANS_DATA_FINISHED:I = 0x5

.field public static final MSG_TASK_TRANS_DATA_READY:I = 0x4

.field public static final MSG_TASK_TRANS_DATA_START:I = 0x2

.field public static final MSG_TASK_TRANS_DATA_WAITING:I = 0x3

.field public static final MSG_TASK_UPLOADING_DATA_FAILED:I = 0x1a

.field public static final MSG_TASK_UPLOADING_DATA_FINISHED:I = 0x19

.field public static final MSG_TASK_UPLOADING_DATA_READY:I = 0x18

.field public static final MSG_TASK_UPLOADING_DATA_READ_CONFIG_FAIDED:I = 0x1b

.field public static final MSG_TASK_UPLOADING_DATA_READ_CONFIG_SUCCESS:I = 0x1c

.field public static final MSG_TASK_UPLOADING_DATA_START:I = 0x16

.field public static final MSG_TASK_UPLOADING_DATA_WAITING:I = 0x17

.field public static final MSG_TASK_UPLOAD_TASK_START:I = 0x1


# instance fields
.field public final AUTHORITY:Ljava/lang/String;

.field public final EVENT_URI:Landroid/net/Uri;

.field private TAG:Ljava/lang/String;

.field private lock:Ljava/lang/Object;

.field private mCallback:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;

.field private mCompressDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field private mEncryptDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field private mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field private mIsReadyStart:Z

.field private mSplitFileState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field private mTransDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

.field private mUploadTask:Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

.field private mUploadingDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;)V
    .locals 2

    .line 141
    invoke-direct {p0, p2, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 59
    const-class p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->TAG:Ljava/lang/String;

    const-string p2, "com.android.providers.tctdatahubprovider.TctDataHubProvider"

    .line 62
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->AUTHORITY:Ljava/lang/String;

    const-string p2, "content://com.android.providers.tctdatahubprovider.TctDataHubProvider/event"

    .line 63
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->EVENT_URI:Landroid/net/Uri;

    .line 102
    new-instance p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$DefaultState;

    invoke-direct {p2, p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$DefaultState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 103
    new-instance p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$InitialState;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$InitialState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 104
    new-instance p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;

    invoke-direct {p2, p0, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mTransDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 105
    new-instance p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;

    invoke-direct {p2, p0, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mEncryptDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 106
    new-instance p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;

    invoke-direct {p2, p0, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mCompressDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 107
    new-instance p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;

    invoke-direct {p2, p0, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mSplitFileState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 108
    new-instance p2, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;

    invoke-direct {p2, p0, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$1;)V

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mUploadingDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    .line 110
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->lock:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 111
    iput-boolean p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mIsReadyStart:Z

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getTaskId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->TAG:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mContext:Landroid/content/Context;

    .line 144
    iput-object p4, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mUploadTask:Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    .line 145
    iput-object p4, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mCallback:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;

    .line 146
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    .line 147
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    .line 148
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mTransDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    .line 149
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mEncryptDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    .line 150
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mCompressDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    .line 151
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mSplitFileState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    .line 152
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mUploadingDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    iget-object p2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->addState(Ltct/gpdatahub/sdk/gpupload/tasks/State;Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    .line 153
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mInitialState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->setInitialState(Ltct/gpdatahub/sdk/gpupload/tasks/State;)V

    .line 155
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->start()V

    return-void
.end method

.method static synthetic access$1000(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mCallback:Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$Callback;

    return-object p0
.end method

.method static synthetic access$1100(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mCompressDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-object p0
.end method

.method static synthetic access$1400(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mSplitFileState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-object p0
.end method

.method static synthetic access$1500(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mUploadingDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-object p0
.end method

.method static synthetic access$1600(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mDefaultState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-object p0
.end method

.method static synthetic access$700(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mTransDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-object p0
.end method

.method static synthetic access$800(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mUploadTask:Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    return-object p0
.end method

.method static synthetic access$900(Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;)Ltct/gpdatahub/sdk/gpupload/tasks/State;
    .locals 0

    .line 57
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mEncryptDataState:Ltct/gpdatahub/sdk/gpupload/tasks/State;

    return-object p0
.end method

.method private getStartMsg(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 p1, 0x16

    return p1

    :cond_1
    const/16 p1, 0x11

    return p1

    :cond_2
    const/16 p1, 0xc

    return p1

    :cond_3
    const/4 p1, 0x7

    return p1

    :cond_4
    return v1
.end method

.method private sendStartMsg(I)Z
    .locals 4

    .line 185
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getStartMsg(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 190
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v3

    instance-of v3, v3, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$TransDataState;

    if-nez v3, :cond_5

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 192
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v3

    instance-of v3, v3, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$EncryptDataState;

    if-nez v3, :cond_5

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 194
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v3

    instance-of v3, v3, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$CompressDataState;

    if-nez v3, :cond_5

    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 196
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v3

    instance-of v3, v3, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$SplitFileState;

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    .line 198
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object p1

    instance-of p1, p1, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadingDataState;

    if-eqz p1, :cond_6

    :cond_5
    move p1, v2

    goto :goto_0

    :cond_6
    move p1, v1

    :goto_0
    if-eqz p1, :cond_7

    .line 203
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->removeMessages(I)V

    .line 204
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendPropertyStartMsg]: send MSG_TASK_TRANS_DATA_START state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v3

    check-cast v3, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    return v2

    :cond_7
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 967
    invoke-super {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  localPath="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mUploadTask:Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    invoke-virtual {p3}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object p3

    invoke-virtual {p3}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyConditionReady(I)Z
    .locals 2

    .line 177
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v0

    check-cast v0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine$UploadState;->getDetailState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 179
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendStartMsg(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyConditionUnReady(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onUploadTaskFinishSync()V
    .locals 2

    .line 169
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->quit()V

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUploadTaskStartSync()V
    .locals 2

    .line 159
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mIsReadyStart:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mIsReadyStart:Z

    .line 162
    invoke-virtual {p0, v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->sendMessage(I)V

    .line 164
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadStateMachine[localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->mUploadTask:Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;

    .line 960
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadDataTask;->getUploadParams()Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/UploadStateMachine;->getCurrentState()Ltct/gpdatahub/sdk/gpupload/tasks/IState;

    move-result-object v1

    invoke-interface {v1}, Ltct/gpdatahub/sdk/gpupload/tasks/IState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
