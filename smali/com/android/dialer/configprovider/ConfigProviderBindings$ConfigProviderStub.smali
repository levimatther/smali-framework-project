.class Lcom/android/dialer/configprovider/ConfigProviderBindings$ConfigProviderStub;
.super Ljava/lang/Object;
.source "ConfigProviderBindings.java"

# interfaces
.implements Lcom/android/dialer/configprovider/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/configprovider/ConfigProviderBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigProviderStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/configprovider/ConfigProviderBindings$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings$ConfigProviderStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method
