.class Lcom/android/incallui/DeclineCallSmsFragment$2;
.super Ljava/lang/Object;
.source "DeclineCallSmsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/DeclineCallSmsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/DeclineCallSmsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/DeclineCallSmsFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    return v0

    .line 106
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    .line 107
    invoke-static {p2}, Lcom/android/incallui/DeclineCallSmsFragment;->access$100(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p2

    iget-object p3, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-static {p3}, Lcom/android/incallui/DeclineCallSmsFragment;->access$100(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ListView;->getCount()I

    move-result p3

    sub-int/2addr p3, p1

    if-ne p2, p3, :cond_0

    .line 108
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-static {p2}, Lcom/android/incallui/DeclineCallSmsFragment;->access$200(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 109
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-static {p2}, Lcom/android/incallui/DeclineCallSmsFragment;->access$100(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setSelection(I)V

    return p1

    :cond_0
    return v0

    .line 98
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    .line 99
    invoke-static {p2}, Lcom/android/incallui/DeclineCallSmsFragment;->access$100(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_1

    .line 100
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-static {p2}, Lcom/android/incallui/DeclineCallSmsFragment;->access$200(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 101
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-static {p2}, Lcom/android/incallui/DeclineCallSmsFragment;->access$100(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/widget/ListView;

    move-result-object p2

    iget-object p3, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-static {p3}, Lcom/android/incallui/DeclineCallSmsFragment;->access$100(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ListView;->getCount()I

    move-result p3

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setSelection(I)V

    return p1

    :cond_1
    return v0

    .line 130
    :pswitch_3
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    .line 128
    :pswitch_4
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    .line 126
    :pswitch_5
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    .line 124
    :pswitch_6
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    .line 122
    :pswitch_7
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_8
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    .line 118
    :pswitch_9
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    .line 116
    :pswitch_a
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    .line 114
    :pswitch_b
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment$2;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {p2, p1}, Lcom/android/incallui/DeclineCallSmsFragment;->quickChoose(I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
