.class public Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;
.super Lcom/android/voicemail/impl/mail/store/imap/ImapString;
.source "ImapTempFileLiteral.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field final mFile:Ljava/io/File;

.field private final mSize:I


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/mail/FixedLengthInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;-><init>()V

    const-string v0, "ImapTempFileLiteral"

    .line 34
    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->TAG:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->getLength()I

    move-result v0

    iput v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->mSize:I

    .line 43
    invoke-static {}, Lcom/android/voicemail/impl/mail/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "imap"

    const-string v2, ".tmp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    .line 49
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 50
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 51
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove temp file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ImapTempFileLiteral"

    invoke-static {v2, v0, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->destroy()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 65
    throw v0
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 72
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ImapTempFileLiteral"

    const-string v3, "ImapTempFileLiteral: Temp file not found"

    .line 75
    invoke-static {v2, v3, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->getAsStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 88
    array-length v1, v0

    const/high16 v2, 0x200000

    if-gt v1, v2, :cond_0

    .line 91
    invoke-static {v0}, Lcom/android/voicemail/impl/mail/utils/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ImapTempFileLiteral"

    const-string v2, "ImapTempFileLiteral: Error while reading temp file"

    .line 93
    invoke-static {v0, v2, v1}, Lcom/android/voicemail/impl/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public tempFileExistsForTest()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    iget v1, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapTempFileLiteral;->mSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "{%d byte literal(file)}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
