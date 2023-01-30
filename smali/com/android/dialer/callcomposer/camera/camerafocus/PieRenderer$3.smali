.class Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->startFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$3;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$3;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$500(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    .line 353
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$3;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$600(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Z)V

    .line 354
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$3;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    iget-object v0, v0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->setAlpha(F)V

    .line 355
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
