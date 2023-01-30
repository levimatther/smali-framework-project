.class Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;
.super Ljava/lang/Object;
.source "TaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/scheduling/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobFinishedPoller"
.end annotation


# instance fields
.field private final delayMillis:J

.field private invocationCounter:I

.field private final isNewJob:Z

.field final synthetic this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/scheduling/TaskExecutor;JZ)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 166
    iput p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->invocationCounter:I

    .line 169
    iput-wide p2, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->delayMillis:J

    .line 170
    iput-boolean p4, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->isNewJob:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 176
    iget v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->invocationCounter:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    .line 177
    iget v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->invocationCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->invocationCounter:I

    .line 178
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-static {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$100(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$Job;->isFinished()Z

    move-result v0

    const-string v1, "JobFinishedPoller.run"

    if-eqz v0, :cond_2

    const-string v0, "Job finished"

    .line 179
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getTasks()Lcom/android/voicemail/impl/scheduling/TaskQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    .line 182
    invoke-static {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$200(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-static {v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$300(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->delayMillis:J

    iget-boolean v4, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->isNewJob:Z

    .line 181
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->scheduleJob(Landroid/content/Context;Ljava/util/List;JZ)V

    .line 183
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-static {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$400(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Lcom/android/voicemail/impl/scheduling/TaskQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->clear()V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->terminate()V

    return-void

    :cond_2
    const-string v0, "Job still running"

    .line 188
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$JobFinishedPoller;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-static {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$500(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
