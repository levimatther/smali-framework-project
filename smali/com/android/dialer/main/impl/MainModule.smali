.class public final Lcom/android/dialer/main/impl/MainModule;
.super Ljava/lang/Object;
.source "MainModule.java"


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

.method public static provideMain()Lcom/android/dialer/main/Main;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 28
    new-instance v0, Lcom/android/dialer/main/impl/MainImpl;

    invoke-direct {v0}, Lcom/android/dialer/main/impl/MainImpl;-><init>()V

    return-object v0
.end method
