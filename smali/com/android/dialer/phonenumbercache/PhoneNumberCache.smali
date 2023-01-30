.class public Lcom/android/dialer/phonenumbercache/PhoneNumberCache;
.super Ljava/lang/Object;
.source "PhoneNumberCache.java"


# static fields
.field private static phoneNumberCacheBindings:Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;
    .locals 1

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->phoneNumberCacheBindings:Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 36
    instance-of v0, p0, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindingsFactory;

    if-eqz v0, :cond_1

    .line 37
    check-cast p0, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindingsFactory;

    .line 38
    invoke-interface {p0}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindingsFactory;->newPhoneNumberCacheBindings()Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object p0

    sput-object p0, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->phoneNumberCacheBindings:Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    .line 41
    :cond_1
    sget-object p0, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->phoneNumberCacheBindings:Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    if-nez p0, :cond_2

    .line 42
    new-instance p0, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindingsStub;

    invoke-direct {p0}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindingsStub;-><init>()V

    sput-object p0, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->phoneNumberCacheBindings:Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    .line 44
    :cond_2
    sget-object p0, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->phoneNumberCacheBindings:Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    return-object p0
.end method

.method public static setForTesting(Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;)V
    .locals 0

    .line 48
    sput-object p0, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->phoneNumberCacheBindings:Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    return-void
.end method
