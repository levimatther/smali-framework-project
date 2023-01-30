.class Lcom/android/dialershared/bubble/MoveHandler$2;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "MoveHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/MoveHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Landroid/view/WindowManager$LayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialershared/bubble/MoveHandler;


# direct methods
.method constructor <init>(Lcom/android/dialershared/bubble/MoveHandler;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/WindowManager$LayoutParams;)F
    .locals 2

    .line 109
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v0}, Lcom/android/dialershared/bubble/MoveHandler;->access$000(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v0}, Lcom/android/dialershared/bubble/MoveHandler;->access$100(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v0}, Lcom/android/dialershared/bubble/MoveHandler;->access$800(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v1}, Lcom/android/dialershared/bubble/MoveHandler;->access$900(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 106
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/dialershared/bubble/MoveHandler$2;->getValue(Landroid/view/WindowManager$LayoutParams;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/WindowManager$LayoutParams;F)V
    .locals 1

    float-to-int p2, p2

    .line 114
    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v0}, Lcom/android/dialershared/bubble/MoveHandler;->access$000(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v0}, Lcom/android/dialershared/bubble/MoveHandler;->access$100(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 115
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {p2}, Lcom/android/dialershared/bubble/MoveHandler;->access$600(Lcom/android/dialershared/bubble/MoveHandler;)Lcom/android/dialershared/bubble/Bubble;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialershared/bubble/Bubble;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {p2}, Lcom/android/dialershared/bubble/MoveHandler;->access$700(Lcom/android/dialershared/bubble/MoveHandler;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler$2;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v0}, Lcom/android/dialershared/bubble/MoveHandler;->access$600(Lcom/android/dialershared/bubble/MoveHandler;)Lcom/android/dialershared/bubble/Bubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 106
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialershared/bubble/MoveHandler$2;->setValue(Landroid/view/WindowManager$LayoutParams;F)V

    return-void
.end method
