.class Lcom/android/incallui/video/impl/VideoCallFragment$4;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/video/impl/VideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 310
    iput-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$4;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "VideoCallFragment.onLayoutChange"

    const-string p3, "remoteTextureView layout changed"

    .line 322
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$4;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$200(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    .line 324
    iget-object p1, p0, Lcom/android/incallui/video/impl/VideoCallFragment$4;->this$0:Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-static {p1}, Lcom/android/incallui/video/impl/VideoCallFragment;->access$300(Lcom/android/incallui/video/impl/VideoCallFragment;)V

    return-void
.end method
