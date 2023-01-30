.class public Lcom/gsma/rcs/utils/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEBUG_LEVEL:I = 0x0

.field public static final ENCODE_BOBY_SWITCH_ON:Z = true

.field public static final ERROR_LEVEL:I = 0x3

.field public static final FATAL_LEVEL:I = 0x4

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final INFO_LEVEL:I = 0x1

.field private static final SafeRegular:Ljava/lang/String; = "([+]?\\d{2})\\d{5}(\\d{1,4})"

.field private static final SafeReplacement:Ljava/lang/String; = "$1xxxxx$2"

.field public static final TRACE_OFF:Z = false

.field public static final TRACE_ON:Z = true

.field public static final WARN_LEVEL:I = 0x2

.field public static sActivationFlag:Z = true

.field private static sAppenders:[Lcom/gsma/rcs/utils/logger/Appender; = null

.field private static final systemSafeRegular:Ljava/lang/String; = "((sip:|tel:|mavcid-|[+])[+]?\\d{2})\\d{5}(\\d{1,4})"

.field private static final systemSafeReplacement:Ljava/lang/String; = "$1xxxxx$3"

.field private static final textBodyRegular:Ljava/lang/String; = "([\\s|\\S]*(?i)content-type: text/plain.*\\s+.*\\s{4})([\\s|\\S]*)(\r\n-------.*\\$$)"

.field public static traceLevel:I


# instance fields
.field private mClassname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput v0, Lcom/gsma/rcs/utils/logger/Logger;->traceLevel:I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/gsma/rcs/utils/logger/Appender;

    const/4 v1, 0x0

    .line 104
    new-instance v2, Lcom/gsma/rcs/utils/logger/AndroidAppender;

    invoke-direct {v2}, Lcom/gsma/rcs/utils/logger/AndroidAppender;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsma/rcs/utils/logger/Logger;->sAppenders:[Lcom/gsma/rcs/utils/logger/Appender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/rcs/utils/logger/Logger;->mClassname:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/gsma/rcs/utils/logger/Logger;->mClassname:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static declared-synchronized getAppenders()[Lcom/gsma/rcs/utils/logger/Appender;
    .locals 2

    const-class v0, Lcom/gsma/rcs/utils/logger/Logger;

    monitor-enter v0

    .line 330
    :try_start_0
    sget-object v1, Lcom/gsma/rcs/utils/logger/Logger;->sAppenders:[Lcom/gsma/rcs/utils/logger/Appender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;
    .locals 2

    const-class v0, Lcom/gsma/rcs/utils/logger/Logger;

    monitor-enter v0

    .line 321
    :try_start_0
    new-instance v1, Lcom/gsma/rcs/utils/logger/Logger;

    invoke-direct {v1, p0}, Lcom/gsma/rcs/utils/logger/Logger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private printTrace(Ljava/lang/String;I)V
    .locals 5

    .line 294
    sget-object v0, Lcom/gsma/rcs/utils/logger/Logger;->sAppenders:[Lcom/gsma/rcs/utils/logger/Appender;

    if-eqz v0, :cond_0

    sget v0, Lcom/gsma/rcs/utils/logger/Logger;->traceLevel:I

    if-lt p2, v0, :cond_0

    const-string v0, "\r"

    const-string v1, ""

    .line 298
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 299
    sget-object v0, Lcom/gsma/rcs/utils/logger/Logger;->sAppenders:[Lcom/gsma/rcs/utils/logger/Appender;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 300
    iget-object v4, p0, Lcom/gsma/rcs/utils/logger/Logger;->mClassname:Ljava/lang/String;

    invoke-virtual {v3, v4, p2, p1}, Lcom/gsma/rcs/utils/logger/Appender;->printTrace(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static safeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "([+]?\\d{2})\\d{5}(\\d{1,4})"

    const-string v1, "$1xxxxx$2"

    .line 340
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAppenders([Lcom/gsma/rcs/utils/logger/Appender;)V
    .locals 0

    .line 311
    sput-object p0, Lcom/gsma/rcs/utils/logger/Logger;->sAppenders:[Lcom/gsma/rcs/utils/logger/Appender;

    return-void
.end method

.method public static systemError(Ljava/lang/String;)V
    .locals 3

    .line 371
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "((sip:|tel:|mavcid-|[+])[+]?\\d{2})\\d{5}(\\d{1,4})"

    const-string v2, "$1xxxxx$3"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static systemOut(Ljava/lang/String;)V
    .locals 3

    .line 346
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "((sip:|tel:|mavcid-|[+])[+]?\\d{2})\\d{5}(\\d{1,4})"

    const-string v2, "$1xxxxx$3"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static systemOutSafeBody(Ljava/lang/String;)V
    .locals 5

    const-string v0, "((sip:|tel:|mavcid-|[+])[+]?\\d{2})\\d{5}(\\d{1,4})"

    const-string v1, "$1xxxxx$3"

    .line 353
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 354
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_1

    const-string v0, "Content-Type"

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 357
    array-length v1, v0

    if-lez v1, :cond_0

    .line 358
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 362
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/gsma/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 231
    invoke-static {p2}, Lcom/gsma/rcs/service/api/ExceptionUtil;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 270
    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 271
    invoke-static {p2}, Lcom/gsma/rcs/service/api/ExceptionUtil;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public isActivated()Z
    .locals 2

    .line 133
    sget-boolean v0, Lcom/gsma/rcs/utils/logger/Logger;->sActivationFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public safeError(Ljava/lang/String;)V
    .locals 0

    .line 220
    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public safeError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 241
    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 242
    invoke-static {p2}, Lcom/gsma/rcs/service/api/ExceptionUtil;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public safeFatal(Ljava/lang/String;)V
    .locals 0

    .line 260
    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gsma/rcs/utils/logger/Logger;->fatal(Ljava/lang/String;)V

    return-void
.end method

.method public safeFatal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 282
    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 283
    invoke-static {p2}, Lcom/gsma/rcs/service/api/ExceptionUtil;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public safeInfo(Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gsma/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public safeWarn(Ljava/lang/String;)V
    .locals 0

    .line 180
    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gsma/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public safeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 201
    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 202
    invoke-static {p2}, Lcom/gsma/rcs/service/api/ExceptionUtil;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 191
    invoke-static {p2}, Lcom/gsma/rcs/service/api/ExceptionUtil;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/gsma/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    return-void
.end method
