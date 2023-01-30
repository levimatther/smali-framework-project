.class public interface abstract Lcom/android/operatorutils/TmoOperator;
.super Ljava/lang/Object;
.source "TmoOperator.java"


# virtual methods
.method public abstract activateVVM(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract activeGreeting(Ljava/lang/String;)Z
.end method

.method public abstract activeSMSDirectLink()Ljava/lang/Boolean;
.end method

.method public abstract addQualityIndicatorOnContactGride(Landroid/content/Context;Landroid/view/View;)V
.end method

.method public abstract appendCountdown(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract applicationOncreate(Landroid/content/Context;)V
.end method

.method public abstract bindActivity(Landroid/content/Context;Landroid/app/Activity;)V
.end method

.method public abstract callFailHandleSetup()V
.end method

.method public abstract callFailHandleTearDown()V
.end method

.method public abstract clearVideoCallListener(Landroid/content/Context;)V
.end method

.method public abstract customizeDialerOptions(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;)V
.end method

.method public abstract customizeUpgradeToVideoIcon(Landroid/content/Context;Ljava/lang/Object;ZLjava/lang/Object;)V
.end method

.method public abstract deactiveGreeting(Ljava/lang/String;)Z
.end method

.method public abstract deactiveSMSDirectLink()Ljava/lang/Boolean;
.end method

.method public abstract deleteObject(Ljava/lang/String;)Z
.end method

.method public abstract fetchGreetMediaContent(Landroid/net/Uri;)[B
.end method

.method public abstract fetchGreetings(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoDeclineCountdown()J
.end method

.method public abstract getImapHelper(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;
        }
    .end annotation
.end method

.method public abstract getImapHelper(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;
        }
    .end annotation
.end method

.method public abstract insertContactFromCNAP(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract isInDataSaverMode(Landroid/content/Context;)Z
.end method

.method public abstract isNativeVoicemailTranscriptionEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isShowDialpadWFCIcon()Z
.end method

.method public abstract isSupportChatbot()Z
.end method

.method public abstract isTmoActivate()Z
.end method

.method public abstract isVideoCallPatternNumber(Landroid/net/Uri;)Z
.end method

.method public abstract makeTextForConnectionEvent(Landroid/content/Context;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onRttStarted(Landroid/content/Context;Landroid/telecom/Call;)V
.end method

.method public abstract onSetQueryString(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract registerInCallSessionModificationCauseListener()V
.end method

.method public abstract requestVideoCapable(Ljava/lang/String;)V
.end method

.method public abstract sendImmediately(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
.end method

.method public abstract setTmoTheme(Landroid/app/Activity;)V
.end method

.method public abstract setUp(Lcom/android/incallui/InCallPresenter;)V
.end method

.method public abstract showLastOutgoingEmcNumber()Z
.end method

.method public abstract showRttEmcFailedNotify(Landroid/content/Context;)V
.end method

.method public abstract showToastWhenVideoDowngradeToVoice(Landroid/content/Context;)V
.end method

.method public abstract startTimingForAutoDecline(Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract startWFCDialogListener(Landroid/content/Context;)V
.end method

.method public abstract stopTimingForAutoDecline()V
.end method

.method public abstract stopWFCDialogListener()V
.end method

.method public abstract unRegisterInCallSessionModificationCauseListener()V
.end method

.method public abstract updateEmailAddress(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updateGreetName(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updateQualityIndicator(IZLjava/lang/Object;)V
.end method

.method public abstract updateWFCHangupBtn(Landroid/widget/ImageButton;Z)V
.end method

.method public abstract uploadGreetingMessage(Ljava/lang/String;ILjava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract videoDowngradeDueInsufficientBandwidth(Lcom/android/incallui/call/DialerCall;I)V
.end method

.method public abstract videoSessionAutoDeclineControllerTearDown()V
.end method
