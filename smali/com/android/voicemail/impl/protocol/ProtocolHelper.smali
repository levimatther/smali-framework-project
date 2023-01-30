.class public Lcom/android/voicemail/impl/protocol/ProtocolHelper;
.super Ljava/lang/Object;
.source "ProtocolHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProtocolHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageSender(Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;
    .locals 3

    .line 31
    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getApplicationPort()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getDestinationNumber()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "ProtocolHelper"

    const-string p1, "No destination number for this carrier."

    .line 34
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    int-to-short v0, v0

    .line 38
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->createMessageSender(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;

    move-result-object p0

    return-object p0
.end method
