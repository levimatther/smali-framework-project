.class public Lcom/android/voicemail/impl/imap/ImapHelper;
.super Ljava/lang/Object;
.source "ImapHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;,
        Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;,
        Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;,
        Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;,
        Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImapHelper"


# instance fields
.field private final mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

.field private final mContext:Landroid/content/Context;

.field private mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

.field private mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

.field private final mNetwork:Landroid/net/Network;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field mPrefs:Lcom/android/voicemail/impl/VisualVoicemailPreferences;

.field private final mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;
        }
    .end annotation

    .line 91
    new-instance v2, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v2, p1, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/voicemail/impl/imap/ImapHelper;-><init>(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mContext:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 108
    iput-object p4, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mNetwork:Landroid/net/Network;

    .line 109
    iput-object p5, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    .line 110
    iput-object p2, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    .line 111
    new-instance p2, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {p2, p1, p3}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    iput-object p2, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mPrefs:Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    const/4 p2, 0x0

    .line 114
    :try_start_0
    invoke-static {p1}, Lcom/android/voicemail/impl/mail/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 116
    iget-object p3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mPrefs:Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    const-string/jumbo p5, "u"

    const/4 v0, 0x0

    invoke-virtual {p3, p5, v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    iget-object p3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mPrefs:Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    const-string p5, "pw"

    invoke-virtual {p3, p5, v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    iget-object p3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mPrefs:Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    const-string p5, "srv"

    invoke-virtual {p3, p5, v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 119
    iget-object p3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mPrefs:Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    const-string p5, "ipt"

    invoke-virtual {p3, p5, v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 122
    iget-object p5, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-virtual {p5}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getSslPort()I

    move-result p5

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    move v8, p3

    move v6, p5

    goto :goto_0

    :cond_0
    move v8, p2

    move v6, p3

    .line 128
    :goto_0
    new-instance p3, Lcom/android/voicemail/impl/mail/store/ImapStore;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p0

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/voicemail/impl/mail/store/ImapStore;-><init>(Landroid/content/Context;Lcom/android/voicemail/impl/imap/ImapHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/net/Network;)V

    iput-object p3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 131
    sget-object p3, Lcom/android/voicemail/impl/OmtpEvents;->DATA_INVALID_PORT:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p0, p3}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "ImapHelper"

    const-string p4, "Could not parse port number"

    .line 132
    invoke-static {p3, p4, p2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance p2, Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cannot initialize ImapHelper:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$200(Lcom/android/voicemail/impl/imap/ImapHelper;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/mail/Body;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->getDataFromBody(Lcom/android/voicemail/impl/mail/Body;)[B

    move-result-object p0

    return-object p0
.end method

.method private closeImapFolder()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 706
    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->close(Z)V

    :cond_0
    return-void
.end method

.method private convertToImapMessages(Ljava/util/List;)[Lcom/android/voicemail/impl/mail/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;)[",
            "Lcom/android/voicemail/impl/mail/Message;"
        }
    .end annotation

    .line 696
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/voicemail/impl/mail/Message;

    const/4 v1, 0x0

    .line 697
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 698
    new-instance v2, Lcom/android/voicemail/impl/mail/internet/MimeMessage;

    invoke-direct {v2}, Lcom/android/voicemail/impl/mail/internet/MimeMessage;-><init>()V

    aput-object v2, v0, v1

    .line 699
    aget-object v2, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/voicemail/impl/Voicemail;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/mail/Message;->setUid(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private fetchMessageStructure(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching message structure for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImapHelper"

    invoke-static {v3, v0, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    new-instance v0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;-><init>(Lcom/android/voicemail/impl/imap/ImapHelper;)V

    .line 328
    new-instance v2, Lcom/android/voicemail/impl/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/voicemail/impl/mail/FetchProfile;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    .line 329
    sget-object v4, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->FLAGS:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    aput-object v4, v3, v1

    sget-object v4, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 330
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 329
    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/mail/FetchProfile;->addAll(Ljava/util/Collection;)Z

    .line 335
    iget-object v3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    new-array v4, v5, [Lcom/android/voicemail/impl/mail/Message;

    aput-object p1, v4, v1

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->fetch([Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/FetchProfile;Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)V

    .line 336
    invoke-virtual {v0}, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;->getMessageStructure()Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;

    move-result-object p1

    return-object p1
.end method

.method private fetchVoicemailPayload(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/VoicemailPayload;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching message body for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImapHelper"

    invoke-static {v3, v0, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    new-instance v0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;-><init>(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/imap/ImapHelper$1;)V

    .line 370
    new-instance v2, Lcom/android/voicemail/impl/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/voicemail/impl/mail/FetchProfile;-><init>()V

    .line 371
    sget-object v3, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->BODY:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/voicemail/impl/mail/Message;

    aput-object p1, v4, v1

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->fetch([Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/FetchProfile;Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)V

    .line 374
    invoke-virtual {v0}, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;->getVoicemailPayload()Lcom/android/voicemail/impl/imap/VoicemailPayload;

    move-result-object p1

    return-object p1
.end method

.method private static getChangePinResultFromImapResponse(Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isOk()Z

    move-result v0

    const-string v1, "ImapHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object p0

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change PIN failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "password too short"

    .line 462
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-string v0, "password too long"

    .line 465
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "password too weak"

    .line 468
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "old password mismatch"

    .line 471
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-string v0, "password contains invalid characters"

    .line 474
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x6

    return p0

    :cond_5
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "change PIN succeeded"

    .line 479
    invoke-static {v1, v0, p0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 457
    :cond_6
    new-instance p0, Lcom/android/voicemail/impl/mail/MessagingException;

    const/16 v0, 0x13

    const-string v1, "tagged response expected"

    invoke-direct {p0, v0, v1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private getDataFromBody(Lcom/android/voicemail/impl/mail/Body;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 712
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 714
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/voicemail/impl/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 715
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 718
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 717
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 718
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 719
    throw p1
.end method

.method private getNumber([Lcom/android/voicemail/impl/mail/Address;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    .line 302
    array-length v0, p1

    if-lez v0, :cond_2

    .line 303
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "ImapHelper"

    const-string v3, "More than one from addresses found. Using the first one."

    .line 304
    invoke-static {v1, v3, v0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_0
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x40

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 310
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getVoicemailFromMessageStructure(Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;)Lcom/android/voicemail/impl/Voicemail;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 266
    iget-object v0, p1, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;->messageStructure:Lcom/android/voicemail/impl/mail/Message;

    .line 268
    new-instance v1, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;-><init>(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/imap/ImapHelper$1;)V

    .line 269
    iget-object v2, p1, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;->transcriptionBodyPart:Lcom/android/voicemail/impl/mail/BodyPart;

    if-eqz v2, :cond_0

    .line 270
    new-instance v2, Lcom/android/voicemail/impl/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/voicemail/impl/mail/FetchProfile;-><init>()V

    .line 271
    iget-object p1, p1, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;->transcriptionBodyPart:Lcom/android/voicemail/impl/mail/BodyPart;

    invoke-virtual {v2, p1}, Lcom/android/voicemail/impl/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/voicemail/impl/mail/Message;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v3, v2, v1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->fetch([Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/FetchProfile;Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)V

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 278
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/Message;->getFrom()[Lcom/android/voicemail/impl/mail/Address;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->getNumber([Lcom/android/voicemail/impl/mail/Address;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/Message;->getFlags()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "seen"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 280
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/Message;->getDuration()Ljava/lang/Long;

    move-result-object v5

    .line 282
    invoke-static {v2, v3, p1}, Lcom/android/voicemail/impl/Voicemail;->createForInsertion(JLjava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 283
    invoke-virtual {p1, v2}, Lcom/android/voicemail/impl/Voicemail$Builder;->setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/voicemail/impl/Voicemail$Builder;->setSourcePackage(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p1

    .line 285
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p1

    .line 286
    invoke-virtual {p1, v4}, Lcom/android/voicemail/impl/Voicemail$Builder;->setIsRead(Z)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p1

    .line 287
    invoke-virtual {v1}, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;->getVoicemailTranscription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/Voicemail$Builder;->setTranscription(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p1

    if-eqz v5, :cond_1

    .line 289
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/voicemail/impl/Voicemail$Builder;->setDuration(J)Lcom/android/voicemail/impl/Voicemail$Builder;

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/android/voicemail/impl/Voicemail$Builder;->build()Lcom/android/voicemail/impl/Voicemail;

    move-result-object p1

    return-object p1
.end method

.method private openImapFolder(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/ImapFolder;
    .locals 4

    const/4 v0, 0x0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    if-nez v1, :cond_0

    return-object v0

    .line 686
    :cond_0
    new-instance v1, Lcom/android/voicemail/impl/mail/store/ImapFolder;

    iget-object v2, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    const-string v3, "INBOX"

    invoke-direct {v1, v2, v3}, Lcom/android/voicemail/impl/mail/store/ImapFolder;-><init>(Lcom/android/voicemail/impl/mail/store/ImapStore;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1, p1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ImapHelper"

    const-string v3, "Messaging Exception"

    .line 690
    invoke-static {v2, p1, v3, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private varargs setFlags(Ljava/util/List;[Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "mode_read_write"

    .line 208
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/ImapFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    if-eqz v0, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->convertToImapMessages(Ljava/util/List;)[Lcom/android/voicemail/impl/mail/Message;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->setFlags([Lcom/android/voicemail/impl/mail/Message;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "ImapHelper"

    const-string v0, "Messaging exception"

    new-array v2, v1, [Ljava/lang/Object;

    .line 215
    invoke-static {p2, p1, v0, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v1

    :goto_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    .line 219
    throw p1
.end method

.method private setQuota(Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ImapHelper"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "quota was null"

    .line 522
    invoke-static {v1, v0, p1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 526
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating Voicemail status table with quota occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->occupied:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new quota total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->total:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    iget-object v2, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v2

    iget v3, p1, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->occupied:I

    iget p1, p1, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->total:I

    invoke-virtual {v2, v3, p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setQuota(II)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Updated quota occupied and total"

    .line 534
    invoke-static {v1, v0, p1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateQuota(Lcom/android/voicemail/impl/mail/store/ImapFolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 517
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->getQuota()Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->setQuota(Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;)V

    return-void
.end method


# virtual methods
.method public changePin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getConnection()Lcom/android/voicemail/impl/mail/store/ImapConnection;

    move-result-object v0

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->getConfig()Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getProtocol()Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-result-object v1

    const-string v2, "XCHANGE_TUI_PWD PWD=%1$s OLD_PWD=%2$s"

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 419
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->readResponse()Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->getChangePinResultFromImapResponse(Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "ImapHelper"

    const-string v1, "changePin: "

    .line 421
    invoke-static {p2, v1, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x6

    .line 424
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    return p1

    :goto_0
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    .line 425
    throw p1
.end method

.method public changeVoicemailTuiLanguage(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getConnection()Lcom/android/voicemail/impl/mail/store/ImapConnection;

    move-result-object v0

    const/4 v1, 0x0

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->getConfig()Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getProtocol()Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-result-object v2

    const-string v3, "XCHANGE_VM_LANG LANG=%1$s"

    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v3, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "ImapHelper"

    .line 435
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :goto_0
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    .line 438
    throw p1
.end method

.method public close()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->closeConnection()V

    return-void
.end method

.method public closeNewUserTutorial()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getConnection()Lcom/android/voicemail/impl/mail/store/ImapConnection;

    move-result-object v0

    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->getConfig()Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getProtocol()Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;

    move-result-object v1

    const-string v2, "XCLOSE_NUT"

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 447
    :try_start_1
    new-instance v2, Lcom/android/voicemail/impl/mail/MessagingException;

    const/16 v3, 0x13

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :goto_0
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    .line 450
    throw v1
.end method

.method public connect()Lcom/android/voicemail/impl/mail/store/ImapConnection;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mImapStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getConnection()Lcom/android/voicemail/impl/mail/store/ImapConnection;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllVoicemails()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "mode_read_write"

    .line 231
    invoke-direct {p0, v3}, Lcom/android/voicemail/impl/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/ImapFolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-object v2

    .line 238
    :cond_0
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->getMessages([Ljava/lang/String;)[Lcom/android/voicemail/impl/mail/Message;

    move-result-object v3

    .line 240
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 242
    invoke-direct {p0, v6}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchMessageStructure(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 244
    invoke-direct {p0, v6}, Lcom/android/voicemail/impl/imap/ImapHelper;->getVoicemailFromMessageStructure(Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;)Lcom/android/voicemail/impl/Voicemail;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "ImapHelper"

    const-string v4, "Messaging Exception"

    new-array v1, v1, [Ljava/lang/Object;

    .line 249
    invoke-static {v3, v0, v4, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-object v2

    :goto_1
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    .line 253
    throw v0
.end method

.method public fetchDeltaVoicemails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchTranscription(Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mode_read_write"

    .line 379
    invoke-direct {p0, v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/ImapFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v0

    .line 385
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->getMessage(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/Message;

    move-result-object p2
    :try_end_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v0

    .line 390
    :cond_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchMessageStructure(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 392
    new-instance v3, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;-><init>(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/imap/ImapHelper$1;)V

    .line 393
    iget-object v4, v1, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;->transcriptionBodyPart:Lcom/android/voicemail/impl/mail/BodyPart;

    if-eqz v4, :cond_2

    .line 394
    new-instance v4, Lcom/android/voicemail/impl/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/voicemail/impl/mail/FetchProfile;-><init>()V

    .line 395
    iget-object v1, v1, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;->transcriptionBodyPart:Lcom/android/voicemail/impl/mail/BodyPart;

    invoke-virtual {v4, v1}, Lcom/android/voicemail/impl/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    new-array v5, v2, [Lcom/android/voicemail/impl/mail/Message;

    aput-object p2, v5, v0

    invoke-virtual {v1, v5, v4, v3}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->fetch([Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/FetchProfile;Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)V

    .line 400
    invoke-virtual {v3}, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;->getVoicemailTranscription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;->setVoicemailTranscription(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    :cond_2
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "ImapHelper"

    const-string v1, "Messaging Exception"

    new-array v2, v0, [Ljava/lang/Object;

    .line 405
    invoke-static {p2, p1, v1, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v0

    :goto_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    .line 409
    throw p1
.end method

.method public fetchVoicemailPayload(Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mode_read_write"

    .line 341
    invoke-direct {p0, v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/ImapFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v0

    .line 346
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->getMessage(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/Message;

    move-result-object p2
    :try_end_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v0

    .line 350
    :cond_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchVoicemailPayload(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/VoicemailPayload;

    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->setVoicemailContent(Lcom/android/voicemail/impl/imap/VoicemailPayload;)V
    :try_end_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 355
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    .line 356
    throw p1

    .line 355
    :catch_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return v0
.end method

.method public getConfig()Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    return-object v0
.end method

.method public getQuota()Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;
    .locals 5

    const-string v0, "ImapHelper"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "mode_read_only"

    .line 501
    invoke-direct {p0, v3}, Lcom/android/voicemail/impl/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/ImapFolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    if-nez v3, :cond_0

    const-string v3, "Unable to open folder"

    new-array v4, v2, [Ljava/lang/Object;

    .line 504
    invoke-static {v0, v3, v4}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-object v1

    .line 507
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->getQuota()Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "Messaging Exception"

    new-array v2, v2, [Ljava/lang/Object;

    .line 509
    invoke-static {v0, v3, v4, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-object v1

    :goto_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    .line 513
    throw v0
.end method

.method public handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    invoke-virtual {v0, v1, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    return-void
.end method

.method public isMobile()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 156
    iget-object v1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isRoaming()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 145
    iget-object v1, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    return v0
.end method

.method public markMessagesAsDeleted(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "deleted"

    .line 189
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->setFlags(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public markMessagesAsRead(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "seen"

    .line 178
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->setFlags(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public markMessagesAsUnread(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "unseen"

    .line 183
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->setFlags(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateQuota()V
    .locals 4

    :try_start_0
    const-string v0, "mode_read_write"

    .line 485
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->openImapFolder(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/ImapFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-void

    .line 490
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->updateQuota(Lcom/android/voicemail/impl/mail/store/ImapFolder;)V
    :try_end_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ImapHelper"

    const-string v2, "Messaging Exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 492
    invoke-static {v1, v0, v2, v3}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    :goto_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    return-void

    :goto_1
    invoke-direct {p0}, Lcom/android/voicemail/impl/imap/ImapHelper;->closeImapFolder()V

    .line 495
    throw v0
.end method
