.class public abstract Lcom/android/operatorutils/IOperatorManager;
.super Ljava/lang/Object;
.source "IOperatorManager.java"

# interfaces
.implements Lcom/android/operatorutils/TmoOperator;
.implements Lcom/android/operatorutils/VzwOperator;
.implements Lcom/android/operatorutils/ATTOperator;
.implements Lcom/android/operatorutils/TracfoneOperator;


# instance fields
.field public config:Lcom/android/operatorutils/OperatorConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/operatorutils/IOperatorManager;->config:Lcom/android/operatorutils/OperatorConfig;

    return-void
.end method


# virtual methods
.method public activateVVM(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public activeGreeting(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public activeSMSDirectLink()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 599
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public activeWfc(Landroid/content/Context;)Z
    .locals 2

    .line 361
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tct.intent.action.WFC_MANAGER_LAUNCHER"

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tct.intent.category"

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public addQualityIndicatorOnContactGride(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public alwaysShowRTTChooserModeDialog(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public appendCountdown(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public applicationOncreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public bindActivity(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public callFailHandleSetup()V
    .locals 0

    return-void
.end method

.method public callFailHandleTearDown()V
    .locals 0

    return-void
.end method

.method public clearVideoCallListener(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public customizeAttCallLogVideoCallIconColor(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public customizeDialerOptions(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public customizeUpgradeToVideoIcon(Landroid/content/Context;Ljava/lang/Object;ZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public deactiveGreeting(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deactiveSMSDirectLink()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 596
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public deleteObject(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fetchGreetMediaContent(Landroid/net/Uri;)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public fetchGreetings(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic fetchGreetings(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/operatorutils/IOperatorManager;->fetchGreetings(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAutoDeclineCountdown()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getImapHelper(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;
        }
    .end annotation

    .line 560
    new-instance v0, Lcom/android/voicemail/impl/imap/ImapHelper;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/voicemail/impl/imap/ImapHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-object v0
.end method

.method public getImapHelper(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;
        }
    .end annotation

    .line 565
    new-instance v6, Lcom/android/voicemail/impl/imap/ImapHelper;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/voicemail/impl/imap/ImapHelper;-><init>(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-object v6
.end method

.method public getInCallConnectingForAssistedDialing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p3
.end method

.method public getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/operatorutils/IOperatorManager;->config:Lcom/android/operatorutils/OperatorConfig;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/android/operatorutils/OperatorConfig;

    invoke-direct {v0}, Lcom/android/operatorutils/OperatorConfig;-><init>()V

    iput-object v0, p0, Lcom/android/operatorutils/IOperatorManager;->config:Lcom/android/operatorutils/OperatorConfig;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/operatorutils/IOperatorManager;->config:Lcom/android/operatorutils/OperatorConfig;

    return-object v0
.end method

.method public getVCLteToWifiHandoverStringId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getVerstatColorID()I
    .locals 1

    const v0, 0x7f060148

    return v0
.end method

.method public getVerstatIconID()I
    .locals 1

    const v0, 0x7f08010e

    return v0
.end method

.method public getVerstatLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f110383

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWifiCallingEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleBypassE911AddressEnableVowifi(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleSendCallsToVoicemail(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/ContactInfo;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;Landroid/app/Notification$Builder;)V
    .locals 0

    return-void
.end method

.method public handleVmBlockNumber(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    return-void
.end method

.method public insertContactFromCNAP(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public isCallerScreenEnable(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isInDataSaverMode(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNativeVoicemailTranscriptionEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRttAudioIndicationSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowAutoAnswerOption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowDialpadWFCIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportChatbot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEarpiece()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTmoActivate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVerstatCustomColorForLabel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideoCallPatternNumber(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public makeTextForConnectionEvent(Landroid/content/Context;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCarrierConfigChanged()V
    .locals 0

    return-void
.end method

.method public onRttStarted(Landroid/content/Context;Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onSetQueryString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerInCallSessionModificationCauseListener()V
    .locals 0

    return-void
.end method

.method public requestVideoCapable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendImmediately(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setAssistedDialingOriginalNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTmoTheme(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setUp(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    return-void
.end method

.method public setWifiCallingEnabled(Z)V
    .locals 0

    return-void
.end method

.method public shouldShowErrorMsgWhenUpgradeVideoFailed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public shouldShowUpgradeFailMsgWhenNoCapabilityOfMt(ZLandroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldShowVcLteWifiFailedDialog(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldShowVcWifiToLteHandoverDialog(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showAttVideoCallInfoDialog(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showBlockSuppressionTips(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showCallEndDueNotAuthorized(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showCallEndToastWhenOutOfWifi(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showEndCallDialog(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public showFirstClickedToastAndSavePref(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public showInCallIndicator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showLastOutgoingEmcNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMergeButtonInRtt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMsgWhenDataOffDuringVc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showRttEmcFailedNotify(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public showRttHelpInfo(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showRttTipsWhenOff(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public showToastWhenVideoDowngradeToVoice(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public showUpgradeFailMessage(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public showVcDataLimitUsageMsg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showVcHandoverButDataDisableMsg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startTimingForAutoDecline(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public startWFCDialogListener(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public stopTimingForAutoDecline()V
    .locals 0

    return-void
.end method

.method public stopWFCDialogListener()V
    .locals 0

    return-void
.end method

.method public toastWhenConferenceIsFull(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public unRegisterInCallSessionModificationCauseListener()V
    .locals 0

    return-void
.end method

.method public updateEmailAddress(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public updateGreetName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateQualityIndicator(IZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public updateWFCHangupBtn(Landroid/widget/ImageButton;Z)V
    .locals 0

    return-void
.end method

.method public updateWFCStatus(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public uploadGreetingMessage(Ljava/lang/String;ILjava/lang/String;[B)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public videoDowngradeDueInsufficientBandwidth(Lcom/android/incallui/call/DialerCall;I)V
    .locals 0

    return-void
.end method

.method public videoSessionAutoDeclineControllerTearDown()V
    .locals 0

    return-void
.end method
