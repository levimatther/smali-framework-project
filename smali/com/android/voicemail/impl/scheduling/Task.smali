.class public interface abstract Lcom/android/voicemail/impl/scheduling/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/scheduling/Task$TaskId;
    }
.end annotation


# static fields
.field public static final TASK_ACTIVATION:I = 0x3

.field public static final TASK_ALLOW_DUPLICATES:I = -0x2

.field public static final TASK_INVALID:I = -0x1

.field public static final TASK_STATUS_CHECK:I = 0x4

.field public static final TASK_SYNC:I = 0x2

.field public static final TASK_UPLOAD:I = 0x1


# virtual methods
.method public abstract getId()Lcom/android/voicemail/impl/scheduling/Task$TaskId;
.end method

.method public abstract getReadyInMilliSeconds()J
.end method

.method public abstract onBeforeExecute()V
.end method

.method public abstract onCompleted()V
.end method

.method public abstract onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract onDuplicatedTaskAdded(Lcom/android/voicemail/impl/scheduling/Task;)V
.end method

.method public abstract onExecuteInBackgroundThread()V
.end method

.method public abstract onRestore(Landroid/os/Bundle;)V
.end method

.method public abstract toBundle()Landroid/os/Bundle;
.end method
