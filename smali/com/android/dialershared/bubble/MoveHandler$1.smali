.class Lcom/android/dialershared/bubble/MoveHandler$1;
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

    .line 68
    iput-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/WindowManager$LayoutParams;)F
    .locals 2

    .line 71
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 72
    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v1}, Lcom/android/dialershared/bubble/MoveHandler;->access$000(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 73
    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v1}, Lcom/android/dialershared/bubble/MoveHandler;->access$100(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v1, p1}, Lcom/android/dialershared/bubble/MoveHandler;->access$200(Lcom/android/dialershared/bubble/MoveHandler;Landroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {p1}, Lcom/android/dialershared/bubble/MoveHandler;->access$300(Lcom/android/dialershared/bubble/MoveHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v0, p1, v0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {p1}, Lcom/android/dialershared/bubble/MoveHandler;->access$400(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result p1

    iget-object v1, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v1}, Lcom/android/dialershared/bubble/MoveHandler;->access$500(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v1

    invoke-static {v0, p1, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 68
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/dialershared/bubble/MoveHandler$1;->getValue(Landroid/view/WindowManager$LayoutParams;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/WindowManager$LayoutParams;F)V
    .locals 6

    .line 83
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x5

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 84
    :goto_0
    iget-object v4, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v4}, Lcom/android/dialershared/bubble/MoveHandler;->access$300(Lcom/android/dialershared/bubble/MoveHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    iget-object v5, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v5}, Lcom/android/dialershared/bubble/MoveHandler;->access$600(Lcom/android/dialershared/bubble/MoveHandler;)Lcom/android/dialershared/bubble/Bubble;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialershared/bubble/Bubble;->getGravityOverride()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_2

    .line 88
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_1

    .line 92
    :goto_1
    iget-object v3, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v3}, Lcom/android/dialershared/bubble/MoveHandler;->access$000(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v5}, Lcom/android/dialershared/bubble/MoveHandler;->access$100(Lcom/android/dialershared/bubble/MoveHandler;)I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v2, :cond_3

    int-to-float v4, v4

    sub-float/2addr v4, p2

    int-to-float p2, v3

    sub-float/2addr v4, p2

    goto :goto_2

    :cond_3
    int-to-float v3, v3

    sub-float v4, p2, v3

    :goto_2
    float-to-int p2, v4

    .line 93
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    :goto_3
    or-int/lit8 p2, v1, 0x30

    .line 95
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v0, v2, :cond_5

    .line 97
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {p2}, Lcom/android/dialershared/bubble/MoveHandler;->access$600(Lcom/android/dialershared/bubble/MoveHandler;)Lcom/android/dialershared/bubble/Bubble;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/dialershared/bubble/Bubble;->onLeftRightSwitch(Z)V

    .line 99
    :cond_5
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {p2}, Lcom/android/dialershared/bubble/MoveHandler;->access$600(Lcom/android/dialershared/bubble/MoveHandler;)Lcom/android/dialershared/bubble/Bubble;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialershared/bubble/Bubble;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 100
    iget-object p2, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {p2}, Lcom/android/dialershared/bubble/MoveHandler;->access$700(Lcom/android/dialershared/bubble/MoveHandler;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/dialershared/bubble/MoveHandler$1;->this$0:Lcom/android/dialershared/bubble/MoveHandler;

    invoke-static {v0}, Lcom/android/dialershared/bubble/MoveHandler;->access$600(Lcom/android/dialershared/bubble/MoveHandler;)Lcom/android/dialershared/bubble/Bubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 68
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialershared/bubble/MoveHandler$1;->setValue(Landroid/view/WindowManager$LayoutParams;F)V

    return-void
.end method
