.class final Lcom/android/dialer/simulator/impl/SimulatorImpl;
.super Ljava/lang/Object;
.source "SimulatorImpl.java"

# interfaces
.implements Lcom/android/dialer/simulator/Simulator;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionProvider(Landroid/content/Context;)Landroid/view/ActionProvider;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    invoke-direct {v0, p1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public shouldShow()Z
    .locals 2

    .line 33
    invoke-static {}, Lcom/android/dialer/buildtype/BuildType;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/dialer/common/LogUtil;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
