.class public abstract Lcom/android/voicemail/impl/sms/OmtpMessageSender;
.super Ljava/lang/Object;
.source "OmtpMessageSender.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "OmtpMessageSender"


# instance fields
.field protected final mApplicationPort:S

.field protected final mContext:Landroid/content/Context;

.field protected final mDestinationNumber:Ljava/lang/String;

.field protected final mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 49
    iput-short p3, p0, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->mApplicationPort:S

    .line 50
    iput-object p4, p0, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public requestVvmStatus(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method protected sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    iget-short v3, p0, Lcom/android/voicemail/impl/sms/OmtpMessageSender;->mApplicationPort:S

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/voicemail/impl/TelephonyMangerCompat;->sendVisualVoicemailSms(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    return-void
.end method
