.class Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;
.super Landroid/os/Handler;
.source "RttCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/RttCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteMessageHandler"
.end annotation


# static fields
.field private static final READ_MESSAGE:I = 0x2

.field private static final START:I = 0x1

.field private static final WRITE_MESSAGE:I = 0x3


# instance fields
.field private final rttCall:Landroid/telecom/Call$RttCall;

.field private final rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/telecom/Call$RttCall;Lcom/android/incallui/rtt/protocol/RttCallScreen;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    iput-object p2, p0, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->rttCall:Landroid/telecom/Call$RttCall;

    .line 189
    iput-object p3, p0, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const-string v1, "RttCallPresenter.RemoteMessageHandler.handleMessage"

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->rttCall:Landroid/telecom/Call$RttCall;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/telecom/Call$RttCall;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string/jumbo v0, "write message"

    .line 213
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 200
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->rttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {p1}, Landroid/telecom/Call$RttCall;->readImmediately()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 202
    new-instance v0, Lcom/android/incallui/-$$Lambda$RttCallPresenter$RemoteMessageHandler$FjhvluAcryymZV_puH2OV4nYFbc;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/-$$Lambda$RttCallPresenter$RemoteMessageHandler$FjhvluAcryymZV_puH2OV4nYFbc;-><init>(Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "read message"

    .line 205
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const-wide/16 v0, 0xc8

    .line 207
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public synthetic lambda$handleMessage$0$RttCallPresenter$RemoteMessageHandler(Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {v0, p1}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->onRemoteMessage(Ljava/lang/String;)V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method writeMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/incallui/RttCallPresenter$RemoteMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
