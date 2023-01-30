.class final Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;
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
    name = "MessageStructureFetchedListener"
.end annotation


# instance fields
.field private mMessageStructure:Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;

.field final synthetic this$0:Lcom/android/voicemail/impl/imap/ImapHelper;


# direct methods
.method public constructor <init>(Lcom/android/voicemail/impl/imap/ImapHelper;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/voicemail/impl/imap/ImapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMessageOrNull(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 585
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Message;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ImapHelper"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Ignored non multi-part message"

    .line 586
    invoke-static {v2, v0, p1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 590
    :cond_0
    new-instance v0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;

    invoke-direct {v0}, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;-><init>()V

    .line 592
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Message;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/android/voicemail/impl/mail/Multipart;

    move v5, v3

    .line 593
    :goto_0
    invoke-virtual {v4}, Lcom/android/voicemail/impl/mail/Multipart;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 594
    invoke-virtual {v4, v5}, Lcom/android/voicemail/impl/mail/Multipart;->getBodyPart(I)Lcom/android/voicemail/impl/mail/BodyPart;

    move-result-object v6

    .line 595
    invoke-virtual {v6}, Lcom/android/voicemail/impl/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 596
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bodyPart mime type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v2, v8, v9}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "audio/"

    .line 598
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 599
    iput-object p1, v0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;->messageStructure:Lcom/android/voicemail/impl/mail/Message;

    goto :goto_1

    :cond_1
    const-string v8, "text/"

    .line 600
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 601
    iput-object v6, v0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;->transcriptionBodyPart:Lcom/android/voicemail/impl/mail/BodyPart;

    goto :goto_1

    .line 603
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown bodyPart MIME: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/voicemail/impl/VvmLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 607
    :cond_3
    iget-object p1, v0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;->messageStructure:Lcom/android/voicemail/impl/mail/Message;

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public getMessageStructure()Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;->mMessageStructure:Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;

    return-object v0
.end method

.method public messageRetrieved(Lcom/android/voicemail/impl/mail/Message;)V
    .locals 4

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched message structure for "

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

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message retrieved: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;->getMessageOrNull(Lcom/android/voicemail/impl/mail/Message;)Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;->mMessageStructure:Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureWrapper;

    if-nez p1, :cond_0

    const-string p1, "This voicemail does not have an attachment..."

    new-array v0, v1, [Ljava/lang/Object;

    .line 568
    invoke-static {v3, p1, v0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Messaging Exception"

    .line 572
    invoke-static {v3, p1, v1, v0}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    iget-object p1, p0, Lcom/android/voicemail/impl/imap/ImapHelper$MessageStructureFetchedListener;->this$0:Lcom/android/voicemail/impl/imap/ImapHelper;

    invoke-static {p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->access$200(Lcom/android/voicemail/impl/imap/ImapHelper;)V

    :cond_0
    return-void
.end method
