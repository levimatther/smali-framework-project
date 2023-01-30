.class Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/NetworkConnectivityListener;


# direct methods
.method private constructor <init>(Lcom/android/common/NetworkConnectivityListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/android/common/NetworkConnectivityListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    .line 69
    invoke-static {p1}, Lcom/android/common/NetworkConnectivityListener;->access$000(Lcom/android/common/NetworkConnectivityListener;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p1, "noConnectivity"

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    sget-object v1, Lcom/android/common/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/common/NetworkConnectivityListener$State;

    invoke-static {p1, v1}, Lcom/android/common/NetworkConnectivityListener;->access$102(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    sget-object v1, Lcom/android/common/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/common/NetworkConnectivityListener$State;

    invoke-static {p1, v1}, Lcom/android/common/NetworkConnectivityListener;->access$102(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    const-string v1, "networkInfo"

    .line 84
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 83
    invoke-static {p1, v1}, Lcom/android/common/NetworkConnectivityListener;->access$202(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 85
    iget-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    const-string v1, "otherNetwork"

    .line 86
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 85
    invoke-static {p1, v1}, Lcom/android/common/NetworkConnectivityListener;->access$302(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 88
    iget-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/common/NetworkConnectivityListener;->access$402(Lcom/android/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    const-string v1, "isFailover"

    .line 90
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 89
    invoke-static {p1, p2}, Lcom/android/common/NetworkConnectivityListener;->access$502(Lcom/android/common/NetworkConnectivityListener;Z)Z

    .line 99
    iget-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {p1}, Lcom/android/common/NetworkConnectivityListener;->access$600(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 102
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v0}, Lcom/android/common/NetworkConnectivityListener;->access$600(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    return-void

    .line 70
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceived() called with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v0}, Lcom/android/common/NetworkConnectivityListener;->access$100(Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkConnectivityListener"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
