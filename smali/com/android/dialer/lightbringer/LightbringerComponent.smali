.class public abstract Lcom/android/dialer/lightbringer/LightbringerComponent;
.super Ljava/lang/Object;
.source "LightbringerComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/lightbringer/LightbringerComponent$HasComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;
    .locals 0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/inject/HasRootComponent;

    invoke-interface {p0}, Lcom/android/dialer/inject/HasRootComponent;->component()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/lightbringer/LightbringerComponent$HasComponent;

    .line 34
    invoke-interface {p0}, Lcom/android/dialer/lightbringer/LightbringerComponent$HasComponent;->lightbringerComponent()Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;
.end method
