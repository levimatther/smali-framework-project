.class public Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RttChatMessageViewHolder.java"


# instance fields
.field private final container:Landroid/view/View;

.field private final messageTextView:Landroid/widget/TextView;

.field private final remoteMessageTextView:Landroid/widget/TextView;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090275

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->container:Landroid/view/View;

    const v0, 0x7f090274

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->messageTextView:Landroid/widget/TextView;

    const v0, 0x7f090276

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->remoteMessageTextView:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method setMessage(Lcom/android/incallui/rtt/protocol/RttChatMessage;ZLandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 51
    iget-boolean p3, p1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 52
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->remoteMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->resources:Landroid/content/res/Resources;

    const v0, 0x7f080213

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 55
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->resources:Landroid/content/res/Resources;

    const v1, 0x7f06016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 56
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->remoteMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->remoteMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->remoteMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->container:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    iget-boolean v0, p1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    if-eqz v0, :cond_1

    const v0, 0x800003

    goto :goto_1

    :cond_1
    const v0, 0x800005

    :goto_1
    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message.isRemote  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  , isSameGroup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RttChatMessageViewHolder"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->container:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-boolean p1, p1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    return-void
.end method
