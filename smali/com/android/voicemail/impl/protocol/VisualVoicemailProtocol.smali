.class public abstract Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;
.super Ljava/lang/Object;
.source "VisualVoicemailProtocol.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createMessageSender(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;
.end method

.method public getCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public handleEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 0

    .line 94
    invoke-static {p1, p2, p3, p4}, Lcom/android/voicemail/impl/DefaultOmtpEventHandler;->handleEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    return-void
.end method

.method public requestStatus(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/app/PendingIntent;)V
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/ProtocolHelper;->getMessageSender(Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->requestVvmStatus(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public startActivation(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/app/PendingIntent;)V
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/ProtocolHelper;->getMessageSender(Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->requestVvmActivation(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public startDeactivation(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;)V
    .locals 1

    .line 44
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/ProtocolHelper;->getMessageSender(Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->requestVvmDeactivation(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public startProvisioning(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/sms/StatusMessage;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public supportsProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public translateStatusSmsBundle(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
