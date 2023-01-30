.class Lcom/android/incallui/incall/impl/InCallFragment$8;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$mAddCallDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 2070
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$8;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$8;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 2074
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$8;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1500(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object p2, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 2075
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$8;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 2078
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$8;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1500(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object p2, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CONTACT:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 2079
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$8;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 2082
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$8;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1500(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object p2, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CALL_LOG:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 2083
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$8;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
