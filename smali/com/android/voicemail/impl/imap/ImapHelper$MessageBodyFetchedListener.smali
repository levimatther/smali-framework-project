.class final Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;
.super Ljava/lang/Object;
.source "ImapHelper.java"

# interfaces
.implements Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/imap/ImapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageBodyFetchedListener"
.end annotation


# instance fields
.field private mVoicemailPayload:Lcom/android/voicemail/impl/imap/VoicemailPayload;

.field final synthetic this$0:Lcom/android/voicemail/impl/imap/ImapHelper;


# direct methods
.method private constructor <init>(Lcom/android/voicemail/impl/imap/ImapHelper;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;->this$0:Lcom/android/voicemail/impl/imap/ImapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/imap/ImapHelper$1;)V
    .locals 0

    .line 617
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;-><init>(Lcom/android/voicemail/impl/imap/ImapHelper;)V

    return-void
.end method

.method private getVoicemailPayloadFromMessage(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/VoicemailPayload;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Message;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object p1

    check-cast p1, Lcom/android/voicemail/impl/mail/Multipart;

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 643
    :goto_0
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Multipart;->getCount()I

    move-result v3

    const-string v4, "ImapHelper"

    if-ge v2, v3, :cond_1

    .line 644
    invoke-virtual {p1, v2}, Lcom/android/voicemail/impl/mail/Multipart;->getBodyPart(I)Lcom/android/voicemail/impl/mail/BodyPart;

    move-result-object v3

    .line 645
    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 646
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "audio/"

    .line 647
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 648
    iget-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;->this$0:Lcom/android/voicemail/impl/imap/ImapHelper;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/BodyPart;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->access$300(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/mail/Body;)[B

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 649
    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "Fetched %s bytes of data"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    new-instance v0, Lcom/android/voicemail/impl/imap/VoicemailPayload;

    invoke-direct {v0, v5, p1}, Lcom/android/voicemail/impl/imap/VoicemailPayload;-><init>(Ljava/lang/String;[B)V

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No audio attachment found on this voicemail, mimeTypes:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getVoicemailPayload()Lcom/android/voicemail/impl/imap/VoicemailPayload;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;->mVoicemailPayload:Lcom/android/voicemail/impl/imap/VoicemailPayload;

    return-object v0
.end method

.method public messageRetrieved(Lcom/android/voicemail/impl/mail/Message;)V
    .locals 4

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched message body for "

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

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message retrieved: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 631
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;->getVoicemailPayloadFromMessage(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/VoicemailPayload;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageBodyFetchedListener;->mVoicemailPayload:Lcom/android/voicemail/impl/imap/VoicemailPayload;
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "IO Exception:"

    .line 635
    invoke-static {v3, p1, v0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Messaging Exception:"

    .line 633
    invoke-static {v3, p1, v0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
