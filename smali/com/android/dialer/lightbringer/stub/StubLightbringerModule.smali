.class public abstract Lcom/android/dialer/lightbringer/stub/StubLightbringerModule;
.super Ljava/lang/Object;
.source "StubLightbringerModule.java"


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


# virtual methods
.method public abstract bindsLightbringer(Lcom/android/dialer/lightbringer/stub/LightbringerStub;)Lcom/android/dialer/lightbringer/Lightbringer;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
