.class public Lcom/android/dialer/spam/Spam;
.super Ljava/lang/Object;
.source "Spam.java"


# static fields
.field private static spamBindings:Lcom/android/dialer/spam/SpamBindings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;
    .locals 1

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/dialer/spam/Spam;->spamBindings:Lcom/android/dialer/spam/SpamBindings;

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 36
    instance-of v0, p0, Lcom/android/dialer/spam/SpamBindingsFactory;

    if-eqz v0, :cond_1

    .line 37
    check-cast p0, Lcom/android/dialer/spam/SpamBindingsFactory;

    invoke-interface {p0}, Lcom/android/dialer/spam/SpamBindingsFactory;->newSpamBindings()Lcom/android/dialer/spam/SpamBindings;

    move-result-object p0

    sput-object p0, Lcom/android/dialer/spam/Spam;->spamBindings:Lcom/android/dialer/spam/SpamBindings;

    .line 40
    :cond_1
    sget-object p0, Lcom/android/dialer/spam/Spam;->spamBindings:Lcom/android/dialer/spam/SpamBindings;

    if-nez p0, :cond_2

    .line 41
    new-instance p0, Lcom/android/dialer/spam/SpamBindingsStub;

    invoke-direct {p0}, Lcom/android/dialer/spam/SpamBindingsStub;-><init>()V

    sput-object p0, Lcom/android/dialer/spam/Spam;->spamBindings:Lcom/android/dialer/spam/SpamBindings;

    .line 43
    :cond_2
    sget-object p0, Lcom/android/dialer/spam/Spam;->spamBindings:Lcom/android/dialer/spam/SpamBindings;

    return-object p0
.end method

.method public static setForTesting(Lcom/android/dialer/spam/SpamBindings;)V
    .locals 0

    .line 47
    sput-object p0, Lcom/android/dialer/spam/Spam;->spamBindings:Lcom/android/dialer/spam/SpamBindings;

    return-void
.end method
