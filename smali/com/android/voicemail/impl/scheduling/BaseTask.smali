.class public abstract Lcom/android/voicemail/impl/scheduling/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Lcom/android/voicemail/impl/scheduling/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;
    }
.end annotation


# static fields
.field private static final EXTRA_EXECUTION_TIME:Ljava/lang/String; = "extra_execution_time"

.field private static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "extra_phone_account_handle"

.field private static sClock:Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutionTime:J

.field private mExtras:Landroid/os/Bundle;

.field private volatile mHasFailed:Z

.field private mHasStarted:Z

.field private mId:I

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/scheduling/Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;

    invoke-direct {v0}, Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;-><init>()V

    sput-object v0, Lcom/android/voicemail/impl/scheduling/BaseTask;->sClock:Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPolicies:Ljava/util/List;

    .line 62
    iput p1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mId:I

    .line 63
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->getTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExecutionTime:J

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/voicemail/impl/scheduling/BaseTask;",
            ">;",
            "Landroid/telecom/PhoneAccountHandle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 141
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/scheduling/Tasks;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_phone_account_handle"

    .line 142
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method static setClockForTesting(Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;)V
    .locals 0

    .line 222
    sput-object p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->sClock:Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;

    return-void
.end method


# virtual methods
.method public addPolicy(Lcom/android/voicemail/impl/scheduling/Policy;)Lcom/android/voicemail/impl/scheduling/BaseTask;
    .locals 1

    .line 100
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 101
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPolicies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createRestartIntent()Landroid/content/Intent;
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public fail()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isNotMainThread()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mHasFailed:Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()Lcom/android/voicemail/impl/scheduling/Task$TaskId;
    .locals 3

    .line 148
    new-instance v0, Lcom/android/voicemail/impl/scheduling/Task$TaskId;

    iget v1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mId:I

    iget-object v2, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/Task$TaskId;-><init>(ILandroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getReadyInMilliSeconds()J
    .locals 4

    .line 178
    iget-wide v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExecutionTime:J

    invoke-virtual {p0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->getTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 124
    sget-object v0, Lcom/android/voicemail/impl/scheduling/BaseTask;->sClock:Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/scheduling/BaseTask$Clock;->getTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFailed()Z
    .locals 1

    .line 84
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 85
    iget-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mHasFailed:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .line 78
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 79
    iget-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mHasStarted:Z

    return v0
.end method

.method public onBeforeExecute()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/scheduling/Policy;

    .line 185
    invoke-interface {v1}, Lcom/android/voicemail/impl/scheduling/Policy;->onBeforeExecute()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mHasStarted:Z

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 193
    iget-boolean v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mHasFailed:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/scheduling/Policy;

    .line 195
    invoke-interface {v1}, Lcom/android/voicemail/impl/scheduling/Policy;->onFail()V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/scheduling/Policy;

    .line 200
    invoke-interface {v1}, Lcom/android/voicemail/impl/scheduling/Policy;->onCompleted()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExtras:Landroid/os/Bundle;

    const-string p1, "extra_phone_account_handle"

    .line 162
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 163
    iget-object p1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPolicies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/impl/scheduling/Policy;

    .line 164
    invoke-interface {v0, p0, p2}, Lcom/android/voicemail/impl/scheduling/Policy;->onCreate(Lcom/android/voicemail/impl/scheduling/BaseTask;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDuplicatedTaskAdded(Lcom/android/voicemail/impl/scheduling/Task;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mPolicies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/impl/scheduling/Policy;

    .line 207
    invoke-interface {v0}, Lcom/android/voicemail/impl/scheduling/Policy;->onDuplicatedTaskAdded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestore(Landroid/os/Bundle;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExtras:Landroid/os/Bundle;

    const-string v1, "extra_execution_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExecutionTime:J

    :cond_0
    return-void
.end method

.method public setExecutionTime(J)V
    .locals 0

    .line 119
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 120
    iput-wide p1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExecutionTime:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 72
    invoke-static {}, Lcom/android/voicemail/impl/Assert;->isMainThread()V

    .line 73
    iput p1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mId:I

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExtras:Landroid/os/Bundle;

    iget-wide v1, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExecutionTime:J

    const-string v3, "extra_execution_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    iget-object v0, p0, Lcom/android/voicemail/impl/scheduling/BaseTask;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method
