.class public final Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;
.super Ljava/lang/Object;
.source "ContextModule_ProvideContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/dialer/inject/ContextModule;


# direct methods
.method public constructor <init>(Lcom/android/dialer/inject/ContextModule;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;->module:Lcom/android/dialer/inject/ContextModule;

    return-void
.end method

.method public static create(Lcom/android/dialer/inject/ContextModule;)Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;
    .locals 1

    .line 29
    new-instance v0, Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;

    invoke-direct {v0, p0}, Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;-><init>(Lcom/android/dialer/inject/ContextModule;)V

    return-object v0
.end method

.method public static provideContext(Lcom/android/dialer/inject/ContextModule;)Landroid/content/Context;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/android/dialer/inject/ContextModule;->provideContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;->module:Lcom/android/dialer/inject/ContextModule;

    invoke-static {v0}, Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;->provideContext(Lcom/android/dialer/inject/ContextModule;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
