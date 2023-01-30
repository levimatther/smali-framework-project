.class public Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;
.super Ljava/lang/Object;
.source "MinimalIntervalPolicy.java"

# interfaces
.implements Lcom/android/voicemail/impl/scheduling/Policy;


# instance fields
.field mBlockForMillis:I

.field mId:Lcom/android/voicemail/impl/scheduling/Task$TaskId;

.field mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mBlockForMillis:I

    return-void
.end method


# virtual methods
.method public onBeforeExecute()V
    .locals 0

    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->hasFailed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;

    .line 51
    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/voicemail/impl/scheduling/BlockerTask;

    iget-object v2, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mId:Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    iget-object v2, v2, Lcom/android/voicemail/impl/scheduling/Task$TaskId;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mId:Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    iget v1, v1, Lcom/android/voicemail/impl/scheduling/Task$TaskId;->id:I

    const-string v2, "extra_task_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    iget v1, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mBlockForMillis:I

    const-string v2, "extra_block_for_millis"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Lcom/android/voicemail/impl/scheduling/BaseTask;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mTask:Lcom/android/voicemail/impl/scheduling/BaseTask;

    .line 41
    invoke-virtual {p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->getId()Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;->mId:Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    return-void
.end method

.method public onDuplicatedTaskAdded()V
    .locals 0

    return-void
.end method

.method public onFail()V
    .locals 0

    return-void
.end method
