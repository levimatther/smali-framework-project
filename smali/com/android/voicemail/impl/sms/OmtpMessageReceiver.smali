.class public Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmtpMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OmtpMessageReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private processSync(Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/sms/SyncMessage;)V
    .locals 5

    .line 132
    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8ee

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9bf

    if-eq v1, v2, :cond_1

    const v2, 0x12960

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MBU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "NM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "GU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "OmtpMessageReceiver"

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_8

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized sync trigger event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 163
    :cond_4
    iget-object p2, p0, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    const-string v0, "download_only"

    invoke-static {p2, p1, v0}, Lcom/android/voicemail/impl/sync/SyncTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 135
    :cond_5
    invoke-static {}, Lcom/android/dialer/util/SettingsUtil;->isVVMEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "Using NVVM to get the voicemail"

    .line 136
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_6
    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/SyncMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "v"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-voice message of type \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/SyncMessage;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' received, ignoring"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v0, "insert new voicemail"

    .line 146
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/SyncMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/SyncMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/voicemail/impl/Voicemail;->createForInsertion(JLjava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Lcom/android/voicemail/impl/Voicemail$Builder;->setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/SyncMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {p2}, Lcom/android/voicemail/impl/sms/SyncMessage;->getLength()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/voicemail/impl/Voicemail$Builder;->setDuration(J)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/voicemail/impl/Voicemail$Builder;->setSourcePackage(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p2

    .line 153
    invoke-virtual {p2}, Lcom/android/voicemail/impl/Voicemail$Builder;->build()Lcom/android/voicemail/impl/Voicemail;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/android/voicemail/impl/Voicemail;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    iget-object v2, p0, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v1, v0}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->isVoicemailUnique(Lcom/android/voicemail/impl/Voicemail;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 157
    iget-object v1, p0, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/utils/VoicemailDatabaseUtil;->insert(Landroid/content/Context;Lcom/android/voicemail/impl/Voicemail;)Landroid/net/Uri;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/voicemail/impl/Voicemail$Builder;->setId(J)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/voicemail/impl/Voicemail$Builder;->setUri(Landroid/net/Uri;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/voicemail/impl/Voicemail$Builder;->build()Lcom/android/voicemail/impl/Voicemail;

    move-result-object p2

    .line 159
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/voicemail/impl/sync/SyncOneTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 56
    iput-object p1, p0, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_voicemail_sms"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/telephony/VisualVoicemailSms;

    .line 58
    invoke-virtual {p2}, Landroid/telephony/VisualVoicemailSms;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    const-string v1, "OmtpMessageReceiver"

    if-nez v0, :cond_0

    const-string p1, "Received message for null phone account"

    .line 62
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "Received message on locked device"

    .line 67
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/sms/LegacyModeSmsHandler;->handle(Landroid/content/Context;Landroid/telephony/VisualVoicemailSms;)V

    return-void

    .line 75
    :cond_1
    new-instance v2, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v3, p0, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 76
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo p1, "vvm config no longer valid"

    .line 77
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 81
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isLegacyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/sms/LegacyModeSmsHandler;->handle(Landroid/content/Context;Landroid/telephony/VisualVoicemailSms;)V

    goto :goto_0

    :cond_3
    const-string p1, "Received vvm message for disabled vvm source."

    .line 84
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 89
    :cond_4
    invoke-virtual {p2}, Landroid/telephony/VisualVoicemailSms;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p2}, Landroid/telephony/VisualVoicemailSms;->getFields()Landroid/os/Bundle;

    move-result-object p2

    if-eqz v3, :cond_a

    if-nez p2, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v4, "SYNC"

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 98
    new-instance p1, Lcom/android/voicemail/impl/sms/SyncMessage;

    invoke-direct {p1, p2}, Lcom/android/voicemail/impl/sms/SyncMessage;-><init>(Landroid/os/Bundle;)V

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SYNC sms for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with event "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Lcom/android/voicemail/impl/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-static {v1, p2}, Lcom/android/voicemail/impl/VvmLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/android/voicemail/impl/sms/OmtpMessageReceiver;->processSync(Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/sms/SyncMessage;)V

    goto :goto_1

    :cond_6
    const-string v4, "STATUS"

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Status sms for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/voicemail/impl/VvmLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p1, v0, p2}, Lcom/android/voicemail/impl/ActivationTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_1

    .line 111
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getProtocol()Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-result-object v4

    if-nez v4, :cond_8

    return-void

    .line 116
    :cond_8
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getProtocol()Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p2}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->translateStatusSmsBundle(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "Protocol recognized the SMS as STATUS, activating"

    .line 118
    invoke-static {v1, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p1, v0, p2}, Lcom/android/voicemail/impl/ActivationTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    const-string p1, "Unparsable VVM SMS received, ignoring"

    .line 93
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
