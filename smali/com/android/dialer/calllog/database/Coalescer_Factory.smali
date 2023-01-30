.class public final Lcom/android/dialer/calllog/database/Coalescer_Factory;
.super Ljava/lang/Object;
.source "Coalescer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/dialer/calllog/database/Coalescer;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/DataSources;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/dialer/calllog/database/Coalescer_Factory;->dataSourcesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/dialer/calllog/database/Coalescer_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/DataSources;",
            ">;)",
            "Lcom/android/dialer/calllog/database/Coalescer_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/dialer/calllog/database/Coalescer_Factory;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/database/Coalescer_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/dialer/calllog/datasources/DataSources;)Lcom/android/dialer/calllog/database/Coalescer;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/dialer/calllog/database/Coalescer;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/database/Coalescer;-><init>(Lcom/android/dialer/calllog/datasources/DataSources;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/dialer/calllog/database/Coalescer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/dialer/calllog/database/Coalescer_Factory;->dataSourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/datasources/DataSources;

    invoke-static {v0}, Lcom/android/dialer/calllog/database/Coalescer_Factory;->newInstance(Lcom/android/dialer/calllog/datasources/DataSources;)Lcom/android/dialer/calllog/database/Coalescer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/dialer/calllog/database/Coalescer_Factory;->get()Lcom/android/dialer/calllog/database/Coalescer;

    move-result-object v0

    return-object v0
.end method
