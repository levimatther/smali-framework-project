.class Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$2;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->fadeIn()V
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

    .line 256
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$2;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 262
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$2;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$402(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$LinearAnimation;

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
