.class Lcom/android/incallui/video/impl/VideoCallFragment$9;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/video/impl/VideoCallFragment;->enterFullscreenMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/video/impl/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/video/impl/VideoCallFragment;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$9;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/android/incallui/video/impl/VideoCallFragment$9;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$800(Lcom/android/incallui/video/impl/VideoCallFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
