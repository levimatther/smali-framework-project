.class final Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;
.super Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;
.source "AutoValue_FallibleAsyncTask_FallibleTaskResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TResultT;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->throwable:Ljava/lang/Throwable;

    .line 17
    iput-object p2, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 46
    check-cast p1, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;

    .line 47
    iget-object v1, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->throwable:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->throwable:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 59
    iget-object v2, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FallibleTaskResult{throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/common/concurrent/AutoValue_FallibleAsyncTask_FallibleTaskResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
