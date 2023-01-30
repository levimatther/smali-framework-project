.class final Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;
.super Landroid/os/Handler;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/scheduling/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;


# direct methods
.method public constructor <init>(Lcom/android/voicemail/impl/scheduling/TaskExecutor;Landroid/os/Looper;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    .line 226
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 232
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 233
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/voicemail/impl/scheduling/Task;

    .line 234
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getTasks()Lcom/android/voicemail/impl/scheduling/TaskQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/voicemail/impl/scheduling/TaskQueue;->remove(Lcom/android/voicemail/impl/scheduling/Task;)V

    .line 235
    invoke-interface {p1}, Lcom/android/voicemail/impl/scheduling/Task;->onCompleted()V

    .line 236
    iget-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$702(Lcom/android/voicemail/impl/scheduling/TaskExecutor;Z)Z

    .line 237
    iget-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-static {p1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$000(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isTerminating()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskExecutor$MainThreadHandler;->this$0:Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    invoke-static {p1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->access$800(Lcom/android/voicemail/impl/scheduling/TaskExecutor;)V

    :cond_1
    :goto_0
    return-void
.end method
