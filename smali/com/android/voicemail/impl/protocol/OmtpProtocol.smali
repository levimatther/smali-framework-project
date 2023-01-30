.class public Lcom/android/voicemail/impl/protocol/OmtpProtocol;
.super Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;
.source "OmtpProtocol.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;-><init>()V

    return-void
.end method


# virtual methods
.method public createMessageSender(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;
    .locals 9

    .line 33
    new-instance v8, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;

    .line 38
    invoke-static {}, Lcom/android/voicemail/impl/OmtpConstants;->getClientType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "11"

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/voicemail/impl/sms/OmtpStandardMessageSender;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method
