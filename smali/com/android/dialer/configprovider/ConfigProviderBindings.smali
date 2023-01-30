.class public Lcom/android/dialer/configprovider/ConfigProviderBindings;
.super Ljava/lang/Object;
.source "ConfigProviderBindings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/configprovider/ConfigProviderBindings$ConfigProviderStub;
    }
.end annotation


# static fields
.field private static configProvider:Lcom/android/dialer/configprovider/ConfigProvider;

.field private static configProviderStub:Lcom/android/dialer/configprovider/ConfigProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/dialer/configprovider/ConfigProviderBindings;->configProvider:Lcom/android/dialer/configprovider/ConfigProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    sget-object p0, Lcom/android/dialer/configprovider/ConfigProviderBindings;->configProviderStub:Lcom/android/dialer/configprovider/ConfigProvider;

    if-nez p0, :cond_1

    .line 39
    new-instance p0, Lcom/android/dialer/configprovider/ConfigProviderBindings$ConfigProviderStub;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings$ConfigProviderStub;-><init>(Lcom/android/dialer/configprovider/ConfigProviderBindings$1;)V

    sput-object p0, Lcom/android/dialer/configprovider/ConfigProviderBindings;->configProviderStub:Lcom/android/dialer/configprovider/ConfigProvider;

    .line 41
    :cond_1
    sget-object p0, Lcom/android/dialer/configprovider/ConfigProviderBindings;->configProviderStub:Lcom/android/dialer/configprovider/ConfigProvider;

    return-object p0

    .line 43
    :cond_2
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderComponent;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProviderComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dialer/configprovider/ConfigProviderComponent;->getConfigProvider()Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p0

    sput-object p0, Lcom/android/dialer/configprovider/ConfigProviderBindings;->configProvider:Lcom/android/dialer/configprovider/ConfigProvider;

    return-object p0
.end method

.method public static setForTesting(Lcom/android/dialer/configprovider/ConfigProvider;)V
    .locals 0

    .line 49
    sput-object p0, Lcom/android/dialer/configprovider/ConfigProviderBindings;->configProvider:Lcom/android/dialer/configprovider/ConfigProvider;

    return-void
.end method
