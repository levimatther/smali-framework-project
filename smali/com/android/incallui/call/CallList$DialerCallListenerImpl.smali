.class Lcom/android/incallui/call/CallList$DialerCallListenerImpl;
.super Ljava/lang/Object;
.source "CallList.java"

# interfaces
.implements Lcom/android/incallui/call/DialerCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/call/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialerCallListenerImpl"
.end annotation


# instance fields
.field private final mCall:Lcom/android/incallui/call/DialerCall;

.field final synthetic this$0:Lcom/android/incallui/call/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/call/DialerCall;

    iput-object p1, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    return-void
.end method


# virtual methods
.method public onDialerCallChildNumberChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallDisconnect()V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    iget-object v1, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0, v1}, Lcom/android/incallui/call/CallList;->access$200(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DialerCallListenerImpl.onDialerCallDisconnect"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    iget-object v1, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0, v1}, Lcom/android/incallui/call/CallList;->access$300(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V

    :cond_0
    return-void
.end method

.method public onDialerCallLastForwardedNumberChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallSessionModificationStateChange()V
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    invoke-static {v0}, Lcom/android/incallui/call/CallList;->access$500(Lcom/android/incallui/call/CallList;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 862
    iget-object v2, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-interface {v1, v2}, Lcom/android/incallui/call/CallList$Listener;->onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDialerCallUpdate()V
    .locals 2

    const-string v0, "onUpdate"

    .line 808
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    iget-object v1, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->onUpdateCall(Lcom/android/incallui/call/DialerCall;)V

    .line 810
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    invoke-static {v0}, Lcom/android/incallui/call/CallList;->access$400(Lcom/android/incallui/call/CallList;)V

    .line 811
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onDialerCallUpgradeToRtt(I)V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    invoke-static {v0}, Lcom/android/incallui/call/CallList;->access$500(Lcom/android/incallui/call/CallList;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 823
    iget-object v2, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-interface {v1, v2, p1}, Lcom/android/incallui/call/CallList$Listener;->onUpgradeToRtt(Lcom/android/incallui/call/DialerCall;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDialerCallUpgradeToVideo()V
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    invoke-static {v0}, Lcom/android/incallui/call/CallList;->access$500(Lcom/android/incallui/call/CallList;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 830
    iget-object v2, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-interface {v1, v2}, Lcom/android/incallui/call/CallList$Listener;->onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEnrichedCallSessionUpdate()V
    .locals 0

    return-void
.end method

.method public onHandoverToWifiFailure()V
    .locals 3

    .line 843
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    invoke-static {v0}, Lcom/android/incallui/call/CallList;->access$500(Lcom/android/incallui/call/CallList;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 844
    iget-object v2, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-interface {v1, v2}, Lcom/android/incallui/call/CallList$Listener;->onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInternationalCallOnWifi()V
    .locals 3

    const-string v0, "DialerCallListenerImpl.onInternationalCallOnWifi"

    .line 850
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    invoke-static {v0}, Lcom/android/incallui/call/CallList;->access$500(Lcom/android/incallui/call/CallList;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 852
    iget-object v2, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-interface {v1, v2}, Lcom/android/incallui/call/CallList$Listener;->onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWiFiToLteHandover()V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->this$0:Lcom/android/incallui/call/CallList;

    invoke-static {v0}, Lcom/android/incallui/call/CallList;->access$500(Lcom/android/incallui/call/CallList;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 837
    iget-object v2, p0, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-interface {v1, v2}, Lcom/android/incallui/call/CallList$Listener;->onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method
