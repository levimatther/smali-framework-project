.class public interface abstract Lcom/android/incallui/incall/protocol/InCallScreen;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# virtual methods
.method public abstract dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract getAnswerAndDialpadContainerResourceId()I
.end method

.method public abstract getInCallScreenFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract isManageConferenceVisible()Z
.end method

.method public abstract isShowingLocationUi()Z
.end method

.method public abstract onInCallScreenDialpadVisibilityChange(Z)V
.end method

.method public abstract onInCallShowDialpad(Z)V
.end method

.method public abstract setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V
.end method

.method public abstract setEndCallButtonEnabled(ZZ)V
.end method

.method public abstract setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V
.end method

.method public abstract setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V
.end method

.method public abstract setSecondaryNumber(Ljava/lang/String;)V
.end method

.method public abstract showLocationUi(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract showManageConferenceCallButton(Z)V
.end method

.method public abstract showNoteSentToast()V
.end method

.method public abstract showVbButton(Z)V
.end method

.method public abstract updateInCallScreenColors()V
.end method

.method public abstract updateVbByAudioMode(Landroid/telecom/CallAudioState;)V
.end method
