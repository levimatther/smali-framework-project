.class public Lcom/android/incallui/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AccelerometerListener$OrientationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HORIZONTAL_DEBOUNCE:I = 0x1f4

.field private static final ORIENTATION_CHANGED:I = 0x4d2

.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_UNKNOWN:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccelerometerListener"

.field private static final VDEBUG:Z = false

.field private static final VERTICAL_ANGLE:D = 50.0

.field private static final VERTICAL_DEBOUNCE:I = 0x64


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

.field private mOrientation:I

.field private mPendingOrientation:I

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/incallui/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccelerometerListener$1;-><init>(Lcom/android/incallui/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/incallui/AccelerometerListener$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccelerometerListener$2;-><init>(Lcom/android/incallui/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AccelerometerListener;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/incallui/AccelerometerListener;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/AccelerometerListener;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/incallui/AccelerometerListener;DDD)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p6}, Lcom/android/incallui/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method private onSensorEvent(DDD)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_2

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_2

    cmpl-double v0, p5, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 158
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4049000000000000L    # 50.0

    cmpl-double p1, p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 166
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/AccelerometerListener;->setOrientation(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setOrientation(I)V
    .locals 4

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    if-ne v0, p1, :cond_0

    .line 121
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    if-eq v0, p1, :cond_2

    .line 132
    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    .line 133
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f4

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    .line 141
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public enable(Z)V
    .locals 3

    const-string v0, "AccelerometerListener"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 106
    :try_start_0
    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    .line 107
    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    .line 108
    iget-object p1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 112
    iget-object p1, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x4d2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Lcom/android/incallui/AccelerometerListener$OrientationListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

    return-void
.end method
