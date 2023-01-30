.class public interface abstract Lcom/android/operatorutils/VzwOperator;
.super Ljava/lang/Object;
.source "VzwOperator.java"


# virtual methods
.method public abstract activeWfc(Landroid/content/Context;)Z
.end method

.method public createVideoCallScreen(Ljava/lang/String;)Lcom/android/incallui/video/protocol/VideoCallScreen;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getInCallConnectingForAssistedDialing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWifiCallingEnable()Z
.end method

.method public abstract handleBypassE911AddressEnableVowifi(Landroid/content/Context;)Z
.end method

.method public abstract handleSendCallsToVoicemail(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/ContactInfo;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;Landroid/app/Notification$Builder;)V
.end method

.method public abstract handleVmBlockNumber(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract isCallerScreenEnable(Landroid/content/Context;)Z
.end method

.method public abstract isShowAutoAnswerOption()Z
.end method

.method public abstract isSupportEarpiece()Z
.end method

.method public abstract lowBatteryOnCallStateChange(Landroid/content/Context;I)V
.end method

.method public abstract setAssistedDialingOriginalNumber(Ljava/lang/String;)V
.end method

.method public abstract setWifiCallingEnabled(Z)V
.end method

.method public abstract shouldShowErrorMsgWhenUpgradeVideoFailed(Landroid/content/Context;)V
.end method

.method public abstract shouldShowUpgradeFailMsgWhenNoCapabilityOfMt(ZLandroid/content/Context;)Z
.end method

.method public abstract shouldShowVcLteWifiFailedDialog(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
.end method

.method public abstract shouldShowVcWifiToLteHandoverDialog(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
.end method

.method public abstract showCallEndDueNotAuthorized(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
.end method

.method public abstract showCallEndToastWhenOutOfWifi(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
.end method

.method public abstract showEndCallDialog(Landroid/content/Context;)V
.end method

.method public abstract showFirstClickedToastAndSavePref(Landroid/content/Context;I)V
.end method

.method public abstract showMsgWhenDataOffDuringVc(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract showRttTipsWhenOff(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract showUpgradeFailMessage(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;Landroid/content/Context;)V
.end method

.method public abstract showVcDataLimitUsageMsg(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract showVcHandoverButDataDisableMsg(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public showVideoCallTip(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public updateButtonState(Lcom/android/incallui/incall/protocol/InCallButtonUi;Lcom/android/incallui/call/DialerCall;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public abstract updateWFCStatus(Landroid/content/Context;)V
.end method
