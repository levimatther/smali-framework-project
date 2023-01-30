.class public Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;
.super Ljava/lang/Object;
.source "PseudoProximityWakeLock.java"

# interfaces
.implements Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private isHeld:Z

.field private listener:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;

.field private final proximitySensor:Landroid/hardware/Sensor;

.field private final pseudoScreenState:Lcom/android/incallui/answerproximitysensor/PseudoScreenState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/answerproximitysensor/PseudoScreenState;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->pseudoScreenState:Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p2, v0}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->setOn(Z)V

    .line 44
    const-class p2, Landroid/hardware/SensorManager;

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->proximitySensor:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->isHeld:Z

    .line 51
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    .line 53
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public isHeld()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->isHeld:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 75
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 76
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "near: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AnswerProximitySensor.PseudoProximityWakeLock.onSensorChanged"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->pseudoScreenState:Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->setOn(Z)V

    if-nez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->listener:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;

    if-eqz p1, :cond_1

    .line 79
    invoke-interface {p1}, Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;->onScreenOn()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->isHeld:Z

    .line 59
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->pseudoScreenState:Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->setOn(Z)V

    return-void
.end method

.method public setScreenOnListener(Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/incallui/answerproximitysensor/PseudoProximityWakeLock;->listener:Lcom/android/incallui/answerproximitysensor/AnswerProximityWakeLock$ScreenOnListener;

    return-void
.end method
