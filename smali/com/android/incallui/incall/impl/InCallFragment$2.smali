.class Lcom/android/incallui/incall/impl/InCallFragment$2;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/incall/impl/InCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/incall/impl/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$2;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 334
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$2;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$200(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$2;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$300(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$400(Lcom/android/incallui/incall/impl/InCallFragment;Z)V

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$2;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$500(Lcom/android/incallui/incall/impl/InCallFragment;)V

    .line 340
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$2;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$600(Lcom/android/incallui/incall/impl/InCallFragment;)V

    return-void
.end method
