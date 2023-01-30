.class public Lcom/android/voicemail/impl/mail/store/ImapConnection;
.super Ljava/lang/Object;
.source "ImapConnection.java"


# static fields
.field static final IMAP_REDACTED_LOG:Ljava/lang/String; = "[IMAP command redacted]"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

.field private mTransport:Lcom/android/voicemail/impl/mail/MailTransport;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/mail/store/ImapStore;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImapConnection"

    .line 43
    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mCapabilities:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->setStore(Lcom/android/voicemail/impl/mail/store/ImapStore;)V

    return-void
.end method

.method private createParser()V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    .line 318
    new-instance v0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    return-void
.end method

.method private static decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private doDigestMd5Auth()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    const-string v0, "AUTHENTICATE DIGEST-MD5"

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->parseDigestMessage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 246
    new-instance v2, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;

    iget-object v3, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    iget-object v4, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;-><init>(Lcom/android/voicemail/impl/mail/store/ImapStore;Lcom/android/voicemail/impl/mail/MailTransport;Ljava/util/Map;)V

    .line 248
    invoke-virtual {v2}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->createResponse()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeContinuationResponse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v2, v0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->verifyResponseAuth(Ljava/lang/String;)V

    const-string v0, ""

    .line 271
    invoke-virtual {p0, v0, v1}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeContinuationResponse(Ljava/lang/String;Z)Ljava/util/List;

    return-void
.end method

.method private doLogin()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;,
            Lcom/android/voicemail/impl/mail/AuthenticationFailedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mCapabilities:Ljava/util/Set;

    const-string v2, "AUTH=DIGEST-MD5"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->doDigestMd5Auth()V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->getLoginPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v4, "ImapConnection"

    const-string v5, "ImapException"

    .line 190
    invoke-static {v4, v5, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NO"

    .line 195
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "user is blocked"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_1
    const-string v0, "service is not activated"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_2
    const-string v0, "mailbox not initialized"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    const-string v0, "invalid password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_4
    const-string v0, "service is not provisioned"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v3, "unknown client"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :sswitch_6
    const-string/jumbo v0, "unknown user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_2

    :sswitch_7
    const-string v0, "application error"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_2

    :cond_1
    :goto_1
    move v0, v2

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 222
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_BAD_IMAP_CREDENTIAL:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_3

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_REJECTED_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_3

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_USER_IS_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_3

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_SERVICE_NOT_ACTIVATED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_3

    .line 210
    :pswitch_3
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_SERVICE_NOT_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_3

    .line 207
    :pswitch_4
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_MAILBOX_NOT_INITIALIZED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_3

    .line 204
    :pswitch_5
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_INVALID_PASSWORD:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_3

    .line 201
    :pswitch_6
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_UNKNOWN_DEVICE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_3

    .line 198
    :pswitch_7
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_UNKNOWN_USER:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 224
    :goto_3
    new-instance v0, Lcom/android/voicemail/impl/mail/AuthenticationFailedException;

    invoke-direct {v0, v5, v1}, Lcom/android/voicemail/impl/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_REJECTED_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 228
    new-instance v0, Lcom/android/voicemail/impl/mail/MessagingException;

    invoke-direct {v0, v5, v1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ae150c8 -> :sswitch_7
        -0x5219b21f -> :sswitch_6
        -0x518dd79f -> :sswitch_5
        -0x3c561144 -> :sswitch_4
        0x2b82eea4 -> :sswitch_3
        0x49b6b59b -> :sswitch_2
        0x5ad0f659 -> :sswitch_1
        0x7308706b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasCapability(Ljava/lang/String;)Z
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mCapabilities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private maybeDoStartTls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    const-string v0, "STARTTLS"

    .line 172
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 174
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/MailTransport;->reopenTls()V

    .line 175
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->createParser()V

    .line 177
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->queryCapability()V

    :cond_0
    return-void
.end method

.method private queryCapability()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    const-string v0, "CAPABILITY"

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 285
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    .line 286
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->getConfig()Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getDisabledCapabilities()Ljava/util/Set;

    move-result-object v1

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    .line 288
    invoke-virtual {v2}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 292
    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_2

    .line 294
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 295
    iget-object v5, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mCapabilities:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mCapabilities:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 303
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mCapabilities:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "ImapConnection"

    invoke-static {v2, v0, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->logout()V

    .line 160
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/MailTransport;->close()V

    .line 161
    iput-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    .line 164
    iput-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    .line 165
    iput-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    return-void
.end method

.method public destroyResponses()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;->destroyResponses()V

    :cond_0
    return-void
.end method

.method executeContinuationResponse(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    if-eqz p2, :cond_0

    const-string p2, "[IMAP command redacted]"

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/voicemail/impl/mail/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->getCommandResponses()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getCommandResponses()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;->readResponse(Z)Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    :cond_1
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isOk()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    .line 391
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStatusOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v7

    .line 394
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    .line 395
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    .line 396
    new-instance v0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method getLoginPhrase()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    .line 86
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    .line 88
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapUtility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    return-object v0
.end method

.method logout()V
    .locals 4

    const-string v0, "ImapConnection"

    :try_start_0
    const-string v1, "LOGOUT"

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0, v1, v2}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;->readResponse(Z)Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    move-result-object v1

    const-string v3, "BYE"

    invoke-virtual {v1, v2, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Server did not respond LOGOUT with BYE"

    .line 143
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;->readResponse(Z)Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isOk()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Server did not respond OK after LOGOUT"

    .line 146
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 149
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while logging out:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public open()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    const-string v0, "ImapConnection"

    .line 95
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/MailTransport;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    if-nez v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/store/ImapStore;->cloneTransport()Lcom/android/voicemail/impl/mail/MailTransport;

    move-result-object v3

    iput-object v3, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/MailTransport;->open()V

    .line 107
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->createParser()V

    .line 112
    iget-object v3, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    invoke-virtual {v3, v2}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;->readResponse(Z)Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isOk()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->queryCapability()V

    .line 122
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->maybeDoStartTls()V

    .line 125
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->doLogin()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    return-void

    .line 114
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v3

    sget-object v4, Lcom/android/voicemail/impl/OmtpEvents;->DATA_INVALID_INITIAL_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v3, v4}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 115
    new-instance v3, Lcom/android/voicemail/impl/mail/MessagingException;

    const/16 v4, 0xd

    const-string v5, "Invalid server initial response"

    invoke-direct {v3, v4, v5}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "IOException"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 131
    invoke-static {v0, v4, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IOE_ON_OPEN:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 133
    throw v3

    :catch_1
    move-exception v3

    const-string v4, "SSLException "

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 127
    invoke-static {v0, v4, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_SSL_EXCEPTION:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 129
    new-instance v0, Lcom/android/voicemail/impl/mail/CertificateValidationException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/voicemail/impl/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    .line 136
    throw v0
.end method

.method public readResponse()Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mParser:Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponseParser;->readResponse(Z)Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->open()V

    .line 359
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    if-eqz p2, :cond_0

    const-string p1, "[IMAP command redacted]"

    :cond_0
    invoke-virtual {v2, v1, p1}, Lcom/android/voicemail/impl/mail/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 360
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null transport"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setStore(Lcom/android/voicemail/impl/mail/store/ImapStore;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    return-void
.end method
