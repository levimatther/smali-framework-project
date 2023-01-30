.class public Lcom/android/dialer/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static loggingBindings:Lcom/android/dialer/logging/LoggingBindings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;
    .locals 1

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/dialer/logging/Logger;->loggingBindings:Lcom/android/dialer/logging/LoggingBindings;

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 36
    instance-of v0, p0, Lcom/android/dialer/logging/LoggingBindingsFactory;

    if-eqz v0, :cond_1

    .line 37
    check-cast p0, Lcom/android/dialer/logging/LoggingBindingsFactory;

    invoke-interface {p0}, Lcom/android/dialer/logging/LoggingBindingsFactory;->newLoggingBindings()Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p0

    sput-object p0, Lcom/android/dialer/logging/Logger;->loggingBindings:Lcom/android/dialer/logging/LoggingBindings;

    .line 40
    :cond_1
    sget-object p0, Lcom/android/dialer/logging/Logger;->loggingBindings:Lcom/android/dialer/logging/LoggingBindings;

    if-nez p0, :cond_2

    .line 41
    new-instance p0, Lcom/android/dialer/logging/LoggingBindingsStub;

    invoke-direct {p0}, Lcom/android/dialer/logging/LoggingBindingsStub;-><init>()V

    sput-object p0, Lcom/android/dialer/logging/Logger;->loggingBindings:Lcom/android/dialer/logging/LoggingBindings;

    .line 43
    :cond_2
    sget-object p0, Lcom/android/dialer/logging/Logger;->loggingBindings:Lcom/android/dialer/logging/LoggingBindings;

    return-object p0
.end method

.method public static setForTesting(Lcom/android/dialer/logging/LoggingBindings;)V
    .locals 0

    .line 47
    sput-object p0, Lcom/android/dialer/logging/Logger;->loggingBindings:Lcom/android/dialer/logging/LoggingBindings;

    return-void
.end method
