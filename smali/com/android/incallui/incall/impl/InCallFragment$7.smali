.class Lcom/android/incallui/incall/impl/InCallFragment$7;
.super Landroid/widget/BaseAdapter;
.source "InCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/incall/impl/InCallFragment;->addCallClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/incall/impl/InCallFragment;

.field final synthetic val$optionList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;Ljava/util/List;)V
    .locals 0

    .line 2028
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$7;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$7;->val$optionList:Ljava/util/List;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 2032
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$7;->val$optionList:Ljava/util/List;

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

    .line 2037
    iget-object p3, p0, Lcom/android/incallui/incall/impl/InCallFragment$7;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p3}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1000(Lcom/android/incallui/incall/impl/InCallFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    if-nez p2, :cond_0

    const p2, 0x7f0c002c

    const/4 v0, 0x0

    .line 2042
    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0902f2

    .line 2046
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 2048
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$7;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1200(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08016e

    .line 2049
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2050
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2053
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$7;->val$optionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2054
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
