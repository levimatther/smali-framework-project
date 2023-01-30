.class public abstract Lcom/android/dialer/configprovider/SharedPrefConfigProviderModule;
.super Ljava/lang/Object;
.source "SharedPrefConfigProviderModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract to(Lcom/android/dialer/configprovider/SharedPrefConfigProvider;)Lcom/android/dialer/configprovider/ConfigProvider;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
