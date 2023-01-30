.class Lcom/android/incallui/PictureModeHelper$4;
.super Ljava/lang/Object;
.source "PictureModeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/PictureModeHelper;->addOnGlobalLayoutListener(Landroid/view/TextureView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PictureModeHelper;

.field final synthetic val$previewOffBlurredImageView:Landroid/widget/ImageView;

.field final synthetic val$previewTextureView:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/android/incallui/PictureModeHelper;Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/android/incallui/PictureModeHelper$4;->this$0:Lcom/android/incallui/PictureModeHelper;

    iput-object p2, p0, Lcom/android/incallui/PictureModeHelper$4;->val$previewTextureView:Landroid/view/TextureView;

    iput-object p3, p0, Lcom/android/incallui/PictureModeHelper$4;->val$previewOffBlurredImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 428
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BottomSheetHelper;->getPrimaryCallTracker()Lcom/android/incallui/PrimaryCallTracker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 432
    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 434
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 441
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v3

    .line 442
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    .line 440
    invoke-static {v2, v3, v0}, Lcom/android/incallui/VideoCallPresenter;->showOutgoingVideo(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :cond_3
    move v5, v1

    .line 444
    iget-object v2, p0, Lcom/android/incallui/PictureModeHelper$4;->this$0:Lcom/android/incallui/PictureModeHelper;

    iget-object v3, p0, Lcom/android/incallui/PictureModeHelper$4;->val$previewTextureView:Landroid/view/TextureView;

    iget-object v4, p0, Lcom/android/incallui/PictureModeHelper$4;->val$previewOffBlurredImageView:Landroid/widget/ImageView;

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/PictureModeHelper;->updateBlurredImageView(Landroid/view/TextureView;Landroid/widget/ImageView;ZFF)V

    .line 450
    iget-object v0, p0, Lcom/android/incallui/PictureModeHelper$4;->val$previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 452
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-void
.end method
