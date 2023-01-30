.class public Lcom/android/voicemail/impl/sms/OmtpCvvmMessageSender;
.super Lcom/android/voicemail/impl/sms/OmtpMessageSender;
.source "OmtpCvvmMessageSender.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/voicemail/impl/sms/OmtpMessageSender;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)V

    return-void
.end method

.method private sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dt"

    const-string v1, "15"

    .line 52
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/voicemail/impl/sms/OmtpCvvmMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/voicemail/impl/sms/OmtpCvvmMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 1

    const-string v0, "Activate"

    .line 36
    invoke-direct {p0, v0, p1}, Lcom/android/voicemail/impl/sms/OmtpCvvmMessageSender;->sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 1

    const-string v0, "Deactivate"

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/android/voicemail/impl/sms/OmtpCvvmMessageSender;->sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestVvmStatus(Landroid/app/PendingIntent;)V
    .locals 1

    const-string v0, "Status"

    .line 46
    invoke-direct {p0, v0, p1}, Lcom/android/voicemail/impl/sms/OmtpCvvmMessageSender;->sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
