.class public final Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;
.super Ljava/lang/Object;
.source "SharedPrefConfigProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/dialer/configprovider/SharedPrefConfigProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;->appContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;

    invoke-direct {v0, p0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/dialer/configprovider/SharedPrefConfigProvider;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

    invoke-direct {v0, p0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/dialer/configprovider/SharedPrefConfigProvider;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;->newInstance(Landroid/content/Context;)Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;->get()Lcom/android/dialer/configprovider/SharedPrefConfigProvider;

    move-result-object v0

    return-object v0
.end method
