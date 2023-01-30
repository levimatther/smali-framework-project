.class public Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GreetingListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private greetingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->context:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->setGreetingList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->greetingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->greetingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c00ad

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance p3, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;-><init>(Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;)V

    const v0, 0x7f090311

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;->tvGreetingName:Landroid/widget/TextView;

    const v0, 0x7f0901ba

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->greetingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/impl/Greeting;

    .line 96
    invoke-virtual {v0}, Lcom/android/voicemail/impl/Greeting;->getGreetName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p3, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;->tvGreetingName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->context:Landroid/content/Context;

    const v4, 0x7f110257

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object p1, p3, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;->tvGreetingName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/Greeting;->getGreetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_1
    invoke-virtual {v0}, Lcom/android/voicemail/impl/Greeting;->isDefaultGreeting()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    iget-object p1, p3, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 104
    :cond_2
    iget-object p1, p3, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p2
.end method

.method public setGreetingList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v0, 0x1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicemail/impl/Greeting;

    .line 55
    invoke-virtual {v2}, Lcom/android/voicemail/impl/Greeting;->isDefaultGreeting()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 60
    :cond_2
    new-instance v1, Lcom/android/voicemail/impl/Greeting$Builder;

    invoke-direct {v1}, Lcom/android/voicemail/impl/Greeting$Builder;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->context:Landroid/content/Context;

    const v4, 0x7f110254

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/Greeting$Builder;->setBuildGreetName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/voicemail/impl/Greeting$Builder;->setBuildDefaultGreeting(Z)V

    .line 63
    invoke-virtual {v1}, Lcom/android/voicemail/impl/Greeting$Builder;->build()Lcom/android/voicemail/impl/Greeting;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->greetingList:Ljava/util/List;

    return-void
.end method
