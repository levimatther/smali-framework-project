.class Lcom/android/voicemail/impl/VVMReceiver$1;
.super Landroid/os/Handler;
.source "VVMReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/VVMReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/VVMReceiver;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/VVMReceiver;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/voicemail/impl/VVMReceiver$1;->this$0:Lcom/android/voicemail/impl/VVMReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 55
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/voicemail/impl/VVMReceiver$1;->this$0:Lcom/android/voicemail/impl/VVMReceiver;

    invoke-static {p1}, Lcom/android/voicemail/impl/VVMReceiver;->access$000(Lcom/android/voicemail/impl/VVMReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    iget-object p1, p0, Lcom/android/voicemail/impl/VVMReceiver$1;->this$0:Lcom/android/voicemail/impl/VVMReceiver;

    invoke-static {p1}, Lcom/android/voicemail/impl/VVMReceiver;->access$100(Lcom/android/voicemail/impl/VVMReceiver;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/VVMReceiver;->setAppState(Z)V

    :goto_0
    return-void
.end method
