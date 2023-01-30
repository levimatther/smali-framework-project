.class Lcom/android/incallui/InCallZoomController$ZoomChangeListener;
.super Ljava/lang/Object;
.source "InCallZoomController.java"

# interfaces
.implements Lcom/android/incallui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;

.field final synthetic this$0:Lcom/android/incallui/InCallZoomController;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallZoomController;Landroid/telecom/InCallService$VideoCall;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->this$0:Lcom/android/incallui/InCallZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onZoomValueChanged:  index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this"

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->this$0:Lcom/android/incallui/InCallZoomController;

    invoke-static {v0, p1}, Lcom/android/incallui/InCallZoomController;->access$002(Lcom/android/incallui/InCallZoomController;I)I

    .line 83
    iget-object p1, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    iget-object v0, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->this$0:Lcom/android/incallui/InCallZoomController;

    invoke-static {v0}, Lcom/android/incallui/InCallZoomController;->access$000(Lcom/android/incallui/InCallZoomController;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/telecom/InCallService$VideoCall;->setZoom(F)V

    return-void
.end method
