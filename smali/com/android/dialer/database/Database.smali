.class public Lcom/android/dialer/database/Database;
.super Ljava/lang/Object;
.source "Database.java"


# static fields
.field private static databaseBindings:Lcom/android/dialer/database/DatabaseBindings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/database/DatabaseBindings;
    .locals 1

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/dialer/database/Database;->databaseBindings:Lcom/android/dialer/database/DatabaseBindings;

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 36
    instance-of v0, p0, Lcom/android/dialer/database/DatabaseBindingsFactory;

    if-eqz v0, :cond_1

    .line 37
    check-cast p0, Lcom/android/dialer/database/DatabaseBindingsFactory;

    invoke-interface {p0}, Lcom/android/dialer/database/DatabaseBindingsFactory;->newDatabaseBindings()Lcom/android/dialer/database/DatabaseBindings;

    move-result-object p0

    sput-object p0, Lcom/android/dialer/database/Database;->databaseBindings:Lcom/android/dialer/database/DatabaseBindings;

    .line 40
    :cond_1
    sget-object p0, Lcom/android/dialer/database/Database;->databaseBindings:Lcom/android/dialer/database/DatabaseBindings;

    if-nez p0, :cond_2

    .line 41
    new-instance p0, Lcom/android/dialer/database/DatabaseBindingsStub;

    invoke-direct {p0}, Lcom/android/dialer/database/DatabaseBindingsStub;-><init>()V

    sput-object p0, Lcom/android/dialer/database/Database;->databaseBindings:Lcom/android/dialer/database/DatabaseBindings;

    .line 43
    :cond_2
    sget-object p0, Lcom/android/dialer/database/Database;->databaseBindings:Lcom/android/dialer/database/DatabaseBindings;

    return-object p0
.end method

.method public static setForTesting(Lcom/android/dialer/database/DatabaseBindings;)V
    .locals 0

    .line 47
    sput-object p0, Lcom/android/dialer/database/Database;->databaseBindings:Lcom/android/dialer/database/DatabaseBindings;

    return-void
.end method
