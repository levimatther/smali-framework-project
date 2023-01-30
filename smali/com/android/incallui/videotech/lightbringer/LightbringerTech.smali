.class public Lcom/android/incallui/videotech/lightbringer/LightbringerTech;
.super Ljava/lang/Object;
.source "LightbringerTech.java"

# interfaces
.implements Lcom/android/incallui/videotech/VideoTech;
.implements Lcom/android/dialer/lightbringer/LightbringerListener;


# instance fields
.field private final call:Landroid/telecom/Call;

.field private callState:I

.field private final callingNumber:Ljava/lang/String;

.field private final lightbringer:Lcom/android/dialer/lightbringer/Lightbringer;

.field private final listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;


# direct methods
.method public constructor <init>(Lcom/android/dialer/lightbringer/Lightbringer;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->callState:I

    .line 47
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/lightbringer/Lightbringer;

    iput-object v0, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->lightbringer:Lcom/android/dialer/lightbringer/Lightbringer;

    .line 48
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    iput-object p2, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    .line 49
    invoke-static {p3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/Call;

    iput-object p2, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->call:Landroid/telecom/Call;

    .line 50
    invoke-static {p4}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->callingNumber:Ljava/lang/String;

    .line 52
    invoke-interface {p1, p0}, Lcom/android/dialer/lightbringer/Lightbringer;->registerListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V

    return-void
.end method


# virtual methods
.method public acceptVideoRequest()V
    .locals 1

    .line 126
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public acceptVideoRequest(I)V
    .locals 0

    .line 136
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public acceptVideoRequestAsAudio()V
    .locals 1

    .line 131
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public createVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
    .locals 0

    .line 82
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public declineVideoRequest()V
    .locals 1

    .line 141
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getRequestedVideoState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSessionModificationState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUpgradeToVideoState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 58
    invoke-static {p1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v2, "enable_lightbringer_video_upgrade"

    invoke-interface {v0, v2, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->callState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->lightbringer:Lcom/android/dialer/lightbringer/Lightbringer;

    iget-object v2, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->callingNumber:Ljava/lang/String;

    .line 60
    invoke-interface {v0, p1, v2}, Lcom/android/dialer/lightbringer/Lightbringer;->supportsUpgrade(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->supportsHandover()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSelfManagedCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransmitting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransmittingOrReceiving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCallStateChanged(Landroid/content/Context;I)V
    .locals 0

    const/16 p1, 0xa

    if-ne p2, p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->lightbringer:Lcom/android/dialer/lightbringer/Lightbringer;

    invoke-interface {p1, p0}, Lcom/android/dialer/lightbringer/Lightbringer;->unregisterListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V

    .line 91
    :cond_0
    iput p2, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->callState:I

    return-void
.end method

.method public onLightbringerStateChanged()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->listener:Lcom/android/incallui/videotech/VideoTech$VideoTechListener;

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech$VideoTechListener;->onVideoTechStateChanged()V

    return-void
.end method

.method public onRemovedFromCallList()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->lightbringer:Lcom/android/dialer/lightbringer/Lightbringer;

    invoke-interface {v0, p0}, Lcom/android/dialer/lightbringer/Lightbringer;->unregisterListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resumeTransmission()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 0

    .line 167
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setDeviceOrientation(I)V
    .locals 0

    .line 172
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public shouldUseSurfaceView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stopTransmission()V
    .locals 1

    .line 151
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public unpause()V
    .locals 0

    return-void
.end method

.method public upgradeToVideo()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->lightbringer:Lcom/android/dialer/lightbringer/Lightbringer;

    iget-object v1, p0, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;->call:Landroid/telecom/Call;

    invoke-interface {v0, v1}, Lcom/android/dialer/lightbringer/Lightbringer;->requestUpgrade(Landroid/telecom/Call;)V

    return-void
.end method

.method public upgradeToVideo(I)V
    .locals 0

    return-void
.end method
