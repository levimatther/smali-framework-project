.class Lcom/android/voicemail/impl/scheduling/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/voicemail/impl/scheduling/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/voicemail/impl/scheduling/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/voicemail/impl/scheduling/Task;)Z
    .locals 2

    .line 66
    invoke-interface {p1}, Lcom/android/voicemail/impl/scheduling/Task;->getId()Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    move-result-object v0

    iget v0, v0, Lcom/android/voicemail/impl/scheduling/Task$TaskId;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 69
    invoke-interface {p1}, Lcom/android/voicemail/impl/scheduling/Task;->getId()Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    move-result-object v0

    iget v0, v0, Lcom/android/voicemail/impl/scheduling/Task$TaskId;->id:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 70
    invoke-interface {p1}, Lcom/android/voicemail/impl/scheduling/Task;->getId()Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->getTask(Lcom/android/voicemail/impl/scheduling/Task$TaskId;)Lcom/android/voicemail/impl/scheduling/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Lcom/android/voicemail/impl/scheduling/Task;->onDuplicatedTaskAdded(Lcom/android/voicemail/impl/scheduling/Task;)V

    const-string p1, "TaskQueue.add"

    const-string v0, "duplicated task added"

    .line 73
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Task id was not set to a valid value before adding."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public fromBundles(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 52
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/scheduling/Tasks;->createTask(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/voicemail/impl/scheduling/Task;

    move-result-object v1

    .line 53
    invoke-interface {v1, v0}, Lcom/android/voicemail/impl/scheduling/Task;->onRestore(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->add(Lcom/android/voicemail/impl/scheduling/Task;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method getNextTask(J)Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/voicemail/impl/scheduling/Task;

    .line 121
    invoke-interface {v3}, Lcom/android/voicemail/impl/scheduling/Task;->getReadyInMilliSeconds()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-gez v6, :cond_1

    .line 123
    new-instance p1, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;-><init>(Lcom/android/voicemail/impl/scheduling/Task;Ljava/lang/Long;)V

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 126
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 130
    :cond_3
    new-instance p1, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;

    invoke-direct {p1, v1, v2}, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;-><init>(Lcom/android/voicemail/impl/scheduling/Task;Ljava/lang/Long;)V

    return-object p1
.end method

.method public getTask(Lcom/android/voicemail/impl/scheduling/Task$TaskId;)Lcom/android/voicemail/impl/scheduling/Task;
    .locals 3

    .line 86
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 87
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/scheduling/Task;

    .line 88
    invoke-interface {v1}, Lcom/android/voicemail/impl/scheduling/Task;->getId()Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/voicemail/impl/scheduling/Task$TaskId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/voicemail/impl/scheduling/Task;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/android/voicemail/impl/scheduling/Task;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public toBundles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicemail/impl/scheduling/Task;

    .line 44
    invoke-static {v2}, Lcom/android/voicemail/impl/scheduling/Tasks;->toBundle(Lcom/android/voicemail/impl/scheduling/Task;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
