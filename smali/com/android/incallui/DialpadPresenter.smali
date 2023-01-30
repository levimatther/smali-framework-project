.class public Lcom/android/incallui/DialpadPresenter;
.super Lcom/android/incallui/baseui/Presenter;
.source "DialpadPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadPresenter$DialpadUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/baseui/Presenter<",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;"
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/call/DialerCall;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/incallui/baseui/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 0

    .line 51
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DialpadPresenter mCall = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/android/incallui/baseui/Presenter;->onUiReady(Lcom/android/incallui/baseui/Ui;)V

    .line 36
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 37
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/baseui/Ui;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadPresenter;->onUiReady(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/incallui/baseui/Presenter;->onUiUnready(Lcom/android/incallui/baseui/Ui;)V

    .line 43
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/baseui/Ui;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadPresenter;->onUiUnready(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V

    return-void
.end method

.method public final processDtmf(C)V
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing dtmf key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/DialpadPresenter;->getUi()Lcom/android/incallui/baseui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->appendDigitsToField(C)V

    .line 71
    :cond_0
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/call/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring dtmf request for \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    const-string v0, "stopping remote tone"

    .line 80
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/TelecomAdapter;->stopDtmfTone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
