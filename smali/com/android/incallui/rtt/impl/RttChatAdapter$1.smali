.class Lcom/android/incallui/rtt/impl/RttChatAdapter$1;
.super Ljava/lang/Object;
.source "RttChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rtt/impl/RttChatAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rtt/impl/RttChatAdapter;

.field final synthetic val$rttChatMessageViewHolder:Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/impl/RttChatAdapter;Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter$1;->this$0:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter$1;->val$rttChatMessageViewHolder:Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 114
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter$1;->val$rttChatMessageViewHolder:Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;

    iget-object p1, p1, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter$1;->this$0:Lcom/android/incallui/rtt/impl/RttChatAdapter;

    invoke-static {p2}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->access$000(Lcom/android/incallui/rtt/impl/RttChatAdapter;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0600c0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter$1;->val$rttChatMessageViewHolder:Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;

    iget-object p1, p1, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#F1F2F5"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
