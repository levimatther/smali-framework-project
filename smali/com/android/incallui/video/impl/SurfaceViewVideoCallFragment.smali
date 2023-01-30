.class public Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;
.super Landroidx/fragment/app/Fragment;
.source "SurfaceViewVideoCallFragment.java"

# interfaces
.implements Lcom/android/incallui/incall/protocol/InCallScreen;
.implements Lcom/android/incallui/incall/protocol/InCallButtonUi;
.implements Lcom/android/incallui/video/protocol/VideoCallScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;
.implements Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# static fields
.field static final ARG_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final CAMERA_PERMISSION_DIALOG_DELAY_IN_MILLIS:J = 0x7d0L

.field private static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x1

.field private static final VIDEO_OFF_VIEW_FADE_OUT_DELAY_IN_MILLIS:J = 0x7d0L


# instance fields
.field private cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

.field private final cameraPermissionDialogRunnable:Ljava/lang/Runnable;

.field private contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

.field private controls:Landroid/view/View;

.field private controlsContainer:Landroid/view/View;

.field private endCallButton:Landroid/view/View;

.field private fullscreenBackgroundView:Landroid/view/View;

.field private greenScreenBackgroundView:Landroid/view/View;

.field private hasInitializedScreenModes:Z

.field private inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field private inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

.field private isInFullscreenMode:Z

.field private isInGreenScreenMode:Z

.field private isRemotelyHeld:Z

.field private muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

.field private mutePreviewOverlay:Landroid/view/View;

.field private onHoldContainer:Landroid/view/View;

.field private previewOffOverlay:Landroid/view/View;

.field private previewRoot:Landroid/widget/FrameLayout;

.field private previewSurfaceView:Landroid/view/SurfaceView;

.field private remoteSurfaceView:Landroid/view/SurfaceView;

.field private remoteVideoOff:Landroid/widget/TextView;

.field private savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

.field private shouldShowPreview:Z

.field private shouldShowRemote:Z

.field private speakerButton:Lcom/android/incallui/video/impl/CheckableImageButton;

.field private speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

.field private swapCameraButton:Landroid/widget/ImageButton;

.field private switchOnHoldButton:Landroid/view/View;

.field private switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

.field private videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 130
    new-instance v0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$1;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    iput-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraPermissionDialogRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->checkCameraPermission()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateVideoOffViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Landroid/view/SurfaceView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Lcom/android/incallui/video/impl/SwitchOnHoldCallController;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Lcom/android/incallui/contactgrid/ContactGridManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Landroid/view/View;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->endCallButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Landroid/widget/TextView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    return-object p0
.end method

.method private static animateSetVisibility(Landroid/view/View;I)V
    .locals 3

    .line 1038
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    move v1, v2

    :goto_0
    int-to-float v1, v1

    .line 1055
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1056
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    .line 1058
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$9;-><init>(Landroid/view/View;I)V

    .line 1059
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1066
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1051
    :cond_2
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    return-void
.end method

.method private checkCameraPermission()V
    .locals 2

    .line 1088
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onCameraPermissionDialogShown()V

    .line 1090
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 1091
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->showCameraPermissionToast(Landroid/content/Context;)V

    .line 1094
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onCameraPermissionGranted()V

    :cond_1
    :goto_0
    return-void
.end method

.method private enterFullscreenMode()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.enterFullscreenMode"

    const/4 v3, 0x0

    .line 526
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->hideSystemUI()V

    .line 530
    new-instance v1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    .line 533
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->controls:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getControlsOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 534
    iget-object v3, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->controls:Landroid/view/View;

    .line 535
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    .line 536
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 537
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 538
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 539
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 540
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 543
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getSwitchOnHoldOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 544
    iget-object v4, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    .line 545
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 546
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 547
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 548
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 549
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 551
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v2}, Lcom/android/incallui/contactgrid/ContactGridManager;->getContainerView()Landroid/view/View;

    move-result-object v2

    .line 553
    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getContactGridOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    .line 555
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 556
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    .line 557
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 558
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 559
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 561
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->endCallButton:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getEndCallOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 565
    iget-object v4, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->endCallButton:Landroid/view/View;

    .line 566
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 567
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 568
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 569
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 570
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$7;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    .line 571
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    .line 578
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 579
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 584
    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInGreenScreenMode:Z

    if-nez v1, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getAllPreviewRelatedViews()[Landroid/view/View;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 587
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 588
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 589
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 590
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 591
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateOverlayBackground()V

    return-void
.end method

.method private enterGreenScreenMode()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.enterGreenScreenMode"

    const/4 v2, 0x0

    .line 966
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateOverlayBackground()V

    .line 968
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setIsMiddleRowVisible(Z)V

    .line 969
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateMutePreviewOverlayVisibility()V

    return-void
.end method

.method private exitFullscreenMode()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.exitFullscreenMode"

    const/4 v3, 0x0

    .line 349
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "not attached"

    .line 352
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->showSystemUI()V

    .line 358
    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 361
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->controls:Landroid/view/View;

    .line 362
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 363
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 364
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 365
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 366
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 370
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    .line 371
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 372
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 373
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 374
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 375
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$4;

    invoke-direct {v5, p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$4;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    .line 376
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 384
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v2}, Lcom/android/incallui/contactgrid/ContactGridManager;->getContainerView()Landroid/view/View;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 388
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 389
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 390
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 391
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$5;

    invoke-direct {v5, p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$5;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    .line 392
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 400
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->endCallButton:Landroid/view/View;

    .line 401
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 402
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 403
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 404
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 405
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$6;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    .line 406
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 418
    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInGreenScreenMode:Z

    if-nez v1, :cond_1

    .line 419
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getPreviewOffsetStartShown()Landroid/graphics/Point;

    move-result-object v1

    .line 420
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getAllPreviewRelatedViews()[Landroid/view/View;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 422
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 423
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    .line 424
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 425
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 426
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateOverlayBackground()V

    return-void
.end method

.method private exitGreenScreenMode()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.exitGreenScreenMode"

    const/4 v3, 0x0

    .line 973
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateOverlayBackground()V

    .line 975
    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->setIsMiddleRowVisible(Z)V

    .line 976
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateMutePreviewOverlayVisibility()V

    return-void
.end method

.method private getAllPreviewRelatedViews()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 498
    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->previewRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->mutePreviewOverlay:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method private getContactGridOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 470
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getOffsetTop(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getControlsOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 454
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getOffsetBottom(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 457
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getOffsetStart(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getEndCallOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 474
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getOffsetEnd(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 477
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getOffsetBottom(Landroid/view/View;)I
    .locals 1

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method private getOffsetEnd(Landroid/view/View;)I
    .locals 2

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method private getOffsetStart(Landroid/view/View;)I
    .locals 2

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    neg-int v0, v0

    :cond_0
    neg-int p1, v0

    return p1
.end method

.method private getOffsetTop(Landroid/view/View;)I
    .locals 1

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p1

    neg-int p1, v0

    return p1
.end method

.method private getPreviewOffsetStartShown()Landroid/graphics/Point;
    .locals 3

    .line 483
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    neg-int v0, v0

    .line 491
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    .line 493
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getSwitchOnHoldOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 462
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getOffsetTop(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 465
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getOffsetEnd(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private hideSystemUI()V
    .locals 2

    .line 444
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x106

    .line 446
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private isLandscape()Z
    .locals 3

    .line 961
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;
    .locals 2

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "call_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;-><init>()V

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private showSystemUI()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x100

    .line 438
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateMutePreviewOverlayVisibility()V
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->mutePreviewOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    .line 1034
    invoke-virtual {v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInGreenScreenMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1033
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateOverlayBackground()V
    .locals 3

    .line 1013
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInGreenScreenMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->greenScreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    .line 1017
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->fullscreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 1018
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInFullscreenMode:Z

    if-nez v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->greenScreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    .line 1023
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->fullscreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->greenScreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    .line 1026
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->fullscreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private updateVideoOffViews()V
    .locals 4

    .line 981
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInGreenScreenMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->shouldShowPreview:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 982
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->previewOffOverlay:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInGreenScreenMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->shouldShowRemote:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v1

    :goto_4
    if-eqz v0, :cond_5

    .line 985
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isRemotelyHeld:Z

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    const v0, 0x7f1104f0

    if-eqz v1, :cond_7

    .line 987
    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    .line 989
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    .line 990
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 993
    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const v0, 0x7f1104f1

    goto :goto_6

    :cond_6
    const v0, 0x7f1104f3

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 997
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$8;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1006
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isRemotelyHeld:Z

    if-eqz v3, :cond_8

    const v0, 0x7f1104f2

    :cond_8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public enableButton(IZ)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 758
    invoke-static {p1}, Lcom/android/incallui/incall/protocol/InCallButtonIdsExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 759
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SurfaceViewVideoCallFragment.setEnabled"

    const-string v3, "buttonId: %s, enable: %b"

    .line 755
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 761
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/SpeakerButtonController;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 763
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 765
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 767
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getAnswerAndDialpadContainerResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 730
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "call_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInCallButtonUiFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getInCallScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getVideoCallScreenFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public isManageConferenceVisible()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.isManageConferenceVisible"

    const/4 v3, 0x0

    .line 893
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public isShowingLocationUi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onCreateView$0$SurfaceViewVideoCallFragment(Landroid/view/View;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    .line 226
    iget-boolean p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInFullscreenMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateFullscreenAndGreenScreenMode(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateFullscreenAndGreenScreenMode(ZZ)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 301
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 302
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    :cond_0
    return-void
.end method

.method public onAudioRouteSelected(I)V
    .locals 3

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.onAudioRouteSelected"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->setAudioRoute(I)V

    return-void
.end method

.method public onAudioRouteSelectorDismiss()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Lcom/android/incallui/video/impl/CheckableImageButton;Z)V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "SurfaceViewVideoCallFragment.onCheckedChanged"

    const-string v0, "show camera permission dialog"

    .line 616
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->checkCameraPermission()V

    goto :goto_0

    .line 619
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->pauseVideoClicked(Z)V

    .line 620
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    if-ne p1, v0, :cond_2

    .line 623
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->muteClicked(ZZ)V

    .line 624
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->endCallButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SurfaceViewVideoCallFragment.onClick"

    const-string v1, "end call button clicked"

    .line 600
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onEndCallClicked()V

    .line 602
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->swapCameraButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 604
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    .line 605
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->swapCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 607
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->toggleCameraClicked()V

    .line 608
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 153
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onCreate"

    const/4 v2, 0x0

    .line 154
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const-class v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;

    .line 157
    invoke-static {p0, v0}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;

    .line 158
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;->newInCallButtonUiDelegate()Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onCreateView"

    const/4 v2, 0x0

    .line 185
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f0c0090

    .line 187
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 188
    new-instance p2, Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-direct {p2, p1, v2, p3, p3}, Lcom/android/incallui/contactgrid/ContactGridManager;-><init>(Landroid/view/View;Landroid/widget/ImageView;IZ)V

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    const p2, 0x7f09033f

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->controls:Landroid/view/View;

    .line 193
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p3

    .line 192
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090340

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->controlsContainer:Landroid/view/View;

    const p2, 0x7f09033b

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/impl/CheckableImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->speakerButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    const p2, 0x7f090334

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/impl/CheckableImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    .line 197
    invoke-virtual {p2, p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->setOnCheckedChangeListener(Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;)V

    const p2, 0x7f090343

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->mutePreviewOverlay:Landroid/view/View;

    const p2, 0x7f090335

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/impl/CheckableImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    .line 200
    invoke-virtual {p2, p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->setOnCheckedChangeListener(Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;)V

    const p2, 0x7f090344

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->previewOffOverlay:Landroid/view/View;

    const p2, 0x7f09033e

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->swapCameraButton:Landroid/widget/ImageButton;

    .line 203
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09033c

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 206
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p3, v1

    .line 205
    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09033d

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    const p2, 0x7f090336

    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->onHoldContainer:Landroid/view/View;

    const p2, 0x7f09033a

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    const/4 p3, 0x1

    .line 210
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    const p2, 0x7f09032e

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->endCallButton:Landroid/view/View;

    .line 212
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090342

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->previewSurfaceView:Landroid/view/SurfaceView;

    .line 214
    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 215
    iget-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->previewOffOverlay:Landroid/view/View;

    new-instance p3, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$2;

    invoke-direct {p3, p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$2;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090346

    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteSurfaceView:Landroid/view/SurfaceView;

    .line 223
    new-instance p3, Lcom/android/incallui/video/impl/-$$Lambda$SurfaceViewVideoCallFragment$8erfuQR4O4tOnUpRnlwzvMbQQa4;

    invoke-direct {p3, p0}, Lcom/android/incallui/video/impl/-$$Lambda$SurfaceViewVideoCallFragment$8erfuQR4O4tOnUpRnlwzvMbQQa4;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090330

    .line 234
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->greenScreenBackgroundView:Landroid/view/View;

    const p2, 0x7f09032f

    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->fullscreenBackgroundView:Landroid/view/View;

    const p2, 0x7f090338

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->previewRoot:Landroid/widget/FrameLayout;

    .line 240
    iget-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 241
    new-instance p3, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$3;

    invoke-direct {p3, p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$3;-><init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 293
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onDestroyView"

    const/4 v2, 0x0

    .line 294
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onInCallButtonUiUnready()V

    .line 296
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenUnready()V

    return-void
.end method

.method public onInCallScreenDialpadVisibilityChange(Z)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SurfaceViewVideoCallFragment.onInCallScreenDialpadVisibilityChange"

    const/4 v1, 0x0

    .line 924
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onInCallShowDialpad(Z)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SurfaceViewVideoCallFragment.onInCallShowDialpad"

    const/4 v1, 0x0

    .line 929
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLocalVideoDimensionsChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onLocalVideoDimensionsChanged"

    const/4 v2, 0x0

    .line 649
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLocalVideoOrientationChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onLocalVideoOrientationChanged"

    const/4 v2, 0x0

    .line 654
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 330
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onPause"

    const/4 v2, 0x0

    .line 331
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenPaused()V

    return-void
.end method

.method public onRemoteVideoDimensionsChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onRemoteVideoDimensionsChanged"

    const/4 v2, 0x0

    .line 660
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 168
    array-length v0, p3

    const-string v1, "SurfaceViewVideoCallFragment.onRequestPermissionsResult"

    const/4 v2, 0x0

    if-lez v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Camera permission granted."

    .line 169
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onCameraPermissionGranted()V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Camera permission denied."

    .line 174
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRequestReadStoragePermission()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 323
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onResume"

    const/4 v2, 0x0

    .line 324
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenResumed()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 287
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 309
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onStart"

    const/4 v2, 0x0

    .line 310
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->onVideoScreenStart()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 337
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onStop"

    const/4 v2, 0x0

    .line 338
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->onVideoScreenStop()V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1072
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v2, p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onSystemUiVisibilityChange(Z)V

    if-eqz p1, :cond_1

    .line 1074
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateFullscreenAndGreenScreenMode(ZZ)V

    goto :goto_1

    .line 1077
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateFullscreenAndGreenScreenMode(ZZ)V

    :goto_1
    return-void
.end method

.method public onVideoScreenStart()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->refreshMuteState()V

    .line 317
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onVideoCallScreenUiReady(Lcom/android/incallui/video/protocol/VideoCallScreen;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraPermissionDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onVideoScreenStop()V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraPermissionDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 345
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onVideoCallScreenUiUnready()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 260
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "SurfaceViewVideoCallFragment.onViewCreated"

    const/4 v1, 0x0

    .line 261
    invoke-static {v0, v1, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const-class p2, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 264
    invoke-static {p0, p2}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 265
    invoke-interface {p2}, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;->newInCallScreenDelegate()Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    .line 266
    const-class p2, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;

    .line 267
    invoke-static {p0, p2}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;

    .line 268
    invoke-interface {p2, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;->newVideoCallScreenDelegate(Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 270
    new-instance p2, Lcom/android/incallui/video/impl/SpeakerButtonController;

    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->speakerButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-direct {p2, v0, v1, v2}, Lcom/android/incallui/video/impl/SpeakerButtonController;-><init>(Lcom/android/incallui/video/impl/CheckableImageButton;Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;)V

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    .line 272
    new-instance p2, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->onHoldContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    iget-object v3, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;-><init>(Landroid/view/View;Landroid/view/View;Lcom/android/incallui/incall/protocol/InCallScreenDelegate;Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;)V

    iput-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    .line 276
    iget-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->initVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)V

    .line 278
    iget-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p2, p0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenDelegateInit(Lcom/android/incallui/incall/protocol/InCallScreen;)V

    .line 279
    iget-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p2}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenReady()V

    .line 280
    iget-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p2, p0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onInCallButtonUiReady(Lcom/android/incallui/incall/protocol/InCallButtonUi;)V

    .line 282
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public setAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.setAudioState"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/SpeakerButtonController;->setAudioState(Landroid/telecom/CallAudioState;)V

    .line 802
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setChecked(Z)V

    .line 803
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateMutePreviewOverlayVisibility()V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V
    .locals 3

    .line 877
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryCallState;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.setCallState"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V

    return-void
.end method

.method public setCameraSwitched(Z)V
    .locals 2

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBackFacingCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.setCameraSwitched"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.setEnabled"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/SpeakerButtonController;->setEnabled(Z)V

    .line 775
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->setEnabled(Z)V

    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 1

    .line 883
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "SurfaceViewVideoCallFragment.setEndCallButtonEnabled"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHold(Z)V
    .locals 2

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.setHold"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V
    .locals 3

    .line 846
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.setPrimary"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    return-void
.end method

.method public setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V
    .locals 5

    .line 852
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/SecondaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.setSecondary"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    iput-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    .line 858
    iget-object v1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {v1, p1}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->setSecondaryInfo(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    .line 859
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateButtonStates()V

    .line 860
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 861
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f090336

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 862
    iget-boolean v4, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    if-eqz v4, :cond_1

    .line 863
    invoke-static {p1, v0}, Lcom/android/incallui/hold/OnHoldFragment;->newInstance(Lcom/android/incallui/incall/protocol/SecondaryInfo;Ljava/lang/String;)Lcom/android/incallui/hold/OnHoldFragment;

    move-result-object p1

    .line 864
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInFullscreenMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/incallui/hold/OnHoldFragment;->setPadTopInset(Z)V

    .line 865
    invoke-virtual {v1, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 868
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    :goto_0
    const p1, 0x7f010007

    const v0, 0x7f010009

    .line 871
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 872
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public setSecondaryNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 3

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SurfaceViewVideoCallFragment.setVideoPaused"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setChecked(Z)V

    return-void
.end method

.method public showAudioRouteSelector()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.showAudioRouteSelector"

    const/4 v2, 0x0

    .line 823
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->getCurrentAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->newInstance(Landroid/telecom/CallAudioState;)Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    move-result-object v0

    .line 825
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showButton(IZ)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 738
    invoke-static {p1}, Lcom/android/incallui/incall/protocol/InCallButtonIdsExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 739
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SurfaceViewVideoCallFragment.showButton"

    const-string v3, "buttonId: %s, show: %b"

    .line 735
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 741
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/SpeakerButtonController;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 743
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 745
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 747
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->setVisible(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 749
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->swapCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showLocationUi(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SurfaceViewVideoCallFragment.showLocationUi"

    const-string v1, "Emergency video calling not supported"

    .line 954
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 2

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.showManageConferenceCallButton"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showNoteSentToast()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.showNoteSentToast"

    const/4 v2, 0x0

    .line 904
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showVbButton(Z)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.showNVbButton"

    const/4 v1, 0x0

    .line 909
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showVideoViews(ZZZ)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 634
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 635
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "SurfaceViewVideoCallFragment.showVideoViews"

    const-string v3, "showPreview: %b, shouldShowRemote: %b"

    .line 631
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->shouldShowPreview:Z

    .line 638
    iput-boolean p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->shouldShowRemote:Z

    .line 639
    iput-boolean p3, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isRemotelyHeld:Z

    .line 641
    iget-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->previewSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 643
    iget-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    iget-object p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->previewSurfaceView:Landroid/view/SurfaceView;

    iget-object p3, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->remoteSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {p1, p2, p3}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->setSurfaceViews(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 644
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateVideoOffViews()V

    return-void
.end method

.method public updataMenu(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public updateButtonStates()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.updateButtonState"

    const/4 v2, 0x0

    .line 808
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {v0}, Lcom/android/incallui/video/impl/SpeakerButtonController;->updateButtonState()V

    .line 810
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {v0}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->updateButtonState()V

    return-void
.end method

.method public updateFullscreenAndGreenScreenMode(ZZ)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 669
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 670
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "SurfaceViewVideoCallFragment.updateFullscreenAndGreenScreenMode"

    const-string v4, "shouldShowFullscreen: %b, shouldShowGreenScreen: %b"

    .line 666
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "not attached to activity"

    .line 673
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 683
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->hasInitializedScreenModes:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInGreenScreenMode:Z

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInFullscreenMode:Z

    if-ne p1, v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no change to screen modes"

    .line 686
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 691
    :cond_1
    iput-boolean v3, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->hasInitializedScreenModes:Z

    .line 692
    iput-boolean p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInGreenScreenMode:Z

    .line 693
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInFullscreenMode:Z

    .line 695
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->controlsContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_2
    if-eqz p2, :cond_3

    .line 699
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->enterGreenScreenMode()V

    goto :goto_0

    .line 701
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->exitGreenScreenMode()V

    :goto_0
    if-eqz p1, :cond_4

    .line 704
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->enterFullscreenMode()V

    goto :goto_1

    .line 706
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->exitFullscreenMode()V

    .line 708
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->updateVideoOffViews()V

    .line 712
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f090336

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/hold/OnHoldFragment;

    if-eqz p1, :cond_5

    .line 714
    iget-boolean p2, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->isInFullscreenMode:Z

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/android/incallui/hold/OnHoldFragment;->setPadTopInset(Z)V

    :cond_5
    return-void
.end method

.method public updateInCallButtonUiColors()V
    .locals 0

    return-void
.end method

.method public updateInCallScreenColors()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.updateColors"

    const/4 v2, 0x0

    .line 919
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateVbByAudioMode(Landroid/telecom/CallAudioState;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.updateVbByAudioMode"

    const/4 v1, 0x0

    .line 914
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
