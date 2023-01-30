.class public Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;
.super Lcom/android/voicemail/impl/sms/OmtpMessageSender;
.source "OmtpStandardMessageSender.java"


# instance fields
.field private final mClientPrefix:Ljava/lang/String;

.field private final mClientType:Ljava/lang/String;

.field private final mProtocolVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/voicemail/impl/sms/OmtpMessageSender;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)V

    .line 52
    iput-object p5, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mClientType:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mClientPrefix:Ljava/lang/String;

    return-void
.end method

.method private appendApplicationPort(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, ";"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-short v0, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mApplicationPort:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private appendClientPrefix(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, ";"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mClientPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, ":"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    const-string v1, "pv"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ";"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mClientType:Ljava/lang/String;

    const-string v1, "ct"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V

    .line 66
    iget-object v1, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    const-string v2, "12"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    const-string v2, "13"

    .line 67
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendApplicationPort(Ljava/lang/StringBuilder;)V

    .line 69
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendClientPrefix(Ljava/lang/StringBuilder;)V

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deactivate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestVvmStatus(Landroid/app/PendingIntent;)V
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    const-string v2, "13"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendApplicationPort(Ljava/lang/StringBuilder;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->appendClientPrefix(Ljava/lang/StringBuilder;)V

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
