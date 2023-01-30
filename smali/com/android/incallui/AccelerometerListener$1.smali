.class Lcom/android/incallui/AccelerometerListener$1;
.super Landroid/os/Handler;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccelerometerListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x4d2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object p1, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->access$100(Lcom/android/incallui/AccelerometerListener;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/incallui/AccelerometerListener;->access$002(Lcom/android/incallui/AccelerometerListener;I)I

    const-string p1, "AccelerometerListener"

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    .line 66
    invoke-static {v1}, Lcom/android/incallui/AccelerometerListener;->access$000(Lcom/android/incallui/AccelerometerListener;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "horizontal"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    .line 68
    invoke-static {v1}, Lcom/android/incallui/AccelerometerListener;->access$000(Lcom/android/incallui/AccelerometerListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "vertical"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {p1}, Lcom/android/incallui/AccelerometerListener;->access$200(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    iget-object p1, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {p1}, Lcom/android/incallui/AccelerometerListener;->access$200(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->access$000(Lcom/android/incallui/AccelerometerListener;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/incallui/AccelerometerListener$OrientationListener;->orientationChanged(I)V

    .line 73
    :cond_3
    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
