.class public Lcom/android/voicemail/impl/scheduling/BlockerTask;
.super Lcom/android/voicemail/impl/scheduling/BaseTask;
.source "BlockerTask.java"


# static fields
.field public static final EXTRA_BLOCK_FOR_MILLIS:Ljava/lang/String; = "extra_block_for_millis"

.field public static final EXTRA_TASK_ID:Ljava/lang/String; = "extra_task_id"

.field private static final TAG:Ljava/lang/String; = "BlockerTask"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/voicemail/impl/scheduling/BaseTask;->onCreate(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string p1, "extra_task_id"

    const/4 v0, -0x1

    .line 40
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/scheduling/BlockerTask;->setId(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/BlockerTask;->getTimeMillis()J

    move-result-wide v0

    const-string p1, "extra_block_for_millis"

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/voicemail/impl/scheduling/BlockerTask;->setExecutionTime(J)V

    return-void
.end method

.method public onDuplicatedTaskAdded(Lcom/android/voicemail/impl/scheduling/Task;)V
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "blocked, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/BlockerTask;->getReadyInMilliSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "millis remaining"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlockerTask"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExecuteInBackgroundThread()V
    .locals 0

    return-void
.end method
