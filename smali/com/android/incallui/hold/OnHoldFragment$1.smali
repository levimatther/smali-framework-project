.class Lcom/android/incallui/hold/OnHoldFragment$1;
.super Ljava/lang/Object;
.source "OnHoldFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/hold/OnHoldFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/hold/OnHoldFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/hold/OnHoldFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/incallui/hold/OnHoldFragment$1;->this$0:Lcom/android/incallui/hold/OnHoldFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/incallui/hold/OnHoldFragment$1;->this$0:Lcom/android/incallui/hold/OnHoldFragment;

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/incallui/hold/OnHoldFragment;->access$002(Lcom/android/incallui/hold/OnHoldFragment;I)I

    .line 93
    iget-object p1, p0, Lcom/android/incallui/hold/OnHoldFragment$1;->this$0:Lcom/android/incallui/hold/OnHoldFragment;

    invoke-static {p1}, Lcom/android/incallui/hold/OnHoldFragment;->access$100(Lcom/android/incallui/hold/OnHoldFragment;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
