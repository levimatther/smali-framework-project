.class public abstract Lcom/android/dialer/common/concurrent/DialerExecutorComponent;
.super Ljava/lang/Object;
.source "DialerExecutorComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/common/concurrent/DialerExecutorComponent$HasComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/common/concurrent/DialerExecutorComponent;
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/inject/HasRootComponent;

    invoke-interface {p0}, Lcom/android/dialer/inject/HasRootComponent;->component()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/common/concurrent/DialerExecutorComponent$HasComponent;

    .line 32
    invoke-interface {p0}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent$HasComponent;->dialerExecutorComponent()Lcom/android/dialer/common/concurrent/DialerExecutorComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract dialerExecutorFactory()Lcom/android/dialer/common/concurrent/DialerExecutorFactory;
.end method
