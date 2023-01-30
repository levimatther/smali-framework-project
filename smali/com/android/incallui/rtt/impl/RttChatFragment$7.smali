.class Lcom/android/incallui/rtt/impl/RttChatFragment$7;
.super Landroid/widget/BaseAdapter;
.source "RttChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rtt/impl/RttChatFragment;->addCallClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$optionList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 1722
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$7;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$7;->val$optionList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1725
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$7;->val$optionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1730
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$7;->val$context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    if-nez p2, :cond_0

    const p2, 0x7f0c002c

    const/4 v0, 0x0

    .line 1734
    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0902f2

    .line 1738
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1740
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$7;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$800(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08016e

    .line 1741
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1742
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1745
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$7;->val$optionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1746
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
