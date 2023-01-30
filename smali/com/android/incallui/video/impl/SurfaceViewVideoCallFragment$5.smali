.class Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$5;
.super Ljava/lang/Object;
.source "SurfaceViewVideoCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->exitFullscreenMode()V
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

    .line 393
    iput-object p1, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$5;->this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment$5;->this$0:Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    invoke-static {v0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->access$500(Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;)Lcom/android/incallui/contactgrid/ContactGridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/contactgrid/ContactGridManager;->show()V

    return-void
.end method
