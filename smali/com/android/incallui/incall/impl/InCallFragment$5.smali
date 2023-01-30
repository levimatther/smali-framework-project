.class Lcom/android/incallui/incall/impl/InCallFragment$5;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/incall/impl/InCallFragment;->showRouteDialog(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/incall/impl/InCallFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 1270
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$5;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1273
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x13

    const/4 v0, 0x1

    if-eq p2, p1, :cond_3

    const/16 p1, 0x14

    if-eq p2, p1, :cond_1

    return p3

    .line 1284
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    add-int/2addr p1, v0

    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 1285
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setSelection(I)V

    return v0

    :cond_2
    return p3

    .line 1278
    :cond_3
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_4

    .line 1279
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    return v0

    :cond_4
    return p3
.end method
