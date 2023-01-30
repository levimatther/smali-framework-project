.class public final Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;
.super Ljava/lang/Object;
.source "MainModule_ProvideMainFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/dialer/main/Main;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory$InstanceHolder;->access$000()Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideMain()Lcom/android/dialer/main/Main;
    .locals 2

    .line 27
    invoke-static {}, Lcom/android/dialer/main/impl/MainModule;->provideMain()Lcom/android/dialer/main/Main;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/main/Main;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/dialer/main/Main;
    .locals 1

    .line 19
    invoke-static {}, Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;->provideMain()Lcom/android/dialer/main/Main;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;->get()Lcom/android/dialer/main/Main;

    move-result-object v0

    return-object v0
.end method
