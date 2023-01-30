.class final Lcom/android/dialer/persistentlog/PersistentLogFileHandler;
.super Ljava/lang/Object;
.source "PersistentLogFileHandler.java"


# static fields
.field private static final LOG_DIRECTORY:Ljava/lang/String; = "persistent_log"

.field private static final NEXT_FILE_INDEX_PREFIX:Ljava/lang/String; = "persistent_long_next_file_index_"


# instance fields
.field private context:Landroid/content/Context;

.field private final fileCountLimit:I

.field private final fileSizeLimit:I

.field private logDirectory:Ljava/io/File;

.field private outputFile:Ljava/io/File;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final subfolder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->subfolder:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->fileSizeLimit:I

    .line 75
    iput p3, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->fileCountLimit:I

    return-void
.end method

.method private getAndIncrementNextFileIndex()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->initializeSharedPreference(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->getNextFileKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->getNextFileKey()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v0

    .line 212
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Shared preference is not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLogFiles()[Ljava/io/File;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->logDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    iget-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->logDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 180
    :cond_0
    sget-object v1, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogFileHandler$dNU9s5gnbQUTwclc-Lh8HqD3Dw8;->INSTANCE:Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogFileHandler$dNU9s5gnbQUTwclc-Lh8HqD3Dw8;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private getNextFileKey()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistent_long_next_file_index_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->subfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTotalSize([Ljava/io/File;)I
    .locals 5

    .line 134
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private initializeSharedPreference(Landroid/content/Context;)Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    return v1

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$getLogFiles$0(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 183
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private static readAllBytes(Ljava/io/File;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 203
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 203
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 205
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method

.method private readBlob()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->getLogFiles()[Ljava/io/File;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->getTotalSize([Ljava/io/File;)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 126
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 127
    invoke-static {v4}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->readAllBytes(Ljava/io/File;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static readLog(Ljava/io/DataInputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 192
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private selectNextFileToWrite()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->getLogFiles()[Ljava/io/File;

    move-result-object v0

    .line 160
    array-length v1, v0

    if-eqz v1, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget v3, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->fileSizeLimit:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->outputFile:Ljava/io/File;

    goto :goto_2

    .line 161
    :cond_1
    :goto_0
    array-length v1, v0

    iget v2, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->fileCountLimit:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 162
    :goto_1
    array-length v2, v0

    iget v3, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->fileCountLimit:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    .line 163
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->logDirectory:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->getAndIncrementNextFileIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->outputFile:Ljava/io/File;

    :goto_2
    return-void
.end method


# virtual methods
.method getLogs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->readBlob()[B

    move-result-object v0

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    :try_start_0
    invoke-static {v2}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->readLog(Ljava/io/DataInputStream;)[B

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {v2}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->readLog(Ljava/io/DataInputStream;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    .line 146
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 152
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method initialize(Landroid/content/Context;)V
    .locals 4

    .line 81
    iput-object p1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->context:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "persistent_log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->subfolder:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->logDirectory:Ljava/io/File;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->initializeSharedPreference(Landroid/content/Context;)Z

    return-void
.end method

.method writeLogs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->outputFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->selectNextFileToWrite()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 106
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->outputFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 109
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 113
    iget-object p1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->outputFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget p1, p0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->fileSizeLimit:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->selectNextFileToWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 116
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method
