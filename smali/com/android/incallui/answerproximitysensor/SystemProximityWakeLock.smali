.class public Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;
.super Ljava/lang/Object;
.source "SystemProximityWakeLock.java"

# interfaces
.implements Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemProximityWakeLock"


# instance fields
.field private final context:Landroid/content/Context;

.field private listener:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->context:Landroid/content/Context;

    .line 39
    const-class v0, Landroid/os/PowerManager;

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 v0, 0x20

    const-string v1, "SystemProximityWakeLock"

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private static isDefaultDisplayOn(Landroid/content/Context;)Z
    .locals 2

    .line 86
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 48
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public isHeld()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->isDefaultDisplayOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SystemProximityWakeLock.onDisplayChanged"

    const-string v1, "display turned on"

    .line 77
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->listener:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;->onScreenOn()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 54
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public setScreenOnListener(Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/incallui/answerproximitysensor/SystemProximityWakeLock;->listener:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;

    return-void
.end method
