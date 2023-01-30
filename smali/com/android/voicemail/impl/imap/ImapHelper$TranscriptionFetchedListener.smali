.class final Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;
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
    name = "TranscriptionFetchedListener"
.end annotation


# instance fields
.field private mVoicemailTranscription:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/voicemail/impl/imap/ImapHelper;


# direct methods
.method private constructor <init>(Lcom/android/voicemail/impl/imap/ImapHelper;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;->this$0:Lcom/android/voicemail/impl/imap/ImapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/imap/ImapHelper$1;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;-><init>(Lcom/android/voicemail/impl/imap/ImapHelper;)V

    return-void
.end method


# virtual methods
.method public getVoicemailTranscription()Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;->mVoicemailTranscription:Ljava/lang/String;

    return-object v0
.end method

.method public messageRetrieved(Lcom/android/voicemail/impl/mail/Message;)V
    .locals 5

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched transcription for "

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

    const/4 v0, 0x1

    .line 672
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;->this$0:Lcom/android/voicemail/impl/imap/ImapHelper;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Message;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->access$300(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/mail/Body;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/android/voicemail/impl/imap/ImapHelper$TranscriptionFetchedListener;->mVoicemailTranscription:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "IO Exception:"

    .line 676
    invoke-static {v3, p1, v0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Messaging Exception:"

    .line 674
    invoke-static {v3, p1, v0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
