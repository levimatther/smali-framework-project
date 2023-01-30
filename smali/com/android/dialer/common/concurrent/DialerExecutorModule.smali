.class public abstract Lcom/android/dialer/common/concurrent/DialerExecutorModule;
.super Ljava/lang/Object;
.source "DialerExecutorModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract bindDialerExecutorFactory(Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;)Lcom/android/dialer/common/concurrent/DialerExecutorFactory;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
