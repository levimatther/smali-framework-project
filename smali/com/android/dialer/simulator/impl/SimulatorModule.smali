.class public abstract Lcom/android/dialer/simulator/impl/SimulatorModule;
.super Ljava/lang/Object;
.source "SimulatorModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindsSimulator(Lcom/android/dialer/simulator/impl/SimulatorImpl;)Lcom/android/dialer/simulator/Simulator;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
