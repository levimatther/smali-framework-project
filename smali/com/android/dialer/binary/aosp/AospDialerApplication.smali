.class public Lcom/android/dialer/binary/aosp/AospDialerApplication;
.super Lcom/android/dialer/binary/common/DialerApplication;
.source "AospDialerApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/dialer/binary/common/DialerApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildRootComponent()Ljava/lang/Object;
    .locals 2

    .line 33
    invoke-static {}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->builder()Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/inject/ContextModule;

    invoke-direct {v1, p0}, Lcom/android/dialer/inject/ContextModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;->contextModule(Lcom/android/dialer/inject/ContextModule;)Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;->build()Lcom/android/dialer/binary/aosp/AospDialerRootComponent;

    move-result-object v0

    return-object v0
.end method
