.class public Lcom/android/incallui/video/impl/VideoCallFragment;
.super Landroidx/fragment/app/Fragment;
.source "VideoCallFragment.java"

# interfaces
.implements Lcom/android/incallui/incall/protocol/InCallScreen;
.implements Lcom/android/incallui/incall/protocol/InCallButtonUi;
.implements Lcom/android/incallui/video/protocol/VideoCallScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;
.implements Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;
.implements Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;
    }
.end annotation


# static fields
.field static final ARG_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final ASPECT_RATIO_MATCH_THRESHOLD:F = 0.1f

.field public static final BLUR_PREVIEW_RADIUS:F = 16.0f

.field public static final BLUR_PREVIEW_SCALE_FACTOR:F = 1.0f

.field private static final BLUR_REMOTE_RADIUS:F = 25.0f

.field private static final BLUR_REMOTE_SCALE_FACTOR:F = 0.25f

.field private static final CAMERA_PERMISSION_DIALOG_DELAY_IN_MILLIS:J = 0x7d0L

.field private static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x1

.field private static final PERMISSION_REQUEST_READ_EXTERNAL_STORAGE:I = 0x2

.field private static final VIDEO_OFF_VIEW_FADE_OUT_DELAY_IN_MILLIS:J = 0x7d0L

.field private static final VT_ASPECT_RATIO_MATCH_THRESHOLD_SETTING:Ljava/lang/String; = "vt_aspect_ratio_match_threshold"

.field public static final circleOutlineProvider:Landroid/view/ViewOutlineProvider;


# instance fields
.field private addCallButton:Landroid/widget/ImageButton;

.field private cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

.field private final cameraPermissionDialogRunnable:Ljava/lang/Runnable;

.field private contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

.field private controls:Landroid/view/View;

.field private controlsContainer:Landroid/view/View;

.field private endCallButton:Landroid/view/View;

.field private fullscreenBackgroundView:Landroid/view/View;

.field private greenScreenBackgroundView:Landroid/view/View;

.field private hasInitializedScreenModes:Z

.field private holdButton:Lcom/android/incallui/video/impl/CheckableImageButton;

.field private inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field private inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

.field private isInFullscreenMode:Z

.field private isInGreenScreenMode:Z

.field private isRemotelyHeld:Z

.field private mAspectRatioMatchThreshold:F

.field private mPauseImageTask:Lcom/android/incallui/video/impl/VideoCallFragment$PauseImageTask;

.field private mergeCallButton:Landroid/widget/ImageButton;

.field private moreOptionsMenuButton:Landroid/view/View;

.field private muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

.field private mutePreviewOverlay:Landroid/view/View;

.field private onHoldContainer:Landroid/view/View;

.field private previewOffBlurredImageView:Landroid/widget/ImageView;

.field private previewOffOverlay:Landroid/view/View;

.field private previewTextureView:Landroid/view/TextureView;

.field private remoteOffBlurredImageView:Landroid/widget/ImageView;

.field private remoteTextureView:Landroid/view/TextureView;

.field private remoteVideoOff:Landroid/widget/TextView;

.field private savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

.field private shouldShowPreview:Z

.field private shouldShowRemote:Z

.field private speakerButton:Lcom/android/incallui/video/impl/CheckableImageButton;

.field private speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

.field private swapCameraButton:Landroid/widget/ImageButton;

.field private switchControls:Landroid/view/View;

.field private switchOnHoldButton:Landroid/view/View;

.field private switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

.field private videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/incallui/video/impl/VideoCallFragment$1;

    invoke-direct {v0}, Lcom/android/incallui/video/impl/VideoCallFragment$1;-><init>()V

    sput-object v0, Lcom/android/incallui/video/impl/VideoCallFragment;->circleOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    .line 179
    iput v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mAspectRatioMatchThreshold:F

    .line 180
    new-instance v0, Lcom/android/incallui/video/impl/VideoCallFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$2;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    iput-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraPermissionDialogRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/video/impl/VideoCallFragment;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->checkCameraPermission()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/video/impl/VideoCallFragment;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->loadImage()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/incallui/video/impl/VideoCallFragment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getDefaultImage()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/incallui/video/impl/VideoCallFragment;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/incallui/video/impl/VideoCallFragment;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowRemote:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/incallui/video/impl/VideoCallFragment;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isRemotelyHeld:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/incallui/video/impl/VideoCallFragment;)Landroid/widget/TextView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateRemoteVideoScaling()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateRemoteOffView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updatePreviewVideoScaling()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updatePreviewOffView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/video/impl/VideoCallFragment;)Lcom/android/incallui/video/impl/SwitchOnHoldCallController;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/video/impl/VideoCallFragment;)Lcom/android/incallui/contactgrid/ContactGridManager;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/incallui/video/impl/VideoCallFragment;)Landroid/view/View;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->endCallButton:Landroid/view/View;

    return-object p0
.end method

.method private static animateSetVisibility(Landroid/view/View;I)V
    .locals 3

    .line 1528
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

    .line 1545
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1546
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    .line 1548
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/video/impl/VideoCallFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment$11;-><init>(Landroid/view/View;I)V

    .line 1549
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1556
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1541
    :cond_2
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    return-void
.end method

.method private static blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)V
    .locals 2

    .line 1560
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 1562
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 1563
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 1564
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p0

    .line 1565
    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 1566
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 1567
    invoke-virtual {v0, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 1568
    invoke-virtual {p0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 1569
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 1570
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 1571
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->destroy()V

    return-void
.end method

.method private checkCameraPermission()V
    .locals 2

    .line 1586
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onCameraPermissionDialogShown()V

    .line 1588
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 1589
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/video/impl/VideoCallFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 1591
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->showCameraPermissionToast(Landroid/content/Context;)V

    .line 1592
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onCameraPermissionGranted()V

    :cond_1
    :goto_0
    return-void
.end method

.method private enterFullscreenMode()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.enterFullscreenMode"

    const/4 v3, 0x0

    .line 626
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->hideSystemUI()V

    .line 630
    new-instance v1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    .line 633
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->controls:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->getControlsOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 634
    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->controls:Landroid/view/View;

    .line 635
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    .line 636
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 637
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 638
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 639
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 640
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 642
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchControls:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->getControlsOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 643
    iget-object v4, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchControls:Landroid/view/View;

    .line 644
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 645
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 646
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 647
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 648
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 649
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 652
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->getSwitchOnHoldOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 653
    iget-object v4, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    .line 654
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 655
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 656
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 657
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 658
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 660
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v2}, Lcom/android/incallui/contactgrid/ContactGridManager;->getContainerView()Landroid/view/View;

    move-result-object v2

    .line 662
    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContactGridOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    .line 664
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 665
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    .line 666
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 667
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 668
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 670
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->endCallButton:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->getEndCallOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 674
    iget-object v4, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->endCallButton:Landroid/view/View;

    .line 675
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 676
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 677
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 678
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 679
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/video/impl/VideoCallFragment$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$9;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    .line 680
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    .line 687
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 693
    iget-boolean v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    if-nez v1, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getAllPreviewRelatedViews()[Landroid/view/View;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 696
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 697
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 698
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 699
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 700
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateOverlayBackground()V

    return-void
.end method

.method private enterGreenScreenMode()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.enterGreenScreenMode"

    const/4 v3, 0x0

    .line 1316
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x14

    .line 1320
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    .line 1321
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1322
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1324
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateOverlayBackground()V

    .line 1325
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/incallui/contactgrid/ContactGridManager;->setIsMiddleRowVisible(Z)V

    .line 1326
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateMutePreviewOverlayVisibility()V

    .line 1328
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1329
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1330
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    return-void
.end method

.method private exitFullscreenMode()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.exitFullscreenMode"

    const/4 v3, 0x0

    .line 439
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "not attached"

    .line 442
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->showSystemUI()V

    .line 448
    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 451
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->controls:Landroid/view/View;

    .line 452
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 453
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 454
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 455
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 456
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 457
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 459
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchControls:Landroid/view/View;

    .line 460
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 461
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 462
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 463
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 464
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 468
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    .line 469
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 470
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 471
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 472
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 473
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/incallui/video/impl/VideoCallFragment$6;

    invoke-direct {v5, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$6;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    .line 474
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 482
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v2}, Lcom/android/incallui/contactgrid/ContactGridManager;->getContainerView()Landroid/view/View;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 486
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 487
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 488
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 489
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/incallui/video/impl/VideoCallFragment$7;

    invoke-direct {v5, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$7;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    .line 490
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 498
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->endCallButton:Landroid/view/View;

    .line 499
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 500
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 501
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 502
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 503
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/video/impl/VideoCallFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$8;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    .line 504
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 516
    iget-boolean v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    if-nez v1, :cond_1

    .line 517
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getPreviewOffsetStartShown()Landroid/graphics/Point;

    move-result-object v1

    .line 518
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getAllPreviewRelatedViews()[Landroid/view/View;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 520
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 521
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    .line 522
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 523
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 524
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateOverlayBackground()V

    return-void
.end method

.method private exitGreenScreenMode()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.exitGreenScreenMode"

    const/4 v3, 0x0

    .line 1334
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1335
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1336
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f070285

    .line 1338
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const v4, 0x7f070280

    .line 1339
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v3, 0x7f070282

    .line 1341
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1340
    invoke-virtual {v2, v0, v0, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1342
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    .line 1343
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v3, 0x7f070283

    .line 1344
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x14

    .line 1346
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v3, 0x7f070284

    .line 1347
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :goto_0
    const/16 v1, 0xc

    .line 1349
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1350
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    sget-object v3, Lcom/android/incallui/video/impl/VideoCallFragment;->circleOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1352
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateOverlayBackground()V

    .line 1353
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->setIsMiddleRowVisible(Z)V

    .line 1354
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateMutePreviewOverlayVisibility()V

    .line 1356
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/incallui/video/impl/VideoCallFragment;->circleOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1358
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    return-void
.end method

.method private getAllPreviewRelatedViews()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 596
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffOverlay:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mutePreviewOverlay:Landroid/view/View;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method private getContactGridOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 568
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->getOffsetTop(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getControlsOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 552
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->getOffsetBottom(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 555
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->getOffsetStart(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getDefaultImage()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 890
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getEndCallOffsetEndHidden(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 572
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->getOffsetEnd(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 575
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

    .line 606
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

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    add-int/2addr v0, v1

    .line 619
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

    .line 610
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    add-int/2addr v0, v1

    .line 611
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

    .line 602
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

    .line 581
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0

    .line 584
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    neg-int v0, v0

    .line 589
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    .line 591
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

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

    .line 560
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->getOffsetTop(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 563
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->getOffsetEnd(Landroid/view/View;)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private hideSystemUI()V
    .locals 2

    .line 542
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x106

    .line 544
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private isLandscape()Z
    .locals 3

    .line 1311
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

.method private loadImage()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 876
    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "VideoCallFragment.loadImage"

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, " previewDimensions/context is null"

    .line 879
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private maybeLoadPreConfiguredImageAsync()V
    .locals 3

    .line 793
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.maybeLoadPreConfiguredImageAsync"

    const-string v2, "context is null"

    .line 795
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/incallui/video/impl/VideoCallFragment;
    .locals 2

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "call_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance p0, Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;-><init>()V

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/incallui/video/impl/VideoCallFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private showSystemUI()V
    .locals 2

    .line 532
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x100

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateMutePreviewOverlayVisibility()V
    .locals 2

    .line 1523
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mutePreviewOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    .line 1524
    invoke-virtual {v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1523
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateOverlayBackground()V
    .locals 3

    .line 1503
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->greenScreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/incallui/video/impl/VideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    .line 1507
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->fullscreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 1508
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInFullscreenMode:Z

    if-nez v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->greenScreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    .line 1513
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->fullscreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/incallui/video/impl/VideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->greenScreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    .line 1516
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->fullscreenBackgroundView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/video/impl/VideoCallFragment;->animateSetVisibility(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private updatePreviewOffView()V
    .locals 7

    const-string v0, "VideoCallFragment.updatePreviewOffView"

    .line 1362
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 1365
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowPreview:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1366
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffOverlay:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowPreview:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->shallTransmitStaticImage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1369
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowPreview:Z

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateBlurredImageView(Landroid/view/TextureView;Landroid/widget/ImageView;ZFF)V

    :cond_3
    return-void
.end method

.method private updatePreviewVideoScaling()V
    .locals 4

    .line 1249
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VideoCallFragment.updatePreviewVideoScaling"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "fragment not attached"

    .line 1250
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 1260
    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    .line 1261
    invoke-interface {v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "camera dimensions haven\'t been set"

    .line 1263
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1267
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1268
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 1272
    invoke-interface {v3}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getDeviceOrientation()I

    move-result v3

    int-to-float v3, v3

    .line 1268
    invoke-static {v1, v2, v0, v3}, Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;->scaleVideoAndFillView(Landroid/view/TextureView;FFF)V

    goto :goto_0

    .line 1274
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 1278
    invoke-interface {v3}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getDeviceOrientation()I

    move-result v3

    int-to-float v3, v3

    .line 1274
    invoke-static {v1, v2, v0, v3}, Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;->scaleVideoAndFillView(Landroid/view/TextureView;FFF)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "view layout hasn\'t finished yet"

    .line 1256
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateRemoteOffView()V
    .locals 9

    const-string v0, "VideoCallFragment.updateRemoteOffView"

    .line 1379
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 1380
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowRemote:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 1381
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isRemotelyHeld:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    const v0, 0x7f1104f0

    if-eqz v1, :cond_4

    .line 1383
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    .line 1385
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    .line 1386
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1384
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1389
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v0, 0x7f1104f1

    goto :goto_3

    :cond_3
    const v0, 0x7f1104f3

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1393
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/video/impl/VideoCallFragment$10;

    invoke-direct {v1, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$10;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1408
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isRemotelyHeld:Z

    if-eqz v3, :cond_5

    const v0, 0x7f1104f2

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1410
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1412
    :goto_4
    iget-object v4, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteOffBlurredImageView:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowRemote:Z

    const/high16 v7, 0x41c80000    # 25.0f

    const/high16 v8, 0x3e800000    # 0.25f

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateBlurredImageView(Landroid/view/TextureView;Landroid/widget/ImageView;ZFF)V

    return-void
.end method

.method private updateRemoteVideoScaling()V
    .locals 4

    .line 1283
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 1284
    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    .line 1285
    invoke-interface {v0}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->getSourceVideoDimensions()Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "VideoCallFragment.updateRemoteVideoScaling"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "video size is null"

    .line 1287
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1290
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1296
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1297
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    .line 1298
    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v3, v1, v2

    .line 1299
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v2

    div-float/2addr v3, v1

    .line 1301
    iget v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mAspectRatioMatchThreshold:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_2

    .line 1302
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;->scaleVideoAndFillView(Landroid/view/TextureView;FFF)V

    goto :goto_0

    .line 1304
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v0}, Lcom/android/incallui/videosurface/bindings/VideoSurfaceBindings;->scaleVideoMaintainingAspectRatio(Landroid/view/TextureView;II)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "view layout hasn\'t finished yet"

    .line 1291
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public enableButton(IZ)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1034
    invoke-static {p1}, Lcom/android/incallui/incall/protocol/InCallButtonIdsExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1035
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "VideoCallFragment.enableButton"

    const-string v3, "buttonId: %s, enable: %b"

    .line 1031
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    .line 1038
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/BottomSheetHelper;->shallShowMoreButton(Landroid/app/Activity;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    .line 1037
    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/BottomSheetHelper;->updateMoreButtonVisibility(ZLandroid/view/View;)V

    if-nez p1, :cond_0

    .line 1040
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/SpeakerButtonController;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 1042
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 1044
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 1046
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getAnswerAndDialpadContainerResourceId()I
    .locals 1

    const v0, 0x7f09032d

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 993
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getArguments()Landroid/os/Bundle;

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
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.isManageConferenceVisible"

    const/4 v2, 0x0

    .line 1175
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BottomSheetHelper;->isManageConferenceVisible()Z

    move-result v0

    return v0
.end method

.method public isShowingLocationUi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 391
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 392
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    :cond_0
    return-void
.end method

.method public onAudioRouteSelected(I)V
    .locals 3

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.onAudioRouteSelected"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->setAudioRoute(I)V

    return-void
.end method

.method public onAudioRouteSelectorDismiss()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Lcom/android/incallui/video/impl/CheckableImageButton;Z)V
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    const/4 v1, 0x0

    const-string v2, "VideoCallFragment.onCheckedChanged"

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "show camera permission dialog"

    .line 748
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->checkCameraPermission()V

    goto :goto_0

    .line 751
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->pauseVideoClicked(Z)V

    .line 752
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    goto :goto_0

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    if-ne p1, v0, :cond_2

    .line 755
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->muteClicked(ZZ)V

    .line 756
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->holdButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    if-ne p1, v0, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "hold Button"

    .line 758
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->holdClicked(Z)V

    .line 760
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->endCallButton:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "VideoCallFragment.onClick"

    if-ne p1, v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "end call button clicked"

    .line 709
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onEndCallClicked()V

    .line 711
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->swapCameraButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 713
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    .line 714
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->swapCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 716
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->toggleCameraClicked()V

    .line 717
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->addCallButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "add call button clicked"

    .line 719
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    sget-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 721
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    goto :goto_0

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mergeCallButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 723
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->mergeClicked()V

    .line 724
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    goto :goto_0

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    if-ne v0, p1, :cond_5

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "more button clicked"

    .line 726
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object p1

    .line 728
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/BottomSheetHelper;->showBottomSheet(Landroidx/fragment/app/FragmentManager;)V

    .line 729
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 202
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.onCreate"

    const/4 v3, 0x0

    .line 203
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    const-class v1, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;

    .line 206
    invoke-static {p0, v1}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;

    .line 207
    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;->newInCallButtonUiDelegate()Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    if-eqz p1, :cond_0

    .line 209
    invoke-interface {v1, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const v1, 0x3dcccccd    # 0.1f

    const-string/jumbo v3, "vt_aspect_ratio_match_threshold"

    .line 213
    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mAspectRatioMatchThreshold:F

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAspectRatioMatchThreshold = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mAspectRatioMatchThreshold:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onCreateView"

    const/4 v2, 0x0

    .line 252
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c008f

    goto :goto_0

    :cond_0
    const v0, 0x7f0c008e

    .line 255
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 259
    new-instance p2, Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-direct {p2, p1, v2, p3, p3}, Lcom/android/incallui/contactgrid/ContactGridManager;-><init>(Landroid/view/View;Landroid/widget/ImageView;IZ)V

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    const p2, 0x7f09033f

    .line 262
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->controls:Landroid/view/View;

    .line 264
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, p3

    .line 263
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090340

    .line 265
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->controlsContainer:Landroid/view/View;

    const p2, 0x7f09033b

    .line 266
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/impl/CheckableImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->speakerButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    const p2, 0x7f090334

    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/impl/CheckableImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    .line 268
    invoke-virtual {p2, p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->setOnCheckedChangeListener(Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;)V

    const p2, 0x7f090343

    .line 269
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mutePreviewOverlay:Landroid/view/View;

    const p2, 0x7f090335

    .line 270
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/impl/CheckableImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    .line 271
    invoke-virtual {p2, p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->setOnCheckedChangeListener(Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;)V

    const p2, 0x7f090331

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/impl/CheckableImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->holdButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    .line 273
    invoke-virtual {p2, p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->setOnCheckedChangeListener(Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;)V

    const p2, 0x7f090344

    .line 274
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffOverlay:Landroid/view/View;

    const p2, 0x7f090337

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    const p2, 0x7f09033e

    .line 277
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->swapCameraButton:Landroid/widget/ImageButton;

    .line 278
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09033c

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchControls:Landroid/view/View;

    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p3, v1

    .line 280
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09032c

    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->addCallButton:Landroid/widget/ImageButton;

    .line 283
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090332

    .line 284
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mergeCallButton:Landroid/widget/ImageButton;

    .line 285
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09033d

    .line 286
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    const p2, 0x7f090336

    .line 287
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->onHoldContainer:Landroid/view/View;

    const p2, 0x7f09033a

    .line 288
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteVideoOff:Landroid/widget/TextView;

    const/4 p3, 0x1

    .line 289
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    const p2, 0x7f090339

    .line 291
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteOffBlurredImageView:Landroid/widget/ImageView;

    const p2, 0x7f09032e

    .line 292
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->endCallButton:Landroid/view/View;

    .line 293
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090333

    .line 294
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    .line 295
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090342

    .line 296
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    .line 297
    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setClipToOutline(Z)V

    .line 298
    iget-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffOverlay:Landroid/view/View;

    new-instance p3, Lcom/android/incallui/video/impl/VideoCallFragment$3;

    invoke-direct {p3, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$3;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090346

    .line 305
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    const p2, 0x7f090330

    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->greenScreenBackgroundView:Landroid/view/View;

    const p2, 0x7f09032f

    .line 307
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->fullscreenBackgroundView:Landroid/view/View;

    .line 309
    iget-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    new-instance p3, Lcom/android/incallui/video/impl/VideoCallFragment$4;

    invoke-direct {p3, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$4;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 328
    iget-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    new-instance p3, Lcom/android/incallui/video/impl/VideoCallFragment$5;

    invoke-direct {p3, p0}, Lcom/android/incallui/video/impl/VideoCallFragment$5;-><init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 383
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onDestroyView"

    const/4 v2, 0x0

    .line 384
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onInCallButtonUiUnready()V

    .line 386
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenUnready()V

    return-void
.end method

.method public onInCallScreenDialpadVisibilityChange(Z)V
    .locals 3

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.onInCallScreenDialpadVisibilityChange"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 1209
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    :cond_0
    return-void
.end method

.method public onInCallShowDialpad(Z)V
    .locals 4

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoCallFragment.onInCallShowDialpad"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/incallui/BottomSheetHelper;->shallShowMoreButton(Landroid/app/Activity;)Z

    move-result v1

    :goto_0
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    .line 1217
    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/BottomSheetHelper;->updateMoreButtonVisibility(ZLandroid/view/View;)V

    return-void
.end method

.method public onLocalVideoDimensionsChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onLocalVideoDimensionsChanged"

    const/4 v2, 0x0

    .line 895
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updatePreviewVideoScaling()V

    return-void
.end method

.method public onLocalVideoOrientationChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onLocalVideoOrientationChanged"

    const/4 v2, 0x0

    .line 901
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updatePreviewVideoScaling()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 420
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onPause"

    const/4 v2, 0x0

    .line 421
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenPaused()V

    return-void
.end method

.method public onRemoteVideoDimensionsChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onRemoteVideoDimensionsChanged"

    const/4 v2, 0x0

    .line 908
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateRemoteVideoScaling()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 234
    array-length v0, p3

    const-string v2, "VideoCallFragment.onRequestPermissionsResult"

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Camera permission granted."

    .line 235
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onCameraPermissionGranted()V

    goto :goto_1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Camera permission denied."

    .line 238
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 242
    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    array-length v3, p3

    if-lez v3, :cond_2

    aget v3, p3, v1

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onReadStoragePermissionResponse(Z)V

    .line 245
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRequestReadStoragePermission()V
    .locals 3

    .line 975
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onRequestReadStoragePermission"

    const-string v2, " Activity is null"

    .line 977
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 980
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/video/impl/VideoCallFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onReadStoragePermissionResponse(Z)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 413
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onResume"

    const/4 v2, 0x0

    .line 414
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenResumed()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 377
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 378
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 399
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onStart"

    const/4 v2, 0x0

    .line 400
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->onVideoScreenStart()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 427
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.onStop"

    const/4 v2, 0x0

    .line 428
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->onVideoScreenStop()V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1577
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onSystemUiVisibilityChange(Z)V

    return-void
.end method

.method public onVideoScreenStart()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->refreshMuteState()V

    .line 407
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onVideoCallScreenUiReady(Lcom/android/incallui/video/protocol/VideoCallScreen;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraPermissionDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onVideoScreenStop()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraPermissionDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 435
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->onVideoCallScreenUiUnready()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 351
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.onViewCreated"

    const/4 v1, 0x0

    .line 352
    invoke-static {v0, v1, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    const-class p2, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 354
    invoke-static {p0, p2}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;

    .line 355
    invoke-interface {p2}, Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;->newInCallScreenDelegate()Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    .line 356
    const-class p2, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;

    .line 357
    invoke-static {p0, p2}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;

    .line 358
    invoke-interface {p2, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;->newVideoCallScreenDelegate(Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 360
    new-instance p2, Lcom/android/incallui/video/impl/SpeakerButtonController;

    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->speakerButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-direct {p2, v0, v1, v2}, Lcom/android/incallui/video/impl/SpeakerButtonController;-><init>(Lcom/android/incallui/video/impl/CheckableImageButton;Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;)V

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    .line 362
    new-instance p2, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->onHoldContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    iget-object v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;-><init>(Landroid/view/View;Landroid/view/View;Lcom/android/incallui/incall/protocol/InCallScreenDelegate;Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;)V

    iput-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    .line 366
    iget-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->initVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)V

    .line 368
    iget-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p2, p0}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenDelegateInit(Lcom/android/incallui/incall/protocol/InCallScreen;)V

    .line 369
    iget-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p2}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onInCallScreenReady()V

    .line 370
    iget-object p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p2, p0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->onInCallButtonUiReady(Lcom/android/incallui/incall/protocol/InCallButtonUi;)V

    .line 372
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public optionSelected(Ljava/lang/String;)V
    .locals 1

    .line 736
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/BottomSheetHelper;->optionSelected(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.setAudioState"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/SpeakerButtonController;->setAudioState(Landroid/telecom/CallAudioState;)V

    .line 1085
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setChecked(Z)V

    .line 1086
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateMutePreviewOverlayVisibility()V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V
    .locals 3

    .line 1159
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryCallState;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.setCallState"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V

    return-void
.end method

.method public setCameraSwitched(Z)V
    .locals 2

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBackFacingCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.setCameraSwitched"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.setEnabled"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    .line 1055
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/BottomSheetHelper;->shallShowMoreButton(Landroid/app/Activity;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    .line 1054
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/BottomSheetHelper;->updateMoreButtonVisibility(ZLandroid/view/View;)V

    .line 1056
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/SpeakerButtonController;->setEnabled(Z)V

    .line 1057
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    .line 1058
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    .line 1059
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->setEnabled(Z)V

    .line 1060
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->addCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1061
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mergeCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1062
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->holdButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 1

    .line 1165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.setEndCallButtonEnabled"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHold(Z)V
    .locals 2

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.setHold"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1493
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.setPreviewImage"

    const-string v1, " previewOffBlurredImageView is null"

    .line 1494
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1498
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1499
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setPreviewImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1482
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.setPreviewImage"

    const-string v1, " previewOffBlurredImageView is null"

    .line 1483
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1487
    :cond_0
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1488
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1489
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewOffBlurredImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V
    .locals 3

    .line 1128
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.setPrimary"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->contactGridManager:Lcom/android/incallui/contactgrid/ContactGridManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    return-void
.end method

.method public setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V
    .locals 5

    .line 1134
    invoke-virtual {p1}, Lcom/android/incallui/incall/protocol/SecondaryInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.setSecondary"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    iput-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1139
    iput-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->savedSecondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    .line 1140
    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {v1, p1}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->setSecondaryInfo(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    .line 1141
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateButtonStates()V

    .line 1142
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 1143
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f090336

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 1144
    iget-boolean v4, p1, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    if-eqz v4, :cond_1

    .line 1145
    invoke-static {p1, v0}, Lcom/android/incallui/hold/OnHoldFragment;->newInstance(Lcom/android/incallui/incall/protocol/SecondaryInfo;Ljava/lang/String;)Lcom/android/incallui/hold/OnHoldFragment;

    move-result-object p1

    .line 1146
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInFullscreenMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/incallui/hold/OnHoldFragment;->setPadTopInset(Z)V

    .line 1147
    invoke-virtual {v1, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 1150
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    :goto_0
    const p1, 0x7f010007

    const v0, 0x7f010009

    .line 1153
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 1154
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public setSecondaryNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 3

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoCallFragment.setVideoPaused"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setChecked(Z)V

    return-void
.end method

.method public sheetDismissed()V
    .locals 1

    .line 741
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BottomSheetHelper;->sheetDismissed()V

    return-void
.end method

.method public showAudioRouteSelector()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.showAudioRouteSelector"

    const/4 v2, 0x0

    .line 1106
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->getCurrentAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->newInstance(Landroid/telecom/CallAudioState;)Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    move-result-object v0

    .line 1108
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showButton(IZ)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1001
    invoke-static {p1}, Lcom/android/incallui/incall/protocol/InCallButtonIdsExtension;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1002
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "VideoCallFragment.showButton"

    const-string v4, "buttonId: %s, show: %b"

    .line 998
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    .line 1005
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/BottomSheetHelper;->shallShowMoreButton(Landroid/app/Activity;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->moreOptionsMenuButton:Landroid/view/View;

    .line 1004
    invoke-virtual {v0, v1, v4}, Lcom/android/incallui/BottomSheetHelper;->updateMoreButtonVisibility(ZLandroid/view/View;)V

    if-nez p1, :cond_0

    .line 1007
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/SpeakerButtonController;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_0
    if-ne p1, v3, :cond_1

    .line 1009
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->muteButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    goto :goto_3

    :cond_1
    const/16 v0, 0xa

    const/16 v1, 0x8

    if-ne p1, v0, :cond_3

    .line 1011
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1012
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setVisibility(I)V

    goto :goto_3

    .line 1014
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->cameraOffButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    const/16 v0, 0xd

    if-ne p1, v0, :cond_4

    .line 1017
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {p1, p2}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->setVisible(Z)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 1019
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->swapCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    if-ne p1, v1, :cond_7

    .line 1021
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->addCallButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 1023
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->mergeCallButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    :cond_9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 1025
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->holdButton:Lcom/android/incallui/video/impl/CheckableImageButton;

    if-eqz p2, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setVisibility(I)V

    :cond_b
    :goto_3
    return-void
.end method

.method public showLocationUi(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.showLocationUi"

    const-string v1, "Emergency video calling not supported"

    .line 1244
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 2

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.showManageConferenceCallButton"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showNoteSentToast()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.showNoteSentToast"

    const/4 v2, 0x0

    .line 1186
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showVbButton(Z)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.showNVbButton"

    const/4 v1, 0x0

    .line 1191
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showVideoViews(ZZZ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 770
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 771
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "VideoCallFragment.showVideoViews"

    const-string v2, "showPreview: %b, shouldShowRemote: %b"

    .line 767
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getLocalVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->attachToTextureView(Landroid/view/TextureView;)V

    .line 774
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->getRemoteVideoSurfaceTexture()Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->remoteTextureView:Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/android/incallui/videosurface/protocol/VideoSurfaceTexture;->attachToTextureView(Landroid/view/TextureView;)V

    .line 776
    iput-boolean p3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isRemotelyHeld:Z

    .line 777
    iget-boolean p3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowRemote:Z

    if-eq p3, p2, :cond_0

    .line 778
    iput-boolean p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowRemote:Z

    .line 779
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateRemoteOffView()V

    .line 781
    :cond_0
    iget-boolean p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowPreview:Z

    if-eq p2, p1, :cond_1

    .line 782
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->shouldShowPreview:Z

    .line 783
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updatePreviewOffView()V

    .line 786
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->maybeLoadPreConfiguredImageAsync()V

    .line 787
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/incallui/QtiCallUtils;->hasVideoCrbtVoLteCall(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 788
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->previewTextureView:Landroid/view/TextureView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updataMenu(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public updateBlurredImageView(Landroid/view/TextureView;Landroid/widget/ImageView;ZFF)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez p3, :cond_4

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 1435
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1437
    invoke-virtual/range {p1 .. p1}, Landroid/view/TextureView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 1439
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const-string v9, "VideoCallFragment.updateBlurredImageView"

    const-string/jumbo v12, "width: %d, height: %d"

    invoke-static {v9, v12, v8}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1442
    invoke-virtual {v0, v2, v7}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1445
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1446
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1453
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    move/from16 v8, p4

    .line 1457
    invoke-static {v3, v13, v8}, Lcom/android/incallui/video/impl/VideoCallFragment;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)V

    if-le v2, v7, :cond_3

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1466
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 1467
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 1468
    invoke-virtual {v0, v4}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v18

    const/16 v19, 0x1

    .line 1462
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1472
    :cond_3
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1473
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v0, v11, [Ljava/lang/Object;

    .line 1478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "took %d millis"

    .line 1475
    invoke-static {v9, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1430
    :cond_4
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1431
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateButtonStates()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCallFragment.updateButtonState"

    const/4 v2, 0x0

    .line 1091
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->speakerButtonController:Lcom/android/incallui/video/impl/SpeakerButtonController;

    invoke-virtual {v0}, Lcom/android/incallui/video/impl/SpeakerButtonController;->updateButtonState()V

    .line 1093
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->switchOnHoldCallController:Lcom/android/incallui/video/impl/SwitchOnHoldCallController;

    invoke-virtual {v0}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->updateButtonState()V

    return-void
.end method

.method public updateFullscreenAndGreenScreenMode(ZZ)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 918
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 919
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "VideoCallFragment.updateFullscreenAndGreenScreenMode"

    const-string v4, "shouldShowFullscreen: %b, shouldShowGreenScreen: %b"

    .line 915
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "not attached to activity"

    .line 922
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 930
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->hasInitializedScreenModes:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInFullscreenMode:Z

    if-ne p1, v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no change to screen modes"

    .line 933
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 937
    :cond_1
    iput-boolean v3, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->hasInitializedScreenModes:Z

    .line 938
    iput-boolean p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInGreenScreenMode:Z

    .line 939
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInFullscreenMode:Z

    .line 941
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->controlsContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_2
    if-eqz p2, :cond_3

    .line 945
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->enterGreenScreenMode()V

    goto :goto_0

    .line 947
    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->getPictureModeHelper()Lcom/android/incallui/PictureModeHelper;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 948
    invoke-virtual {p2}, Lcom/android/incallui/PictureModeHelper;->shouldShowPreviewOnly()Z

    move-result p2

    if-nez p2, :cond_4

    .line 949
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->exitGreenScreenMode()V

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 953
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->enterFullscreenMode()V

    goto :goto_1

    .line 955
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->exitFullscreenMode()V

    .line 958
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->updateRemoteOffView()V

    .line 962
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f090336

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/hold/OnHoldFragment;

    if-eqz p1, :cond_6

    .line 964
    iget-boolean p2, p0, Lcom/android/incallui/video/impl/VideoCallFragment;->isInFullscreenMode:Z

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/android/incallui/hold/OnHoldFragment;->setPadTopInset(Z)V

    :cond_6
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

    const-string v1, "VideoCallFragment.updateColors"

    const/4 v2, 0x0

    .line 1201
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateVbByAudioMode(Landroid/telecom/CallAudioState;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VideoCallFragment.updateVbByAudioMode"

    const/4 v1, 0x0

    .line 1196
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
