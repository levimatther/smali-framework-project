.class public Lcom/android/voicemail/impl/mail/store/ImapFolder;
.super Ljava/lang/Object;
.source "ImapFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;,
        Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x4000

.field public static final MODE_READ_ONLY:Ljava/lang/String; = "mode_read_only"

.field public static final MODE_READ_WRITE:Ljava/lang/String; = "mode_read_write"

.field private static final PERMANENT_FLAGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ImapFolder"


# instance fields
.field private mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

.field private mExists:Z

.field mHash:[Ljava/lang/Object;

.field private mMessageCount:I

.field private mMode:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "deleted"

    const-string v1, "seen"

    const-string v2, "flagged"

    const-string v3, "answered"

    .line 57
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->PERMANENT_FLAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/voicemail/impl/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMessageCount:I

    .line 75
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    .line 76
    iput-object p2, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mName:Ljava/lang/String;

    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 788
    :cond_0
    new-instance v0, Lcom/android/voicemail/impl/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeBody(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;ILcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)Lcom/android/voicemail/impl/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 438
    new-instance p1, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;

    invoke-direct {p1}, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;-><init>()V

    .line 439
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const/16 p3, 0x4000

    :try_start_0
    new-array p3, p3, [B

    :goto_0
    const/4 p4, -0x1

    .line 444
    invoke-virtual {p0, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq p4, v0, :cond_0

    const/4 p4, 0x0

    .line 445
    invoke-virtual {p2, p3, p4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 452
    :cond_0
    :goto_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p0, "\n\nThere was an error while decoding the message."

    .line 450
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object p1

    .line 452
    :goto_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 453
    throw p0
.end method

.method private destroyResponses()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->destroyResponses()V

    :cond_0
    return-void
.end method

.method private doSelect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "SELECT \"%s\""

    .line 718
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "mode_read_write"

    .line 721
    iput-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    .line 723
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, -0x1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    const-string v7, "EXISTS"

    .line 724
    invoke-virtual {v6, v2, v7}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 725
    invoke-virtual {v6, v5}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v4

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 727
    invoke-virtual {v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v6

    const-string v7, "READ-ONLY"

    .line 728
    invoke-virtual {v6, v7}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "mode_read_only"

    .line 729
    iput-object v6, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v7, "READ-WRITE"

    .line 730
    invoke-virtual {v6, v7}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 731
    iput-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    goto :goto_0

    .line 733
    :cond_3
    invoke-virtual {v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 734
    :cond_4
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v0

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_MAILBOX_OPEN_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 735
    new-instance v0, Lcom/android/voicemail/impl/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open mailbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eq v4, v3, :cond_6

    .line 742
    iput v4, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMessageCount:I

    .line 743
    iput-boolean v2, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mExists:Z

    return-void

    .line 740
    :cond_6
    new-instance v0, Lcom/android/voicemail/impl/mail/MessagingException;

    const-string v1, "Did not find message count during select"

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleUntaggedResponse(Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "EXISTS"

    .line 478
    invoke-virtual {p1, v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result p1

    iput p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMessageCount:I

    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    .line 468
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ioExceptionHandler(Lcom/android/voicemail/impl/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/voicemail/impl/mail/MessagingException;
    .locals 2

    const-string v0, "ImapFolder"

    const-string v1, "IO Exception detected: "

    .line 793
    invoke-static {v0, v1, p2}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->close()V

    .line 795
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 796
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    const/4 p1, 0x0

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->close(Z)V

    .line 799
    :cond_0
    new-instance p1, Lcom/android/voicemail/impl/mail/MessagingException;

    const/4 v0, 0x1

    const-string v1, "IO Error"

    invoke-direct {p1, v0, v1, p2}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method protected static isAsciiString(Ljava/lang/String;)Z
    .locals 5

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 210
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static parseBodyStructure(Lcom/android/voicemail/impl/mail/store/imap/ImapList;Lcom/android/voicemail/impl/mail/Part;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 485
    invoke-virtual {v0, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isList()Z

    move-result v4

    const-string v5, "TEXT"

    if-eqz v4, :cond_3

    .line 489
    new-instance v4, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;-><init>()V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v6

    :goto_0
    if-ge v3, v6, :cond_2

    .line 491
    invoke-virtual {v0, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object v7

    .line 492
    invoke-virtual {v7}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isList()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 497
    new-instance v7, Lcom/android/voicemail/impl/mail/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/android/voicemail/impl/mail/internet/MimeBodyPart;-><init>()V

    .line 498
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 499
    invoke-virtual {v0, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/voicemail/impl/mail/store/imap/ImapList;Lcom/android/voicemail/impl/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 502
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/voicemail/impl/mail/store/imap/ImapList;Lcom/android/voicemail/impl/mail/Part;Ljava/lang/String;)V

    .line 504
    :goto_1
    invoke-virtual {v4, v7}, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/voicemail/impl/mail/BodyPart;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v7}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isString()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    invoke-virtual {v0, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 513
    :cond_2
    invoke-interface {v1, v4}, Lcom/android/voicemail/impl/mail/Part;->setBody(Lcom/android/voicemail/impl/mail/Body;)V

    goto/16 :goto_6

    .line 530
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v4

    const/4 v6, 0x1

    .line 531
    invoke-virtual {v0, v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v7

    .line 532
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 534
    invoke-virtual {v0, v8}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v9

    const/4 v10, 0x3

    .line 535
    invoke-virtual {v0, v10}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v10

    const/4 v11, 0x5

    .line 536
    invoke-virtual {v0, v11}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v11

    const/4 v12, 0x6

    .line 537
    invoke-virtual {v0, v12}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v12

    const-string v13, "message/rfc822"

    .line 539
    invoke-static {v7, v13}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 556
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v9}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v7

    move v14, v6

    :goto_2
    const-string v15, ";\n %s=\"%s\""

    if-ge v14, v7, :cond_4

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v8, v14, -0x1

    .line 570
    invoke-virtual {v9, v8}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 571
    invoke-virtual {v9, v14}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1

    aput-object v8, v6, v16

    .line 568
    invoke-static {v15, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 567
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto :goto_2

    .line 574
    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Content-Type"

    invoke-interface {v1, v7, v6}, Lcom/android/voicemail/impl/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v4, v5}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isList()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 583
    invoke-virtual {v0, v4}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/16 v4, 0x8

    .line 585
    invoke-virtual {v0, v4}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v0

    .line 588
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 592
    invoke-virtual {v0, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 593
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 594
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v5, 0x1

    .line 597
    invoke-virtual {v0, v5}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 603
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v5

    const/4 v6, 0x1

    :goto_4
    if-ge v6, v5, :cond_7

    .line 606
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    add-int/lit8 v13, v6, -0x1

    .line 611
    invoke-virtual {v0, v13}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v13

    .line 612
    invoke-virtual {v13}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 613
    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v3

    .line 614
    invoke-virtual {v0, v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v9, v14

    .line 607
    invoke-static {v7, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 606
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    :cond_7
    if-lez v12, :cond_8

    .line 620
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "size"

    invoke-static {v0, v5}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 621
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, ";\n size=%d"

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 629
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Content-Disposition"

    invoke-interface {v1, v3, v0}, Lcom/android/voicemail/impl/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_9
    invoke-virtual {v11}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 637
    invoke-virtual {v11}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Content-Transfer-Encoding"

    invoke-interface {v1, v3, v0}, Lcom/android/voicemail/impl/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_a
    invoke-virtual {v10}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 644
    invoke-virtual {v10}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Content-ID"

    invoke-interface {v1, v3, v0}, Lcom/android/voicemail/impl/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-lez v12, :cond_e

    .line 648
    instance-of v0, v1, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;

    if-eqz v0, :cond_c

    .line 649
    move-object v0, v1

    check-cast v0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;

    invoke-virtual {v0, v12}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setSize(I)V

    goto :goto_5

    .line 650
    :cond_c
    instance-of v0, v1, Lcom/android/voicemail/impl/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_d

    .line 651
    move-object v0, v1

    check-cast v0, Lcom/android/voicemail/impl/mail/internet/MimeBodyPart;

    invoke-virtual {v0, v12}, Lcom/android/voicemail/impl/mail/internet/MimeBodyPart;->setSize(I)V

    goto :goto_5

    .line 653
    :cond_d
    new-instance v0, Lcom/android/voicemail/impl/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown part type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_5
    const-string v0, "X-Android-Attachment-StoreData"

    .line 656
    invoke-interface {v1, v0, v2}, Lcom/android/voicemail/impl/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    .line 549
    :cond_f
    new-instance v0, Lcom/android/voicemail/impl/mail/MessagingException;

    const-string v1, "BODYSTRUCTURE message/rfc822 not yet supported."

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->expunge()[Lcom/android/voicemail/impl/mail/Message;
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ImapFolder"

    const-string v1, "Messaging Exception"

    .line 139
    invoke-static {v0, v1, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMessageCount:I

    .line 143
    monitor-enter p0

    const/4 p1, 0x0

    .line 144
    :try_start_1
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/Message;
    .locals 1

    .line 803
    new-instance v0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/voicemail/impl/mail/store/ImapFolder;)V

    return-object v0
.end method

.method public expunge()[Lcom/android/voicemail/impl/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 661
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->checkOpen()V

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    const-string v1, "EXPUNGE"

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 665
    :try_start_1
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v1

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_GENERIC_IMAP_IOE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 666
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/voicemail/impl/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/voicemail/impl/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :goto_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    .line 669
    throw v0
.end method

.method public fetch([Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/FetchProfile;Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 236
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->fetchInternal([Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/FetchProfile;Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception detected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ImapFolder"

    invoke-static {p3, p2}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    throw p1
.end method

.method public fetchInternal([Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/FetchProfile;Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 245
    array-length v4, v0

    if-nez v4, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->checkOpen()V

    .line 249
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 250
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v0, v7

    .line 251
    invoke-virtual {v8}, Lcom/android/voicemail/impl/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 265
    :cond_1
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v7, "UID"

    .line 267
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v8, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->FLAGS:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v8}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "FLAGS"

    if-eqz v8, :cond_2

    .line 269
    invoke-virtual {v5, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    sget-object v8, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v8}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "RFC822.SIZE"

    const-string v11, "INTERNALDATE"

    if-eqz v8, :cond_3

    .line 272
    invoke-virtual {v5, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {v5, v10}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const-string v8, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id content-duration)]"

    .line 274
    invoke-virtual {v5, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_3
    sget-object v8, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v8}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v12, "BODYSTRUCTURE"

    if-eqz v8, :cond_4

    .line 277
    invoke-virtual {v5, v12}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_4
    sget-object v8, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v8}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 281
    sget-object v8, Lcom/android/voicemail/impl/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_5
    sget-object v8, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->BODY:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v8}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "BODY.PEEK[]"

    .line 284
    invoke-virtual {v5, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/voicemail/impl/mail/FetchProfile;->getFirstPart()Lcom/android/voicemail/impl/mail/Part;

    move-result-object v8

    if-eqz v8, :cond_7

    const-string v13, "X-Android-Attachment-StoreData"

    .line 290
    invoke-interface {v8, v13}, Lcom/android/voicemail/impl/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 294
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BODY.PEEK["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v13, v6

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_7
    :try_start_0
    iget-object v13, v1, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "UID FETCH %s (%s)"

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    .line 303
    invoke-static/range {p1 .. p1}, Lcom/android/voicemail/impl/mail/store/ImapStore;->joinMessageUids([Lcom/android/voicemail/impl/mail/Message;)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v0, v16

    .line 304
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lcom/android/voicemail/impl/mail/utils/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    .line 300
    invoke-static {v14, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 299
    invoke-virtual {v13, v0, v5}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 310
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->readResponse()Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    move-result-object v5

    const-string v0, "FETCH"

    .line 312
    invoke-virtual {v5, v6, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_8

    .line 416
    :goto_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_8
    const/4 v13, 0x2

    .line 315
    :try_start_3
    invoke-virtual {v5, v13}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v14

    .line 316
    invoke-virtual {v14, v7}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    goto :goto_2

    .line 319
    :cond_9
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;

    if-nez v15, :cond_a

    goto :goto_2

    .line 322
    :cond_a
    sget-object v0, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->FLAGS:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v0}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 323
    invoke-virtual {v14, v9}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v13

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_f

    move-object/from16 v18, v4

    .line 325
    invoke-virtual {v0, v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v4

    move-object/from16 v19, v0

    const-string v0, "\\DELETED"

    .line 326
    invoke-virtual {v4, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "deleted"

    const/4 v4, 0x1

    .line 327
    invoke-virtual {v15, v0, v4}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_b
    const-string v0, "\\ANSWERED"

    .line 328
    invoke-virtual {v4, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "answered"

    const/4 v4, 0x1

    .line 329
    invoke-virtual {v15, v0, v4}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_c
    const-string v0, "\\SEEN"

    .line 330
    invoke-virtual {v4, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "seen"

    const/4 v4, 0x1

    .line 331
    invoke-virtual {v15, v0, v4}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_d
    const-string v0, "\\FLAGGED"

    .line 332
    invoke-virtual {v4, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "flagged"

    const/4 v4, 0x1

    .line 333
    invoke-virtual {v15, v0, v4}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setFlagInternal(Ljava/lang/String;Z)V

    :cond_e
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v18

    move-object/from16 v0, v19

    goto :goto_3

    :cond_f
    move-object/from16 v18, v4

    .line 337
    sget-object v0, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v0}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "ImapFolder"

    if-eqz v0, :cond_10

    .line 339
    :try_start_4
    invoke-virtual {v14, v11}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v0

    .line 341
    invoke-virtual {v14, v10}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v6

    const-string v13, "BODY[HEADER"

    move-object/from16 v19, v7

    const/4 v7, 0x1

    .line 344
    invoke-virtual {v14, v13, v7}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v13

    .line 345
    invoke-virtual {v13}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v7

    .line 347
    invoke-virtual {v15, v0}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 348
    invoke-virtual {v15, v6}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setSize(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 350
    :try_start_5
    invoke-static {v7}, Lcom/android/voicemail/impl/mail/utils/Utility;->streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_6
    const-string v6, "Error parsing header %s"

    .line 352
    invoke-static {v4, v6, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_10
    move-object/from16 v19, v7

    .line 355
    :goto_5
    sget-object v0, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v0}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 356
    invoke-virtual {v14, v12}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->isEmpty()Z

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v6, :cond_11

    :try_start_7
    const-string v6, "TEXT"

    .line 359
    invoke-static {v0, v15, v6}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->parseBodyStructure(Lcom/android/voicemail/impl/mail/store/imap/ImapList;Lcom/android/voicemail/impl/mail/Part;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_8
    const-string v6, "Error handling message"

    .line 361
    invoke-static {v4, v6, v0}, Lcom/android/voicemail/impl/VvmLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 362
    invoke-virtual {v15, v0}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/voicemail/impl/mail/Body;)V

    .line 366
    :cond_11
    :goto_6
    sget-object v0, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->BODY:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v0}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/voicemail/impl/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/voicemail/impl/mail/FetchProfile$Item;

    invoke-virtual {v2, v0}, Lcom/android/voicemail/impl/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    const-string v0, "BODY[]"

    const/4 v6, 0x1

    .line 370
    invoke-virtual {v14, v0, v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 373
    :try_start_9
    invoke-virtual {v15, v0}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v6, v0

    :try_start_a
    const-string v0, "Error parsing body %s"

    .line 375
    invoke-static {v4, v0, v6}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_7
    if-eqz v8, :cond_15

    const-string v0, "BODY["

    const/4 v6, 0x1

    .line 379
    invoke-virtual {v14, v0, v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v7, "Content-Transfer-Encoding"

    .line 380
    invoke-interface {v8, v7}, Lcom/android/voicemail/impl/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 383
    array-length v13, v7

    if-lez v13, :cond_14

    const/4 v13, 0x0

    .line 384
    aget-object v7, v7, v13

    goto :goto_8

    :cond_14
    const/4 v13, 0x0

    const-string v7, "7bit"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 396
    :goto_8
    :try_start_b
    iget-object v14, v1, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    .line 398
    invoke-virtual {v14}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 401
    invoke-interface {v8}, Lcom/android/voicemail/impl/mail/Part;->getSize()I

    move-result v6

    .line 397
    invoke-static {v14, v0, v7, v6, v3}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->decodeBody(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;ILcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;)Lcom/android/voicemail/impl/mail/Body;

    move-result-object v0

    .line 396
    invoke-virtual {v15, v0}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/voicemail/impl/mail/Body;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_c
    const-string v6, "Error fetching body %s"

    .line 408
    invoke-static {v4, v6, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_15
    const/4 v13, 0x0

    :goto_9
    if-eqz v3, :cond_16

    .line 413
    invoke-interface {v3, v15}, Lcom/android/voicemail/impl/mail/store/ImapFolder$MessageRetrievalListener;->messageRetrieved(Lcom/android/voicemail/impl/mail/Message;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 416
    :cond_16
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    .line 418
    :goto_a
    invoke-virtual {v5}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    move-object/from16 v4, v18

    move-object/from16 v7, v19

    const/4 v6, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    .line 417
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    move-exception v0

    .line 420
    iget-object v2, v1, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v2

    sget-object v3, Lcom/android/voicemail/impl/OmtpEvents;->DATA_GENERIC_IMAP_IOE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 421
    iget-object v2, v1, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-direct {v1, v2, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/voicemail/impl/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/voicemail/impl/mail/MessagingException;

    move-result-object v0

    throw v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->checkOpen()V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 197
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 198
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    new-instance v0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/voicemail/impl/mail/store/ImapFolder;)V

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found on server"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImapFolder"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMessageCount()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages([Ljava/lang/String;)[Lcom/android/voicemail/impl/mail/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "1:* NOT DELETED"

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;)[Lcom/android/voicemail/impl/mail/Message;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesInternal([Ljava/lang/String;)[Lcom/android/voicemail/impl/mail/Message;
    .locals 4

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 225
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 226
    aget-object v2, p1, v1

    .line 227
    new-instance v3, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;

    invoke-direct {v3, v2, p0}, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/voicemail/impl/mail/store/ImapFolder;)V

    .line 228
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    sget-object p1, Lcom/android/voicemail/impl/mail/Message;->EMPTY_ARRAY:[Lcom/android/voicemail/impl/mail/Message;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/voicemail/impl/mail/Message;

    return-object p1
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Ljava/lang/String;
    .locals 1

    .line 458
    sget-object v0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->PERMANENT_FLAGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "GETQUOTAROOT \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 761
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 763
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    const-string v2, "QUOTA"

    .line 764
    invoke-virtual {v1, v5, v2}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 767
    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v1

    move v3, v5

    .line 768
    :goto_1
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 769
    invoke-virtual {v1, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v4

    const-string/jumbo v6, "voice"

    invoke-virtual {v4, v6}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 772
    :cond_2
    new-instance v0, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;

    add-int/lit8 v4, v3, 0x1

    .line 773
    invoke-virtual {v1, v4}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getNumber(I)I

    move-result v4

    add-int/2addr v3, v2

    .line 774
    invoke-virtual {v1, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getNumber(I)I

    move-result v1

    invoke-direct {v0, v4, v1}, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;-><init>(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    return-object v0

    :cond_3
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 778
    :try_start_1
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v1

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_GENERIC_IMAP_IOE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 779
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/voicemail/impl/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/voicemail/impl/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    :goto_2
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    .line 782
    throw v0
.end method

.method getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    const/4 v2, 0x0

    const-string v3, "SEARCH"

    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 160
    :goto_1
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 161
    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->isString()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-virtual {v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    :cond_3
    sget-object p1, Lcom/android/voicemail/impl/mail/utils/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public isOpen()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    monitor-enter p0
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getConnection()Lcom/android/voicemail/impl/mail/store/ImapConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    .line 97
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :try_start_2
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->doSelect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V
    :try_end_3
    .catch Lcom/android/voicemail/impl/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    :try_start_4
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/voicemail/impl/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/voicemail/impl/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    :goto_0
    :try_start_5
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    .line 113
    throw v0
    :try_end_5
    .catch Lcom/android/voicemail/impl/mail/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_1

    :catchall_1
    move-exception v0

    .line 97
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Duplicated open on ImapFolder"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_7
    .catch Lcom/android/voicemail/impl/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    .line 120
    iput-boolean p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mExists:Z

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->close(Z)V

    .line 122
    throw v0

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->close(Z)V

    .line 118
    throw v0
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    const-string v0, "ImapFolder"

    .line 172
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->checkOpen()V

    .line 175
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID SEARCH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-virtual {v2, v1}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchForUids \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 183
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException in search: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    iget-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object p1

    sget-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_GENERIC_IMAP_IOE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 185
    iget-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-direct {p0, p1, v1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/voicemail/impl/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/voicemail/impl/mail/MessagingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception v1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImapException in search: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    sget-object p1, Lcom/android/voicemail/impl/mail/utils/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    return-object p1

    :goto_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    .line 189
    throw p1
.end method

.method public setFlags([Lcom/android/voicemail/impl/mail/Message;[Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->checkOpen()V

    .line 678
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    .line 681
    aget-object v5, p2, v4

    const-string v6, "seen"

    if-ne v5, v6, :cond_0

    const-string v5, " \\SEEN"

    .line 683
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v6, "deleted"

    if-ne v5, v6, :cond_1

    const-string v5, " \\DELETED"

    .line 685
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v6, "flagged"

    if-ne v5, v6, :cond_2

    const-string v5, " \\FLAGGED"

    .line 687
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v6, "answered"

    if-ne v5, v6, :cond_3

    const-string v5, " \\ANSWERED"

    .line 689
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 692
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    const-string p2, ""

    .line 695
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 699
    invoke-static {p1}, Lcom/android/voicemail/impl/mail/store/ImapStore;->joinMessageUids([Lcom/android/voicemail/impl/mail/Message;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    if-eqz p3, :cond_6

    const-string p1, "+"

    goto :goto_3

    :cond_6
    const-string p1, "-"

    :goto_3
    aput-object p1, v5, v2

    const/4 p1, 0x2

    aput-object p2, v5, p1

    .line 696
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 695
    invoke-virtual {v0, p1}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 704
    :try_start_1
    iget-object p2, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mStore:Lcom/android/voicemail/impl/mail/store/ImapStore;

    invoke-virtual {p2}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object p2

    sget-object p3, Lcom/android/voicemail/impl/OmtpEvents;->DATA_GENERIC_IMAP_IOE:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p2, p3}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 705
    iget-object p2, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-direct {p0, p2, p1}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->ioExceptionHandler(Lcom/android/voicemail/impl/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/android/voicemail/impl/mail/MessagingException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    :goto_4
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->destroyResponses()V

    .line 708
    throw p1
.end method
