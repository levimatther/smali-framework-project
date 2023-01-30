.class public Lcom/android/voicemail/impl/scheduling/TaskReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TaskReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VvmTaskReceiver"

.field private static final deferredBroadcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/voicemail/impl/scheduling/TaskReceiver;->deferredBroadcasts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static resendDeferredBroadcasts(Landroid/content/Context;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/android/voicemail/impl/scheduling/TaskReceiver;->deferredBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    :cond_0
    sget-object p0, Lcom/android/voicemail/impl/scheduling/TaskReceiver;->deferredBroadcasts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "VvmTaskReceiver"

    if-nez p2, :cond_0

    const-string p1, "null intent received"

    .line 58
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "task received"

    .line 61
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->getRunningInstance()Lcom/android/voicemail/impl/scheduling/TaskExecutor;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "TaskExecutor already running"

    .line 64
    invoke-static {v0, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->isTerminating()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "TaskExecutor is terminating, bouncing task"

    .line 68
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object p1, Lcom/android/voicemail/impl/scheduling/TaskReceiver;->deferredBroadcasts:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/scheduling/Tasks;->createTask(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/voicemail/impl/scheduling/Task;

    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Lcom/android/voicemail/impl/scheduling/TaskExecutor;->addTask(Lcom/android/voicemail/impl/scheduling/Task;)V

    goto :goto_0

    :cond_2
    const-string v1, "scheduling new job"

    .line 75
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-wide/16 v1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/voicemail/impl/scheduling/TaskSchedulerJobService;->scheduleJob(Landroid/content/Context;Ljava/util/List;JZ)V

    :goto_0
    return-void
.end method
