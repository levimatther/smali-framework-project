.class Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/call/DialerCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarCallListener"
.end annotation


# instance fields
.field private mDialerCall:Lcom/android/incallui/call/DialerCall;

.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;->mDialerCall:Lcom/android/incallui/call/DialerCall;

    .line 1065
    invoke-virtual {p2, p0}, Lcom/android/incallui/call/DialerCall;->addListener(Lcom/android/incallui/call/DialerCallListener;)V

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;->mDialerCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, p0}, Lcom/android/incallui/call/DialerCall;->removeListener(Lcom/android/incallui/call/DialerCallListener;)V

    return-void
.end method

.method public onDialerCallChildNumberChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallDisconnect()V
    .locals 0

    return-void
.end method

.method public onDialerCallLastForwardedNumberChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallSessionModificationStateChange()V
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;->mDialerCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;->cleanup()V

    .line 1112
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/call/CallList;)V

    :cond_0
    return-void
.end method

.method public onDialerCallUpdate()V
    .locals 1

    .line 1077
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {v0}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;)Lcom/android/incallui/ringtone/DialerRingtoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->stopCallWaitingTone()V

    :cond_0
    return-void
.end method

.method public onDialerCallUpgradeToVideo()V
    .locals 0

    return-void
.end method

.method public onEnrichedCallSessionUpdate()V
    .locals 0

    return-void
.end method

.method public onHandoverToWifiFailure()V
    .locals 0

    return-void
.end method

.method public onInternationalCallOnWifi()V
    .locals 0

    return-void
.end method

.method public onWiFiToLteHandover()V
    .locals 0

    return-void
.end method
