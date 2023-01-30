.class public Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;
.super Landroid/widget/BaseAdapter;
.source "RttChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/rtt/impl/RttChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RouteAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1529
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 1526
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    .line 1530
    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->mContext:Landroid/content/Context;

    .line 1531
    iput-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 1554
    new-instance p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;

    invoke-direct {p2}, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;-><init>()V

    .line 1555
    iget-object p3, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c00f3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0902ff

    .line 1556
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09025e

    .line 1557
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    .line 1558
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1560
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$800(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->tvTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f08016e

    .line 1562
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1565
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 1568
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$900(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1000(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1569
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v2, :cond_2

    if-ne p1, v4, :cond_2

    .line 1571
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1572
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1573
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    goto/16 :goto_1

    .line 1574
    :cond_2
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v3, :cond_3

    if-nez p1, :cond_3

    .line 1576
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1577
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1578
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    goto/16 :goto_1

    .line 1579
    :cond_3
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v4, :cond_4

    if-ne p1, v3, :cond_4

    .line 1581
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1582
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1583
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    goto/16 :goto_1

    .line 1585
    :cond_4
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 1587
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$900(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result v0

    const/4 v5, 0x4

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1000(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1588
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v2, :cond_6

    if-ne p1, v4, :cond_6

    .line 1590
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1591
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1592
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    goto/16 :goto_1

    .line 1593
    :cond_6
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v5, :cond_7

    if-nez p1, :cond_7

    .line 1595
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1596
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1597
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    goto/16 :goto_1

    .line 1599
    :cond_7
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 1601
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$900(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {v0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1000(Lcom/android/incallui/rtt/impl/RttChatFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1602
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v5, :cond_9

    if-ne p1, v4, :cond_9

    .line 1604
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1605
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1606
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    goto :goto_1

    .line 1607
    :cond_9
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v3, :cond_a

    if-nez p1, :cond_a

    .line 1609
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1610
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1611
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    goto :goto_1

    .line 1612
    :cond_a
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v2, :cond_b

    if-ne p1, v3, :cond_b

    .line 1614
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1615
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1616
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput p1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;->lastitem:I

    goto :goto_1

    .line 1618
    :cond_b
    iget-object v0, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1622
    :cond_c
    :goto_1
    iget-object p2, p2, Lcom/android/incallui/rtt/impl/RttChatFragment$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
