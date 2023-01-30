.class public final Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;
.super Ljava/lang/Object;
.source "RefreshAnnotatedCallLogWorker_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;",
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

.field private final dataSourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/DataSources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/DataSources;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;->dataSourcesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/DataSources;",
            ">;)",
            "Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/DataSources;)Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/DataSources;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;->dataSourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/datasources/DataSources;

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;->newInstance(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/DataSources;)Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;->get()Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;

    move-result-object v0

    return-object v0
.end method
