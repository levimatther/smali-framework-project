.class public Lcom/android/incallui/InCallCameraManager;
.super Ljava/lang/Object;
.source "InCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallCameraManager$Listener;
    }
.end annotation


# instance fields
.field private final mCameraSelectionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/InCallCameraManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFrontFacingCameraId:Ljava/lang/String;

.field private mIsInitialized:Z

.field private mRearFacingCameraId:Ljava/lang/String;

.field private mUseFrontFacingCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    .line 53
    iput-object p1, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private maybeInitializeCameraList(Landroid/content/Context;)V
    .locals 5

    .line 105
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "initializeCameraList"

    .line 109
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "camera"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 125
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :goto_0
    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    const/4 v2, 0x0

    .line 135
    :try_start_2
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    if-eqz v2, :cond_3

    .line 142
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 144
    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    .line 146
    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_4
    iput-boolean v3, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    const-string p1, "initializeCameraList : done"

    .line 152
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not access camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_2
    const-string p1, "Could not get camera service."

    .line 115
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getActiveCameraId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallCameraManager;->maybeInitializeCameraList(Landroid/content/Context;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public isUsingFrontFacingCamera()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    return v0
.end method

.method public onCameraPermissionGranted()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallCameraManager$Listener;

    .line 95
    invoke-interface {v1}, Lcom/android/incallui/InCallCameraManager$Listener;->onCameraPermissionGranted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUseFrontFacingCamera(Z)V
    .locals 2

    .line 62
    iput-boolean p1, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    .line 63
    iget-object p1, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallCameraManager$Listener;

    .line 64
    iget-boolean v1, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    invoke-interface {v0, v1}, Lcom/android/incallui/InCallCameraManager$Listener;->onActiveCameraSelectionChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
