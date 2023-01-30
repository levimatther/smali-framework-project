.class public abstract Lcom/android/dialer/configprovider/ConfigProviderComponent;
.super Ljava/lang/Object;
.source "ConfigProviderComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/configprovider/ConfigProviderComponent$HasComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProviderComponent;
    .locals 0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/inject/HasRootComponent;

    invoke-interface {p0}, Lcom/android/dialer/inject/HasRootComponent;->component()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/configprovider/ConfigProviderComponent$HasComponent;

    .line 34
    invoke-interface {p0}, Lcom/android/dialer/configprovider/ConfigProviderComponent$HasComponent;->configProviderComponent()Lcom/android/dialer/configprovider/ConfigProviderComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getConfigProvider()Lcom/android/dialer/configprovider/ConfigProvider;
.end method
