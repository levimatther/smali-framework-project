.class public final Lcom/android/dialer/persistentlog/PersistentLogger;
.super Ljava/lang/Object;
.source "PersistentLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/persistentlog/PersistentLogger$DumpStringRunnable;
    }
.end annotation


# static fields
.field private static final FLUSH_DELAY_MILLIS:I = 0xc8

.field static final LOG_FILE_COUNT_LIMIT:I = 0x8

.field static final LOG_FILE_SIZE_LIMIT:I = 0x10000

.field private static final LOG_FOLDER:Ljava/lang/String; = "plain_text"

.field private static final MESSAGE_FLUSH:I = 0x1

.field private static fileHandler:Lcom/android/dialer/persistentlog/PersistentLogFileHandler;

.field private static loggerThread:Landroid/os/HandlerThread;

.field private static loggerThreadHandler:Landroid/os/Handler;

.field private static final messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/android/dialer/persistentlog/PersistentLogger;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lcom/android/dialer/persistentlog/PersistentLogger;->dumpLogToStringInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildTextLog(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v0, 0x6

    aput-object p0, v1, v0

    const/4 p0, 0x7

    aput-object p1, v1, p0

    const-string p0, "%tm-%td %tH:%tM:%tS.%tL - %s - %s"

    .line 171
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static dumpLogToString()Ljava/lang/String;
    .locals 3

    .line 117
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 118
    new-instance v0, Lcom/android/dialer/persistentlog/PersistentLogger$DumpStringRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dialer/persistentlog/PersistentLogger$DumpStringRunnable;-><init>(Lcom/android/dialer/persistentlog/PersistentLogger$1;)V

    .line 119
    sget-object v1, Lcom/android/dialer/persistentlog/PersistentLogger;->loggerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    :try_start_0
    invoke-virtual {v0}, Lcom/android/dialer/persistentlog/PersistentLogger$DumpStringRunnable;->get()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot dump logText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dumpLogToStringInternal()Ljava/lang/String;
    .locals 5

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    :try_start_0
    invoke-static {}, Lcom/android/dialer/persistentlog/PersistentLogger;->readLogs()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 156
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot dump logText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLoggerThread()Landroid/os/HandlerThread;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/dialer/persistentlog/PersistentLogger;->loggerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    .line 68
    new-instance v0, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;

    const-string v1, "plain_text"

    const/high16 v2, 0x10000

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/persistentlog/PersistentLogger;->fileHandler:Lcom/android/dialer/persistentlog/PersistentLogFileHandler;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PersistentLogger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dialer/persistentlog/PersistentLogger;->loggerThread:Landroid/os/HandlerThread;

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/dialer/persistentlog/PersistentLogger;->loggerThread:Landroid/os/HandlerThread;

    .line 74
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$esB6pvb6JMK2Mcs9J9DzFEXK_EQ;

    invoke-direct {v2, p0}, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$esB6pvb6JMK2Mcs9J9DzFEXK_EQ;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/dialer/persistentlog/PersistentLogger;->loggerThreadHandler:Landroid/os/Handler;

    .line 94
    new-instance v1, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$6q3VH8YzPj8MXiAVVemvHJisnSk;

    invoke-direct {v1, p0}, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$6q3VH8YzPj8MXiAVVemvHJisnSk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$initialize$0(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 2

    .line 76
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 77
    sget-object p1, Lcom/android/dialer/persistentlog/PersistentLogger;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 80
    :cond_0
    sget-object p1, Lcom/android/dialer/persistentlog/PersistentLogger;->loggerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    sget-object v1, Lcom/android/dialer/persistentlog/PersistentLogger;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 83
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 87
    :cond_1
    :try_start_0
    sget-object p0, Lcom/android/dialer/persistentlog/PersistentLogger;->fileHandler:Lcom/android/dialer/persistentlog/PersistentLogFileHandler;

    invoke-virtual {p0, p1}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->writeLogs(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PersistentLogger.MESSAGE_FLUSH"

    const-string v1, "error writing message"

    .line 89
    invoke-static {p1, v1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic lambda$initialize$1(Landroid/content/Context;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/android/dialer/persistentlog/PersistentLogger;->fileHandler:Lcom/android/dialer/persistentlog/PersistentLogFileHandler;

    invoke-virtual {v0, p0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static log([B)V
    .locals 3

    .line 109
    sget-object v0, Lcom/android/dialer/persistentlog/PersistentLogger;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object p0, Lcom/android/dialer/persistentlog/PersistentLogger;->loggerThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static logText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lcom/android/dialer/persistentlog/PersistentLogger;->buildTextLog(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/dialer/persistentlog/PersistentLogger;->log([B)V

    return-void
.end method

.method static readLogs()Ljava/util/List;
    .locals 1
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

    .line 165
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 166
    sget-object v0, Lcom/android/dialer/persistentlog/PersistentLogger;->fileHandler:Lcom/android/dialer/persistentlog/PersistentLogFileHandler;

    invoke-virtual {v0}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->getLogs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
