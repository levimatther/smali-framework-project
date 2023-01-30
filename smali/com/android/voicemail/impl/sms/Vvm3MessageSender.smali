.class public Lcom/android/voicemail/impl/sms/Vvm3MessageSender;
.super Lcom/android/voicemail/impl/sms/OmtpMessageSender;
.source "Vvm3MessageSender.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/voicemail/impl/sms/OmtpMessageSender;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/sms/Vvm3MessageSender;->requestVvmStatus(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public requestVvmStatus(Landroid/app/PendingIntent;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/voicemail/impl/sms/Vvm3MessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
