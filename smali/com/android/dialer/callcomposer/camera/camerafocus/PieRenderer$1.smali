.class Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;
.super Landroid/os/Handler;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;
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

    .line 119
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 122
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;->onPieClosed()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$200(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$300(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$300(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {p1, v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$PieListener;->onPieOpened(II)V

    :cond_2
    :goto_0
    return-void
.end method
