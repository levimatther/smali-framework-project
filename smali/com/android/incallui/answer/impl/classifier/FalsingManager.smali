.class public Lcom/android/incallui/answer/impl/classifier/FalsingManager;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final CLASSIFIER_SENSORS:[I


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mHumanInteractionClassifier:Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 33
    sput-object v0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSessionActive:Z

    .line 46
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 48
    new-instance v0, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;

    invoke-direct {v0, p1}, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;

    .line 49
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mScreenOn:Z

    return-void
.end method

.method private onSessionStart()V
    .locals 1

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSessionActive:Z

    .line 127
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->registerSensors([I)V

    :cond_0
    return-void
.end method

.method private registerSensors([I)V
    .locals 5

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 134
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sessionEntrypoint()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->onSessionStart()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sessionExitpoint()V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSessionActive:Z

    .line 120
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private shouldSessionBeActive()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFalseTouch()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;

    .line 65
    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->isFalseTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mScreenOn:Z

    .line 83
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->sessionExitpoint()V

    return-void
.end method

.method public onScreenOn()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mScreenOn:Z

    .line 74
    invoke-direct {p0}, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->sessionEntrypoint()Z

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/incallui/answer/impl/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/classifier/HumanInteractionClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
