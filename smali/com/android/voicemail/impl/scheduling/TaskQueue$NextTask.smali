.class final Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/scheduling/TaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextTask"
.end annotation


# instance fields
.field final minimalWaitTimeMillis:Ljava/lang/Long;

.field final task:Lcom/android/voicemail/impl/scheduling/Task;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/scheduling/Task;Ljava/lang/Long;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;->task:Lcom/android/voicemail/impl/scheduling/Task;

    .line 107
    iput-object p2, p0, Lcom/android/voicemail/impl/scheduling/TaskQueue$NextTask;->minimalWaitTimeMillis:Ljava/lang/Long;

    return-void
.end method
