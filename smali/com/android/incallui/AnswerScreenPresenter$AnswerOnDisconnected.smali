.class public Lcom/android/incallui/AnswerScreenPresenter$AnswerOnDisconnected;
.super Ljava/lang/Object;
.source "AnswerScreenPresenter.java"

# interfaces
.implements Lcom/android/incallui/call/DialerCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerScreenPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnswerOnDisconnected"
.end annotation


# instance fields
.field private final disconnectingCall:Lcom/android/incallui/call/DialerCall;

.field final synthetic this$0:Lcom/android/incallui/AnswerScreenPresenter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/AnswerScreenPresenter;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/incallui/AnswerScreenPresenter$AnswerOnDisconnected;->this$0:Lcom/android/incallui/AnswerScreenPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/android/incallui/AnswerScreenPresenter$AnswerOnDisconnected;->disconnectingCall:Lcom/android/incallui/call/DialerCall;

    return-void
.end method


# virtual methods
.method public onDialerCallChildNumberChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallDisconnect()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerScreenPresenter.AnswerOnDisconnected"

    const-string v2, "call disconnected, answering new call"

    .line 208
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter$AnswerOnDisconnected;->this$0:Lcom/android/incallui/AnswerScreenPresenter;

    invoke-static {v0}, Lcom/android/incallui/AnswerScreenPresenter;->access$000(Lcom/android/incallui/AnswerScreenPresenter;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->answer()V

    .line 211
    iget-object v0, p0, Lcom/android/incallui/AnswerScreenPresenter$AnswerOnDisconnected;->disconnectingCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, p0}, Lcom/android/incallui/call/DialerCall;->removeListener(Lcom/android/incallui/call/DialerCallListener;)V

    return-void
.end method

.method public onDialerCallLastForwardedNumberChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallSessionModificationStateChange()V
    .locals 0

    return-void
.end method

.method public onDialerCallUpdate()V
    .locals 0

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
