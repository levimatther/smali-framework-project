.class Lcom/android/dialer/callcomposer/CameraComposerFragment$1;
.super Ljava/lang/Object;
.source "CameraComposerFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/CameraComposerFragment;->showShutterEffect(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/CameraComposerFragment;

.field final synthetic val$shutterVisual:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/CameraComposerFragment;Landroid/view/View;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment$1;->this$0:Lcom/android/dialer/callcomposer/CameraComposerFragment;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment$1;->val$shutterVisual:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 294
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment$1;->val$shutterVisual:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CameraComposerFragment$1;->val$shutterVisual:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
