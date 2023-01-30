.class public final Lcom/android/dialer/p13n/logging/P13nLogging;
.super Ljava/lang/Object;
.source "P13nLogging.java"


# static fields
.field private static logger:Lcom/android/dialer/p13n/logging/P13nLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/p13n/logging/P13nLogger;
    .locals 2

    .line 33
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 35
    sget-object v0, Lcom/android/dialer/p13n/logging/P13nLogging;->logger:Lcom/android/dialer/p13n/logging/P13nLogger;

    if-eqz v0, :cond_0

    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    instance-of v1, v0, Lcom/android/dialer/p13n/logging/P13nLoggerFactory;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/dialer/p13n/logging/P13nLoggerFactory;

    invoke-interface {v0, p0}, Lcom/android/dialer/p13n/logging/P13nLoggerFactory;->newP13nLogger(Landroid/content/Context;)Lcom/android/dialer/p13n/logging/P13nLogger;

    move-result-object p0

    sput-object p0, Lcom/android/dialer/p13n/logging/P13nLogging;->logger:Lcom/android/dialer/p13n/logging/P13nLogger;

    .line 44
    :cond_1
    sget-object p0, Lcom/android/dialer/p13n/logging/P13nLogging;->logger:Lcom/android/dialer/p13n/logging/P13nLogger;

    if-nez p0, :cond_2

    .line 45
    new-instance p0, Lcom/android/dialer/p13n/logging/P13nLogging$1;

    invoke-direct {p0}, Lcom/android/dialer/p13n/logging/P13nLogging$1;-><init>()V

    sput-object p0, Lcom/android/dialer/p13n/logging/P13nLogging;->logger:Lcom/android/dialer/p13n/logging/P13nLogger;

    .line 54
    :cond_2
    sget-object p0, Lcom/android/dialer/p13n/logging/P13nLogging;->logger:Lcom/android/dialer/p13n/logging/P13nLogger;

    return-object p0
.end method

.method public static setForTesting(Lcom/android/dialer/p13n/logging/P13nLogger;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/android/dialer/p13n/logging/P13nLogging;->logger:Lcom/android/dialer/p13n/logging/P13nLogger;

    return-void
.end method
