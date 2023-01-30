.class public Lcom/android/incallui/incall/impl/InCallPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "InCallPagerAdapter.java"


# instance fields
.field private attachments:Lcom/android/dialer/multimedia/MultimediaData;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/android/dialer/multimedia/MultimediaData;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 34
    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->attachments:Lcom/android/dialer/multimedia/MultimediaData;

    return-void
.end method


# virtual methods
.method public getButtonGridPosition()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->attachments:Lcom/android/dialer/multimedia/MultimediaData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/multimedia/MultimediaData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->getButtonGridPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 40
    invoke-static {}, Lcom/android/incallui/incall/impl/InCallButtonGridFragment;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->attachments:Lcom/android/dialer/multimedia/MultimediaData;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/android/incallui/sessiondata/MultimediaFragment;->newInstance(Lcom/android/dialer/multimedia/MultimediaData;ZZZ)Lcom/android/incallui/sessiondata/MultimediaFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public setAttachments(Lcom/android/dialer/multimedia/MultimediaData;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->attachments:Lcom/android/dialer/multimedia/MultimediaData;

    if-eq v0, p1, :cond_0

    .line 57
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->attachments:Lcom/android/dialer/multimedia/MultimediaData;

    .line 58
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
