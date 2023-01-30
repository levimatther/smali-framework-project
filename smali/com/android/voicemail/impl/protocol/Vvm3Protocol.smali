.class public Lcom/android/voicemail/impl/protocol/Vvm3Protocol;
.super Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;
.source "Vvm3Protocol.java"


# static fields
.field private static final DEFAULT_PIN_LENGTH:I = 0x6

.field private static final DEFAULT_VMG_URL_KEY:Ljava/lang/String; = "default_vmg_url"

.field private static final IMAP_CHANGE_TUI_PWD_FORMAT:Ljava/lang/String; = "CHANGE_TUI_PWD PWD=%1$s OLD_PWD=%2$s"

.field private static final IMAP_CHANGE_VM_LANG_FORMAT:Ljava/lang/String; = "CHANGE_VM_LANG Lang=%1$s"

.field private static final IMAP_CLOSE_NUT:Ljava/lang/String; = "CLOSE_NUT"

.field private static final ISO639_Spanish:Ljava/lang/String; = "es"

.field private static final SMS_EVENT_UNRECOGNIZED:Ljava/lang/String; = "UNRECOGNIZED"

.field private static final SMS_EVENT_UNRECOGNIZED_CMD:Ljava/lang/String; = "cmd"

.field private static final SMS_EVENT_UNRECOGNIZED_STATUS:Ljava/lang/String; = "STATUS"

.field private static final TAG:Ljava/lang/String; = "Vvm3Protocol"

.field private static final VVM3_UNKNOWN_SUBSCRIBER_CAN_SUBSCRIBE_RESPONSE_CODE:Ljava/lang/String; = "2"

.field private static final VVM3_VM_LANGUAGE_ENGLISH_STANDARD_NO_GUEST_PROMPTS:Ljava/lang/String; = "5"

.field private static final VVM3_VM_LANGUAGE_SPANISH_STANDARD_NO_GUEST_PROMPTS:Ljava/lang/String; = "6"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;-><init>()V

    return-void
.end method

.method private static generatePin(I)Ljava/lang/String;
    .locals 5

    .line 310
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 311
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%010d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultPin(Lcom/android/voicemail/impl/sms/StatusMessage;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "unable to extract number from IMAP username"

    const-string v1, "Vvm3Protocol"

    .line 280
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getImapUserName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/4 v4, 0x0

    .line 282
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 284
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 287
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 289
    :catch_0
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static getMinimumPinLength(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 2

    .line 295
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string p0, "pw_len"

    const-string p1, ""

    .line 298
    invoke-virtual {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 299
    array-length p1, p0

    const/4 v0, 0x6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 301
    :try_start_0
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static setPin(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/sms/StatusMessage;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 257
    invoke-static {p3}, Lcom/android/voicemail/impl/protocol/Vvm3Protocol;->getDefaultPin(Lcom/android/voicemail/impl/sms/StatusMessage;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Vvm3Protocol"

    if-nez p3, :cond_0

    const-string p0, "cannot generate default PIN"

    .line 259
    invoke-static {v0, p0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 263
    :cond_0
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->isDefaultOldPinSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string p0, "PIN already set"

    .line 265
    invoke-static {v0, p0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 268
    :cond_1
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3Protocol;->getMinimumPinLength(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    invoke-static {v1}, Lcom/android/voicemail/impl/protocol/Vvm3Protocol;->generatePin(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p2, p3, v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->changePin(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_2

    .line 270
    invoke-static {p0, p1, v1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->setDefaultOldPIN(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 271
    sget-object p0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_DEFAULT_PIN_REPLACED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p2, p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    :cond_2
    const-string p0, "new user: PIN set"

    .line 273
    invoke-static {v0, p0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private startProvisionNewUser(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/sms/StatusMessage;)V
    .locals 6

    const-string v0, "Vvm3Protocol"

    .line 214
    :try_start_0
    invoke-static {p3, p2, p4}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest;->getNetwork(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 215
    :try_start_1
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->get()Landroid/net/Network;

    move-result-object v2

    const-string v3, "new user: network available"

    .line 217
    invoke-static {v0, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 219
    :try_start_2
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p2, v2, p4}, Lcom/android/operatorutils/IOperatorManager;->getImapHelper(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v2
    :try_end_2
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 223
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Locale;

    const-string v5, "es"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "6"

    .line 225
    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/imap/ImapHelper;->changeVoicemailTuiLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "5"

    .line 228
    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/imap/ImapHelper;->changeVoicemailTuiLanguage(Ljava/lang/String;)V

    :goto_0
    const-string v3, "new user: language set"

    .line 230
    invoke-static {v0, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2, v2, p5}, Lcom/android/voicemail/impl/protocol/Vvm3Protocol;->setPin(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/sms/StatusMessage;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 234
    invoke-virtual {v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeNewUserTutorial()V

    const-string p2, "new user: NUT closed"

    .line 235
    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p5, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_PROVISIONING_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 236
    invoke-static {p2, p5}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    const/4 p2, 0x0

    .line 238
    invoke-virtual {p3, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->requestStatus(Landroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    if-eqz v2, :cond_3

    .line 240
    :try_start_4
    invoke-virtual {v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_4
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 218
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p5

    if-eqz v2, :cond_2

    .line 240
    :try_start_6
    invoke-virtual {v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p5
    :try_end_7
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 241
    :goto_2
    :try_start_8
    sget-object p5, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_NEW_USER_SETUP_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p3, p4, p5}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 242
    invoke-virtual {p1}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    .line 243
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_3
    :goto_3
    if-eqz v1, :cond_5

    .line 245
    :try_start_9
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_9
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catchall_3
    move-exception p2

    .line 213
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p5

    if-eqz v1, :cond_4

    .line 245
    :try_start_b
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw p5
    :try_end_c
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_c .. :try_end_c} :catch_3

    .line 246
    :catch_3
    sget-object p2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION_CELLULAR_REQUIRED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p3, p4, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 247
    invoke-virtual {p1}, Lcom/android/voicemail/impl/ActivationTask;->fail()V

    :cond_5
    :goto_5
    return-void
.end method


# virtual methods
.method public createMessageSender(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;
    .locals 1

    .line 155
    new-instance v0, Lcom/android/voicemail/impl/sms/Vvm3MessageSender;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/voicemail/impl/sms/Vvm3MessageSender;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)V

    return-object v0
.end method

.method public getCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7d5784d2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x170ff158

    if-eq v0, v1, :cond_1

    const v1, -0xc1b2497

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "XCHANGE_VM_LANG LANG=%1$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "XCHANGE_TUI_PWD PWD=%1$s OLD_PWD=%2$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "XCLOSE_NUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 177
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "CHANGE_VM_LANG Lang=%1$s"

    return-object p1

    :cond_5
    const-string p1, "CLOSE_NUT"

    return-object p1

    :cond_6
    const-string p1, "CHANGE_TUI_PWD PWD=%1$s OLD_PWD=%2$s"

    return-object p1
.end method

.method public handleEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 0

    .line 164
    invoke-static {p1, p2, p3, p4}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->handleEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    return-void
.end method

.method public startActivation(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/app/PendingIntent;)V
    .locals 2

    const-string v0, "Vvm3Protocol"

    const-string v1, "Activating"

    .line 98
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->requestStatus(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startDeactivation(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;)V
    .locals 0

    return-void
.end method

.method public startProvisioning(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/sms/StatusMessage;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Vvm3Protocol"

    const-string v1, "start vvm3 provisioning"

    .line 121
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_PROVISIONING_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 122
    invoke-static {v1, v2}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 124
    invoke-virtual {p5}, Lcom/android/voicemail/impl/sms/StatusMessage;->getProvisioningStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "U"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Provisioning status: Unknown"

    .line 125
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p5}, Lcom/android/voicemail/impl/sms/StatusMessage;->getReturnCode()Ljava/lang/String;

    move-result-object p5

    const-string v1, "2"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    const-string p5, "Self provisioning available, subscribing"

    .line 127
    invoke-static {v0, p5}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p5, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;-><init>(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Landroid/os/Bundle;)V

    invoke-virtual {p5}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->subscribe()V

    goto :goto_0

    .line 130
    :cond_0
    sget-object p1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_UNKNOWN:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p3, p4, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p5}, Lcom/android/voicemail/impl/sms/StatusMessage;->getProvisioningStatus()Ljava/lang/String;

    move-result-object p6

    const-string v1, "N"

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    const-string p6, "setting up new user"

    .line 133
    invoke-static {v0, p6}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance p6, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    .line 136
    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p6, v0, p2}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 137
    invoke-virtual {p6}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/android/voicemail/impl/sms/StatusMessage;->putStatus(Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/voicemail/impl/protocol/Vvm3Protocol;->startProvisionNewUser(Lcom/android/voicemail/impl/ActivationTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/sms/StatusMessage;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p5}, Lcom/android/voicemail/impl/sms/StatusMessage;->getProvisioningStatus()Ljava/lang/String;

    move-result-object p1

    const-string p6, "P"

    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "User provisioned but not activated, disabling VVM"

    .line 141
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->setEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p5}, Lcom/android/voicemail/impl/sms/StatusMessage;->getProvisioningStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "B"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "User blocked"

    .line 144
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object p1, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p3, p4, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public supportsProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public translateStatusSmsBundle(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "UNRECOGNIZED"

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "cmd"

    .line 190
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "STATUS"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    .line 193
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "st"

    const-string v1, "U"

    .line 194
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "rc"

    const-string v1, "2"

    .line 195
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "default_vmg_url"

    .line 197
    invoke-virtual {p1, p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v1, "Vvm3Protocol"

    if-eqz p3, :cond_2

    const-string p1, "Unable to translate STATUS SMS: VMG URL is not set in config"

    .line 199
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string/jumbo p3, "vmg_url"

    .line 202
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "UNRECOGNIZED?cmd=STATUS translated into unprovisioned STATUS SMS"

    .line 203
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
