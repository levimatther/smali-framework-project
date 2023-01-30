.class Lcom/android/incallui/rtt/impl/RttChatFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RttChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rtt/impl/RttChatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/impl/RttChatFragment;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$2;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 386
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$2;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$402(Lcom/android/incallui/rtt/impl/RttChatFragment;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method
