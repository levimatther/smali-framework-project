.class Lcom/android/incallui/rtt/impl/RttChatFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "RttChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/rtt/impl/RttChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/impl/RttChatFragment;)V
    .locals 0

    .line 1659
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$5;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1662
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1663
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "kt9"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1664
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$5;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1102(Lcom/android/incallui/rtt/impl/RttChatFragment;Z)Z

    goto :goto_0

    .line 1666
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$5;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1102(Lcom/android/incallui/rtt/impl/RttChatFragment;Z)Z

    .line 1668
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isKT9InputMethod is: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$5;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p2}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1100(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RttChatFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
