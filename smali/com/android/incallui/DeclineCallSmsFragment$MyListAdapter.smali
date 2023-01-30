.class public Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeclineCallSmsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/DeclineCallSmsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/incallui/DeclineCallSmsFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/DeclineCallSmsFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->mList:Ljava/util/ArrayList;

    .line 181
    iput-object p3, p0, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->mList:Ljava/util/ArrayList;

    .line 182
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->mList:Ljava/util/ArrayList;

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
    .locals 4

    if-nez p2, :cond_1

    .line 201
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0105

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 202
    new-instance p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;-><init>(Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;Lcom/android/incallui/DeclineCallSmsFragment$1;)V

    const v0, 0x7f0901cf

    .line 203
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const v0, 0x7f0901d0

    .line 204
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;->titleTvNumber:Landroid/widget/TextView;

    .line 207
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/DeclineCallSmsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    iget-object v2, p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;->titleTvNumber:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    iget-object v2, p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    iget-object v2, p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;->titleTvNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x30

    .line 215
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08016e

    .line 217
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f08016d

    .line 219
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 222
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;

    .line 226
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    iget-object v1, p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;->titleTvNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object p1, p3, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
