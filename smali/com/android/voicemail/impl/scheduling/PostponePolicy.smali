.class public Lcom/android/voicemail/impl/scheduling/PostponePolicy;
.super Ljava/lang/Object;
.source "PostponePolicy.java"

# interfaces
.implements Lcom/android/voicemail/impl/scheduling/Policy;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostponePolicy"


# instance fields
.field private final mPostponeMillis:I

.field private mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/voicemail/impl/scheduling/PostponePolicy;->mPostponeMillis:I

    return-void
.end method


# virtual methods
.method public onBeforeExecute()V
    .locals 0

    return-void
.end method

.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onCreate(Lcom/android/voicemail/impl/scheduling/BaseTask;Landroid/os/Bundle;)V
    .locals 4

    .line 41
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/PostponePolicy;->mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;

    .line 42
    invoke-virtual {p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->getTimeMillis()J

    move-result-wide v0

    iget p2, p0, Lcom/android/voicemail/impl/scheduling/PostponePolicy;->mPostponeMillis:I

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->setExecutionTime(J)V

    return-void
.end method

.method public onDuplicatedTaskAdded()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/PostponePolicy;->mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postponing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/PostponePolicy;->mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PostponePolicy"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/PostponePolicy;->mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->getTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/android/voicemail/impl/scheduling/PostponePolicy;->mPostponeMillis:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/BaseTask;->setExecutionTime(J)V

    return-void
.end method

.method public onFail()V
    .locals 0

    return-void
.end method
