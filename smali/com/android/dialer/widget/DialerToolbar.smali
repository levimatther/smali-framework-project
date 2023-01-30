.class public Lcom/android/dialer/widget/DialerToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "DialerToolbar.java"


# instance fields
.field private final subtitle:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0c0065

    .line 37
    invoke-static {p1, p2, p0}, Lcom/android/dialer/widget/DialerToolbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0902ff

    .line 38
    invoke-virtual {p0, p2}, Lcom/android/dialer/widget/DialerToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/dialer/widget/DialerToolbar;->title:Landroid/widget/TextView;

    const p2, 0x7f0902db

    .line 39
    invoke-virtual {p0, p2}, Lcom/android/dialer/widget/DialerToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/dialer/widget/DialerToolbar;->subtitle:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070266

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/android/dialer/widget/DialerToolbar;->setElevation(F)V

    .line 42
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600be

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/dialer/widget/DialerToolbar;->setBackgroundColor(I)V

    const p2, 0x7f0801ba

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/dialer/widget/DialerToolbar;->setNavigationIcon(I)V

    const p2, 0x7f1104a5

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/dialer/widget/DialerToolbar;->setNavigationContentDescription(I)V

    .line 45
    new-instance p2, Lcom/android/dialer/widget/-$$Lambda$DialerToolbar$5MtCMC5In5Z6foshyEvoJzP7sck;

    invoke-direct {p2, p1}, Lcom/android/dialer/widget/-$$Lambda$DialerToolbar$5MtCMC5In5Z6foshyEvoJzP7sck;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/dialer/widget/DialerToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbar;->getPaddingStart()I

    move-result p1

    .line 48
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbar;->getPaddingTop()I

    move-result p2

    .line 49
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbar;->getPaddingBottom()I

    move-result v1

    .line 46
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/dialer/widget/DialerToolbar;->setPaddingRelative(IIII)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 45
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public setSubtitle(I)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/DialerToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/dialer/widget/DialerToolbar;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/android/dialer/widget/DialerToolbar;->subtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/DialerToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/dialer/widget/DialerToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
