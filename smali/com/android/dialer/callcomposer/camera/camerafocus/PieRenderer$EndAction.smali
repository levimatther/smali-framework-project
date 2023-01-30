.class Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 752
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$800(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 753
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    iget-object p1, p1, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->mOverlay:Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$EndAction;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$900(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/RenderOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
