.class Lcom/android/voicemail/impl/scheduling/TaskExecutor$MessageSender;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/scheduling/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageSender"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .locals 0

    .line 372
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
