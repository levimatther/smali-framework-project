.class public abstract Lcom/android/dialer/main/MainComponent;
.super Ljava/lang/Object;
.source "MainComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/android/dialer/main/impl/MainModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/main/MainComponent$HasComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/main/MainComponent;
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/inject/HasRootComponent;

    invoke-interface {p0}, Lcom/android/dialer/inject/HasRootComponent;->component()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/main/MainComponent$HasComponent;

    .line 32
    invoke-interface {p0}, Lcom/android/dialer/main/MainComponent$HasComponent;->mainComponent()Lcom/android/dialer/main/MainComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getMain()Lcom/android/dialer/main/Main;
.end method
