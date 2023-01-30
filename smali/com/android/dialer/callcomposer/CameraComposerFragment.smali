.class public Lcom/android/dialer/callcomposer/CameraComposerFragment;
.super Lcom/android/dialer/callcomposer/CallComposerFragment;
.source "CameraComposerFragment.java"

# interfaces
.implements Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_DIRECTION_KEY:Ljava/lang/String; = "camera_direction"

.field private static final CAMERA_URI_KEY:Ljava/lang/String; = "camera_key"


# instance fields
.field private allowPermission:Landroid/view/View;

.field private cameraDirection:I

.field private cameraUri:Landroid/net/Uri;

.field private cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

.field private cancel:Landroid/widget/ImageButton;

.field private capture:Landroid/widget/ImageButton;

.field private exitFullscreen:Landroid/widget/ImageButton;

.field private focus:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

.field private fullscreen:Landroid/widget/ImageButton;

.field private loading:Landroid/widget/ProgressBar;

.field private permissionView:Landroid/view/View;

.field private permissions:[Ljava/lang/String;

.field private preview:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

.field private previewImageView:Landroid/widget/ImageView;

.field private processingUri:Z

.field private shutter:Landroid/view/View;

.field private swapCamera:Landroid/widget/ImageButton;

.field private uriCallback:Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerFragment;-><init>()V

    const-string v0, "android.permission.CAMERA"

    .line 79
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissions:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraDirection:I

    return-void
.end method

.method public static newInstance()Lcom/android/dialer/callcomposer/CameraComposerFragment;
    .locals 1

    .line 84
    new-instance v0, Lcom/android/dialer/callcomposer/CameraComposerFragment;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;-><init>()V

    return-object v0
.end method

.method private setCameraUri(Landroid/net/Uri;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    .line 313
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->updateViewState()V

    .line 315
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->composeCall(Lcom/android/dialer/callcomposer/CallComposerFragment;)V

    :cond_0
    return-void
.end method

.method private setupCamera()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasCameraPrivacyToastShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->showCameraPermissionToast(Landroid/content/Context;)V

    .line 139
    :cond_0
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setListener(Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->preview:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v0}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->setShown()V

    .line 141
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->focus:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setRenderOverlay(Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;)V

    .line 142
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v0

    iget v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraDirection:I

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->selectCamera(I)Z

    .line 143
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setCameraUri(Landroid/net/Uri;)V

    return-void
.end method

.method private showShutterEffect(Landroid/view/View;)V
    .locals 6

    .line 275
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 276
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/16 v4, 0x64

    int-to-long v4, v4

    .line 277
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 280
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 281
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 282
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 285
    new-instance v1, Lcom/android/dialer/callcomposer/CameraComposerFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment$1;-><init>(Lcom/android/dialer/callcomposer/CameraComposerFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateViewState()V
    .locals 7

    .line 330
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->isCameraAvailable()Z

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 336
    :goto_1
    iget-object v4, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    .line 337
    iget-object v6, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 338
    iget-object v4, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object v4, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->previewImageView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraDirection:I

    if-ne v6, v2, :cond_2

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_2

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    goto :goto_3

    .line 341
    :cond_3
    iget-object v4, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    :goto_3
    iget v4, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraDirection:I

    if-ne v4, v2, :cond_4

    .line 345
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->swapCamera:Landroid/widget/ImageButton;

    const v4, 0x7f110193

    invoke-virtual {p0, v4}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 347
    :cond_4
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->swapCamera:Landroid/widget/ImageButton;

    const v4, 0x7f110192

    invoke-virtual {p0, v4}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 350
    :goto_4
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 351
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->resetPreview()V

    .line 352
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cancel:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 355
    :cond_5
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/camera/CameraManager;->hasFrontAndBackCamera()Z

    move-result v2

    if-nez v2, :cond_6

    .line 356
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->swapCamera:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_6

    .line 358
    :cond_6
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->swapCamera:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    move v4, v5

    goto :goto_5

    :cond_7
    move v4, v3

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    :goto_6
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->capture:Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    move v4, v5

    goto :goto_7

    :cond_8
    move v4, v3

    :goto_7
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cancel:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    move v4, v3

    goto :goto_8

    :cond_9
    move v4, v5

    :goto_8
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez v1, :cond_c

    .line 364
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->isLandscapeLayout()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_9

    .line 367
    :cond_a
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 368
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->exitFullscreen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->fullscreen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_a

    .line 371
    :cond_b
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->exitFullscreen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->fullscreen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_a

    .line 365
    :cond_c
    :goto_9
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->fullscreen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->exitFullscreen:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 375
    :goto_a
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->swapCamera:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 376
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->capture:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public clearComposer()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setCameraUri(Landroid/net/Uri;)V

    return-void
.end method

.method public getCameraUriWhenReady(Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;)V
    .locals 2

    .line 407
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->loading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 409
    iput-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->uriCallback:Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;->uriReady(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public onCameraChanged()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->updateViewState()V

    return-void
.end method

.method public onCameraError(ILjava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "CameraComposerFragment.onCameraError"

    const-string p2, "errorCode: "

    invoke-static {p1, p2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->capture:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->isFullscreen()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->isLandscapeLayout()Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->preview:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    invoke-interface {v2}, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->shutter:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->showShutterEffect(Landroid/view/View;)V

    .line 176
    iput-boolean v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    const/4 p1, 0x0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setCameraUri(Landroid/net/Uri;)V

    .line 178
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->focus:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->getPieRenderer()Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->clear()V

    .line 179
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/dialer/callcomposer/camera/CameraManager;->takePicture(FLcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;)V

    goto/16 :goto_1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->swapCamera:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 181
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 182
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->swapCamera()V

    .line 183
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->getCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object p1

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraDirection:I

    goto/16 :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cancel:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->clearComposer()V

    goto/16 :goto_1

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->exitFullscreen:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    .line 187
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->showFullscreen(Z)V

    .line 188
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->fullscreen:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->exitFullscreen:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->fullscreen:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 191
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->showFullscreen(Z)V

    .line 192
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->fullscreen:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->exitFullscreen:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->allowPermission:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 199
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissions:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lcom/android/dialer/util/PermissionsUtil;->isFirstRequest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const-string v0, "CameraComposerFragment.onClick"

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissions:[Ljava/lang/String;

    aget-object p1, p1, v3

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 205
    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "Settings opened to enable permission."

    .line 206
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 201
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "Camera permission requested."

    .line 202
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissions:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c0092

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090236

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissionView:Landroid/view/View;

    const p2, 0x7f0901d5

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->loading:Landroid/widget/ProgressBar;

    const p2, 0x7f0900c0

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v0, 0x7f0900bf

    .line 95
    invoke-virtual {p2, v0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->shutter:Landroid/view/View;

    .line 96
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v0, 0x7f0900bc

    invoke-virtual {p2, v0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->exitFullscreen:Landroid/widget/ImageButton;

    .line 97
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v0, 0x7f0900bd

    invoke-virtual {p2, v0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->fullscreen:Landroid/widget/ImageButton;

    .line 98
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v0, 0x7f0902dc

    invoke-virtual {p2, v0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->swapCamera:Landroid/widget/ImageButton;

    .line 99
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v0, 0x7f0900bb

    invoke-virtual {p2, v0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->capture:Landroid/widget/ImageButton;

    .line 100
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v0, 0x7f0900ba

    invoke-virtual {p2, v0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cancel:Landroid/widget/ImageButton;

    .line 101
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v0, 0x7f09016a

    invoke-virtual {p2, v0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->focus:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    .line 102
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraView:Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;

    const v0, 0x7f0900be

    invoke-virtual {p2, v0}, Lcom/android/dialer/callcomposer/cameraui/CameraMediaChooserView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->preview:Lcom/android/dialer/callcomposer/camera/CameraPreview$CameraPreviewHost;

    const p2, 0x7f09024e

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->previewImageView:Landroid/widget/ImageView;

    .line 105
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->exitFullscreen:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->fullscreen:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->swapCamera:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->capture:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cancel:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/util/PermissionsUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "CameraComposerFragment.onCreateView"

    const-string v0, "Permission view shown."

    .line 113
    invoke-static {p3, v0, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    sget-object p3, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p2, p3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 115
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissionView:Landroid/view/View;

    const p3, 0x7f090234

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 116
    iget-object p3, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissionView:Landroid/view/View;

    const v0, 0x7f090235

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissionView:Landroid/view/View;

    const v2, 0x7f090054

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->allowPermission:Landroid/view/View;

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f110107

    .line 120
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f0801b7

    .line 121
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0600be

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 122
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 124
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissionView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "camera_direction"

    .line 127
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraDirection:I

    const-string p2, "camera_key"

    .line 128
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setupCamera()V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 267
    invoke-super {p0}, Lcom/android/dialer/callcomposer/CallComposerFragment;->onDestroy()V

    .line 268
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/CameraManager;->get()Lcom/android/dialer/callcomposer/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager;->setListener(Lcom/android/dialer/callcomposer/camera/CameraManager$CameraManagerListener;)V

    return-void
.end method

.method public onMediaFailed(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "CallComposerFragment.onMediaFailed"

    const/4 v1, 0x0

    .line 242
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110101

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-direct {p0, v1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setCameraUri(Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    .line 246
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->uriCallback:Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->loading:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    iput-object v1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->uriCallback:Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;

    :cond_0
    return-void
.end method

.method public onMediaInfo(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110101

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 p1, 0x0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setCameraUri(Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    return-void
.end method

.method public onMediaReady(Landroid/net/Uri;Ljava/lang/String;II)V
    .locals 0

    .line 222
    iget-boolean p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 223
    iput-boolean p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    .line 224
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setCameraUri(Landroid/net/Uri;)V

    .line 227
    iget-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->uriCallback:Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;

    if-eqz p2, :cond_1

    .line 228
    invoke-interface {p2, p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;->uriReady(Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->uriCallback:Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->updateViewState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 389
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p2, v1

    iget-object v2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    aget-object p2, p2, v1

    invoke-static {v0, p2}, Lcom/android/dialer/util/PermissionsUtil;->permissionRequested(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string p2, "CameraComposerFragment.onRequestPermissionsResult"

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 392
    array-length v2, p3

    if-lez v2, :cond_1

    aget p3, p3, v1

    if-nez p3, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p3, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, p3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string p3, "Permission granted."

    .line 396
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissionView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->setCameraPrivacyToastShown(Landroid/content/Context;)V

    .line 399
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setupCamera()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p3, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, p3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string p3, "Permission denied."

    .line 402
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 321
    invoke-super {p0}, Lcom/android/dialer/callcomposer/CallComposerFragment;->onResume()V

    .line 322
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->permissionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->setupCamera()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 381
    invoke-super {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 382
    iget v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraDirection:I

    const-string v1, "camera_direction"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    const-string v1, "camera_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public shouldHide()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->processingUri:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment;->cameraUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
