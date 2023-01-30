.class final Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$SimulatorComponentImpl;
.super Lcom/android/dialer/simulator/SimulatorComponent;
.source "DaggerAospDialerRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimulatorComponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$SimulatorComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-direct {p0}, Lcom/android/dialer/simulator/SimulatorComponent;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$SimulatorComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)V

    return-void
.end method


# virtual methods
.method public getSimulator()Lcom/android/dialer/simulator/Simulator;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$SimulatorComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-static {v0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->access$2000(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/simulator/Simulator;

    return-object v0
.end method
