.class Lcom/android/voicemail/impl/PinChangerImpl;
.super Ljava/lang/Object;
.source "PinChangerImpl.java"

# interfaces
.implements Lcom/android/voicemail/PinChanger;


# static fields
.field private static final KEY_SCRAMBLED_PIN:Ljava/lang/String; = "default_old_pin"


# instance fields
.field private final context:Landroid/content/Context;

.field private final phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method


# virtual methods
.method public changePin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 52
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 53
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 54
    iget-object v1, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1, v2}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v1

    const/4 v2, 0x6

    .line 55
    :try_start_0
    iget-object v3, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 56
    invoke-static {v0, v3, v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest;->getNetwork(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 57
    :try_start_1
    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->get()Landroid/net/Network;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 58
    :try_start_2
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v5, v6, v3, v1}, Lcom/android/operatorutils/IOperatorManager;->getImapHelper(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v1
    :try_end_2
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 59
    :try_start_3
    invoke-virtual {v1, p1, p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->changePin(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    .line 60
    :try_start_4
    invoke-virtual {v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_4
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_0
    if-eqz v0, :cond_1

    .line 66
    :try_start_5
    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_5
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    .line 58
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_2

    .line 60
    :try_start_7
    invoke-virtual {v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
    :try_end_8
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    :try_start_9
    const-string p2, "VoicemailClientImpl.changePin"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChangePinNetworkRequestCallback: onAvailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_3

    .line 66
    :try_start_a
    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_a
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_a .. :try_end_a} :catch_2

    :cond_3
    return v2

    :catchall_3
    move-exception p1

    .line 55
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz v0, :cond_4

    .line 66
    :try_start_c
    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2
    :try_end_d
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    return v2
.end method

.method public getPinSpecification()Lcom/android/voicemail/PinChanger$PinSpecification;
    .locals 4

    .line 91
    new-instance v0, Lcom/android/voicemail/PinChanger$PinSpecification;

    invoke-direct {v0}, Lcom/android/voicemail/PinChanger$PinSpecification;-><init>()V

    .line 92
    new-instance v1, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    iget-object v2, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string v2, "pw_len"

    const-string v3, ""

    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 96
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 98
    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/voicemail/PinChanger$PinSpecification;->minLength:I

    const/4 v2, 0x1

    .line 99
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/voicemail/PinChanger$PinSpecification;->maxLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getScrambledPin()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    iget-object v1, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string v1, "default_old_pin"

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setScrambledPin(Ljava/lang/String;)V
    .locals 3

    .line 73
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    iget-object v1, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 74
    invoke-virtual {v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_old_pin"

    .line 75
    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v0, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p1, v0, v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    iget-object v0, p0, Lcom/android/voicemail/impl/PinChangerImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/voicemail/impl/PinChangerImpl;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 80
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v0

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_PIN_SET:Lcom/android/voicemail/impl/OmtpEvents;

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    :cond_0
    return-void
.end method
