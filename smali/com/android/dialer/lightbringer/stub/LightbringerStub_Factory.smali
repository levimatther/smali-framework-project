.class public final Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory;
.super Ljava/lang/Object;
.source "LightbringerStub_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/dialer/lightbringer/stub/LightbringerStub;",
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

.method public static create()Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory$InstanceHolder;->access$000()Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/dialer/lightbringer/stub/LightbringerStub;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/dialer/lightbringer/stub/LightbringerStub;

    invoke-direct {v0}, Lcom/android/dialer/lightbringer/stub/LightbringerStub;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/dialer/lightbringer/stub/LightbringerStub;
    .locals 1

    .line 17
    invoke-static {}, Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory;->newInstance()Lcom/android/dialer/lightbringer/stub/LightbringerStub;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory;->get()Lcom/android/dialer/lightbringer/stub/LightbringerStub;

    move-result-object v0

    return-object v0
.end method
