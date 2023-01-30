.class Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disappear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$1;)V
    .locals 0

    .line 764
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;-><init>(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 767
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1000(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->setVisible(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1200(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1102(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;I)I

    .line 772
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1400(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1302(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;I)I

    .line 773
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1002(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;I)I

    .line 774
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1100(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1300(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1500(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;II)V

    .line 775
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer$Disappear;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;

    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;->access$1602(Lcom/android/dialer/callcomposer/camera/camerafocus/PieRenderer;Z)Z

    return-void
.end method
