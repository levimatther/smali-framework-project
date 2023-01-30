.class Lcom/android/dialer/app/calllog/CallLogFragment$2;
.super Landroid/os/Handler;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$100(Lcom/android/dialer/app/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$200(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    .line 180
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$300(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createAssertionFailException(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method
