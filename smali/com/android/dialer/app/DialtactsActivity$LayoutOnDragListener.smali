.class Lcom/android/dialer/app/DialtactsActivity$LayoutOnDragListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutOnDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/dialer/app/DialtactsActivity;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$LayoutOnDragListener;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/DialtactsActivity;Lcom/android/dialer/app/DialtactsActivity$1;)V
    .locals 0

    .line 1678
    invoke-direct {p0, p1}, Lcom/android/dialer/app/DialtactsActivity$LayoutOnDragListener;-><init>(Lcom/android/dialer/app/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    .line 1682
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity$LayoutOnDragListener;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/app/DialtactsActivity;->access$1900(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/DragDropController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/dialer/app/list/DragDropController;->handleDragHovered(Landroid/view/View;II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
