.class Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;
.super Ljava/lang/Object;
.source "TctStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecords"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    const/16 v0, 0x14

    .line 182
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mMaxSize:I

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mOldestIndex:I

    .line 184
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mCount:I

    .line 185
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogOnlyTransitions:Z

    return-void
.end method

.method synthetic constructor <init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$1;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;)I
    .locals 0

    .line 177
    iget p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mMaxSize:I

    return p0
.end method

.method static synthetic access$1900(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;)Ljava/util/Vector;
    .locals 0

    .line 177
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    return-object p0
.end method


# virtual methods
.method declared-synchronized add(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Landroid/os/Message;Ljava/lang/String;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V
    .locals 9

    monitor-enter p0

    .line 268
    :try_start_0
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mCount:I

    .line 269
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mMaxSize:I

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    new-instance v8, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;-><init>(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Landroid/os/Message;Ljava/lang/String;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mOldestIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;

    .line 273
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mOldestIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mOldestIndex:I

    .line 274
    iget v2, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    .line 275
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mOldestIndex:I

    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 277
    invoke-virtual/range {v1 .. v7}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;->update(Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine;Landroid/os/Message;Ljava/lang/String;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;Ltct/gpdatahub/sdk/gpupload/tasks/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized cleanup()V
    .locals 1

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized count()I
    .locals 1

    monitor-enter p0

    .line 227
    :try_start_0
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(I)Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;
    .locals 1

    monitor-enter p0

    .line 243
    :try_start_0
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mOldestIndex:I

    add-int/2addr v0, p1

    .line 244
    iget p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mMaxSize:I

    if-lt v0, p1, :cond_0

    .line 245
    iget p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mMaxSize:I

    sub-int/2addr v0, p1

    .line 247
    :cond_0
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, p1, :cond_1

    const/4 p1, 0x0

    .line 248
    monitor-exit p0

    return-object p1

    .line 250
    :cond_1
    :try_start_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized logOnlyTransitions()Z
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLogOnlyTransitions(Z)V
    .locals 0

    monitor-enter p0

    .line 209
    :try_start_0
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSize(I)V
    .locals 0

    monitor-enter p0

    .line 202
    :try_start_0
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mMaxSize:I

    const/4 p1, 0x0

    .line 203
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mOldestIndex:I

    .line 204
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mCount:I

    .line 205
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/tasks/TctStateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
