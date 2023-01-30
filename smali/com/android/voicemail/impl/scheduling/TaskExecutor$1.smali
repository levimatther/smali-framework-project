.class Lcom/android/voicemail/impl/scheduling/TaskExecutor$1;
.super Ljava/lang/Object;
.source "TaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/scheduling/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$1;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "VvmTaskExecutor"

    const-string v1, "Stopping service"

    .line 148
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$1;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-static {v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$000(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$1;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isTerminating()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$1;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->scheduleJobAndTerminate(JZ)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "Service already stopped"

    .line 150
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
