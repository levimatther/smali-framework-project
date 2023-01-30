.class public interface abstract Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;
.super Ljava/lang/Object;
.source "InCallButtonUiDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;
    }
.end annotation


# virtual methods
.method public abstract addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V
.end method

.method public abstract changeToVideoClicked()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentAudioState()Landroid/telecom/CallAudioState;
.end method

.method public abstract holdClicked(Z)V
.end method

.method public abstract mergeClicked()V
.end method

.method public abstract muteClicked(ZZ)V
.end method

.method public abstract onEndCallClicked()V
.end method

.method public abstract onInCallButtonUiReady(Lcom/android/incallui/incall/protocol/InCallButtonUi;)V
.end method

.method public abstract onInCallButtonUiUnready()V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract pauseVideoClicked(Z)V
.end method

.method public abstract refreshMuteState()V
.end method

.method public abstract setAudioRoute(I)V
.end method

.method public abstract showAudioRouteSelector()V
.end method

.method public abstract showDialpadClicked(Z)V
.end method

.method public abstract stopRttCall()V
.end method

.method public abstract swapClicked()V
.end method

.method public abstract switchCameraClicked(Z)V
.end method

.method public abstract switchRttCall()V
.end method

.method public abstract toggleCameraClicked()V
.end method

.method public abstract toggleSpeakerphone()V
.end method
