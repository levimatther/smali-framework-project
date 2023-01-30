.class Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$3;
.super Ljava/lang/Object;
.source "SurfaceViewVideoCallFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$3;->this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceViewVideoCallFragment.onGlobalLayout"

    const/4 v2, 0x0

    .line 245
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$3;->this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->access$200(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)V

    .line 248
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$3;->this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->access$300(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
