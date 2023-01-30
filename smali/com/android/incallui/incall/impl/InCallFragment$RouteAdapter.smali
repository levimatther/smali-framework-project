.class public Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;
.super Landroid/widget/BaseAdapter;
.source "InCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/InCallFragment;
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

.field final synthetic this$0:Lcom/android/incallui/incall/impl/InCallFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
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

    .line 1861
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 1858
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    .line 1862
    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->mContext:Landroid/content/Context;

    .line 1863
    iput-object p3, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1868
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->list:Ljava/util/ArrayList;

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

    if-nez p2, :cond_2

    .line 1886
    new-instance p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;

    invoke-direct {p2}, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;-><init>()V

    .line 1887
    iget-object p3, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1200(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00f4

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00f3

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0902ff

    .line 1890
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09025e

    .line 1891
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    .line 1893
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1200(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1894
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->tvTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f08016e

    .line 1895
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1897
    :cond_1
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1899
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 1909
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1300(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1400(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1910
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v2, :cond_3

    if-ne p1, v4, :cond_3

    .line 1912
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1913
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1914
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    goto/16 :goto_2

    .line 1915
    :cond_3
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v3, :cond_4

    if-nez p1, :cond_4

    .line 1917
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1918
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1919
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    goto/16 :goto_2

    .line 1921
    :cond_4
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v4, :cond_5

    if-ne p1, v3, :cond_5

    .line 1923
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1924
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1925
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    goto/16 :goto_2

    .line 1928
    :cond_5
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 1930
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1300(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    const/4 v5, 0x4

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1400(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1931
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v2, :cond_7

    if-ne p1, v4, :cond_7

    .line 1933
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1934
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1935
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    goto/16 :goto_2

    .line 1936
    :cond_7
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v5, :cond_8

    if-nez p1, :cond_8

    .line 1938
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1939
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1940
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    goto/16 :goto_2

    .line 1942
    :cond_8
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 1944
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1300(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1400(Lcom/android/incallui/incall/impl/InCallFragment;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1945
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v5, :cond_a

    if-ne p1, v4, :cond_a

    .line 1947
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1948
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1949
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    goto :goto_2

    .line 1950
    :cond_a
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v3, :cond_b

    if-nez p1, :cond_b

    .line 1952
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1953
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1954
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    goto :goto_2

    .line 1955
    :cond_b
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-ne v0, v2, :cond_c

    if-ne p1, v3, :cond_c

    .line 1957
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1958
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/incallui/incall/impl/InCallFragment;->oldrb:Landroid/widget/RadioButton;

    .line 1959
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput p1, v0, Lcom/android/incallui/incall/impl/InCallFragment;->lastitem:I

    goto :goto_2

    .line 1961
    :cond_c
    iget-object v0, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1966
    :cond_d
    :goto_2
    iget-object p2, p2, Lcom/android/incallui/incall/impl/InCallFragment$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$RouteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
