.class public Lcom/android/incallui/InCallOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "InCallOrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallOrientationEventListener$ScreenOrientation;
    }
.end annotation


# static fields
.field public static final ACTIVITY_PREFERENCE_ALLOW_ROTATION:I = 0xa

.field public static final ACTIVITY_PREFERENCE_DISALLOW_ROTATION:I = 0x5

.field private static final ROTATION_THRESHOLD:I = 0xa

.field public static final SCREEN_ORIENTATION_0:I = 0x0

.field public static final SCREEN_ORIENTATION_180:I = 0xb4

.field public static final SCREEN_ORIENTATION_270:I = 0x10e

.field public static final SCREEN_ORIENTATION_360:I = 0x168

.field public static final SCREEN_ORIENTATION_90:I = 0x5a

.field public static final SCREEN_ORIENTATION_UNKNOWN:I = -0x1

.field private static sCurrentOrientation:I

.field private static sWindowManager:Landroid/view/WindowManager;


# instance fields
.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    const-string/jumbo v0, "window"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    sput-object p1, Lcom/android/incallui/InCallOrientationEventListener;->sWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public static getCurrentOrientation()I
    .locals 1

    .line 103
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    return v0
.end method

.method private static getCurrentUiOrientation()I
    .locals 3

    .line 213
    sget-object v0, Lcom/android/incallui/InCallOrientationEventListener;->sWindowManager:Landroid/view/WindowManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 217
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 222
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x10e

    return v0

    :cond_3
    const/16 v0, 0xb4

    return v0

    :cond_4
    const/16 v0, 0x5a

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private static isInLeftRange(III)Z
    .locals 0

    sub-int p2, p1, p2

    .line 94
    invoke-static {p0, p2, p1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method private static isInRightRange(III)Z
    .locals 0

    add-int/2addr p2, p1

    .line 98
    invoke-static {p0, p1, p2}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method private static isWithinRange(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWithinThreshold(III)Z
    .locals 1

    sub-int v0, p1, p2

    add-int/2addr p1, p2

    .line 90
    invoke-static {p0, v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method private toScreenOrientation(I)I
    .locals 5

    const/16 v0, 0x168

    const/16 v1, 0xa

    .line 194
    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isInLeftRange(III)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 195
    invoke-static {p1, v2, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isInRightRange(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    .line 197
    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v2

    const/16 v3, 0x10e

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/16 v2, 0xb4

    .line 199
    invoke-static {p1, v2, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    .line 201
    :cond_2
    invoke-static {p1, v3, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, -0x1

    return p1

    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "disable: Orientation listener is already disabled. Ignoring..."

    .line 169
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    .line 174
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    return-void
.end method

.method public enable(Z)V
    .locals 2

    .line 141
    iget-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    if-eqz v0, :cond_0

    const-string p1, "enable: Orientation listener is already enabled. Ignoring..."

    .line 142
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallOrientationEventListener;->getCurrentUiOrientation()I

    move-result v0

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 149
    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    .line 152
    :cond_1
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    if-eqz p1, :cond_2

    .line 155
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    :cond_2
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->toScreenOrientation(I)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 123
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    if-eq v0, p1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "InCallOrientationEventListener.onOrientationChanged"

    const-string v2, "orientation: %d -> %d"

    .line 124
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    sput p1, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    .line 130
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    :cond_1
    return-void
.end method
