.class interface abstract Lcom/android/incallui/incall/impl/ButtonController;
.super Ljava/lang/Object;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/incall/impl/ButtonController$SwitchToSecondaryButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$ManageConferenceButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$UpgradeToVideoButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$MergeButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$SwapButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$AddCallButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$HoldButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$DialpadButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$MuteButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;,
        Lcom/android/incallui/incall/impl/ButtonController$Controllers;
    }
.end annotation


# virtual methods
.method public abstract getInCallButtonId()I
.end method

.method public abstract isAllowed()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract setAllowed(Z)V
.end method

.method public abstract setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method
