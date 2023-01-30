.class public Lcom/android/dialer/app/Bindings;
.super Ljava/lang/Object;
.source "Bindings.java"


# static fields
.field private static legacyInstance:Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLegacy(Landroid/content/Context;)Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;
    .locals 1

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/dialer/app/Bindings;->legacyInstance:Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    if-eqz v0, :cond_0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 39
    instance-of v0, p0, Lcom/android/dialer/app/legacybindings/DialerLegacyBindingsFactory;

    if-eqz v0, :cond_1

    .line 40
    check-cast p0, Lcom/android/dialer/app/legacybindings/DialerLegacyBindingsFactory;

    invoke-interface {p0}, Lcom/android/dialer/app/legacybindings/DialerLegacyBindingsFactory;->newDialerLegacyBindings()Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    move-result-object p0

    sput-object p0, Lcom/android/dialer/app/Bindings;->legacyInstance:Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    .line 43
    :cond_1
    sget-object p0, Lcom/android/dialer/app/Bindings;->legacyInstance:Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    if-nez p0, :cond_2

    .line 44
    new-instance p0, Lcom/android/dialer/app/legacybindings/DialerLegacyBindingsStub;

    invoke-direct {p0}, Lcom/android/dialer/app/legacybindings/DialerLegacyBindingsStub;-><init>()V

    sput-object p0, Lcom/android/dialer/app/Bindings;->legacyInstance:Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    .line 46
    :cond_2
    sget-object p0, Lcom/android/dialer/app/Bindings;->legacyInstance:Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;

    return-object p0
.end method
