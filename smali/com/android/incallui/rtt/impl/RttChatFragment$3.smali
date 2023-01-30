.class Lcom/android/incallui/rtt/impl/RttChatFragment$3;
.super Ljava/lang/Object;
.source "RttChatFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rtt/impl/RttChatFragment;->showRouteDialog(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/impl/RttChatFragment;I)V
    .locals 0

    .line 1432
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1435
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    const p4, 0x7f09025e

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-static {p1, p2}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$502(Lcom/android/incallui/rtt/impl/RttChatFragment;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 1436
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$500(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1437
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iget p1, p1, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iget p1, p1, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    if-eq p1, p3, :cond_0

    .line 1438
    sget-object p1, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    .line 1439
    sget-object p1, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1442
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$500(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    sput-object p1, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1443
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p3, p1, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    .line 1445
    iget p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->val$type:I

    const/16 p4, 0x8

    const/4 p5, 0x2

    if-ne p1, p2, :cond_3

    if-nez p3, :cond_1

    .line 1447
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1, p5}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I

    goto :goto_0

    :cond_1
    if-ne p3, p5, :cond_2

    .line 1449
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1, p2}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I

    goto :goto_0

    .line 1451
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1, p4}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, p5, :cond_5

    if-nez p3, :cond_4

    .line 1455
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1, v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I

    goto :goto_0

    .line 1457
    :cond_4
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1, p4}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    if-nez p3, :cond_6

    .line 1461
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1, p5}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I

    goto :goto_0

    :cond_6
    if-ne p3, p2, :cond_7

    .line 1463
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1, v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I

    goto :goto_0

    .line 1465
    :cond_7
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1, p4}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$602(Lcom/android/incallui/rtt/impl/RttChatFragment;I)I

    .line 1468
    :cond_8
    :goto_0
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p2}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$600(Lcom/android/incallui/rtt/impl/RttChatFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    .line 1469
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$700(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$700(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1470
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$3;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$700(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    return-void
.end method
