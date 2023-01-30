.class public final Lcom/android/dialer/main/impl/MainImpl_Factory;
.super Ljava/lang/Object;
.source "MainImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/main/impl/MainImpl_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/dialer/main/impl/MainImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/dialer/main/impl/MainImpl_Factory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/dialer/main/impl/MainImpl_Factory$InstanceHolder;->access$000()Lcom/android/dialer/main/impl/MainImpl_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/dialer/main/impl/MainImpl;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/dialer/main/impl/MainImpl;

    invoke-direct {v0}, Lcom/android/dialer/main/impl/MainImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/dialer/main/impl/MainImpl;
    .locals 1

    .line 17
    invoke-static {}, Lcom/android/dialer/main/impl/MainImpl_Factory;->newInstance()Lcom/android/dialer/main/impl/MainImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/android/dialer/main/impl/MainImpl_Factory;->get()Lcom/android/dialer/main/impl/MainImpl;

    move-result-object v0

    return-object v0
.end method
