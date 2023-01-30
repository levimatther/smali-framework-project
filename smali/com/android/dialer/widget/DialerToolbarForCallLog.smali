.class public Lcom/android/dialer/widget/DialerToolbarForCallLog;
.super Landroidx/appcompat/widget/Toolbar;
.source "DialerToolbarForCallLog.java"


# instance fields
.field private final subtitle:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0c0065

    .line 40
    invoke-static {p1, p2, p0}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0902ff

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/widget/DialerToolbarForCallLog;->title:Landroid/widget/TextView;

    const p1, 0x7f0902db

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/widget/DialerToolbarForCallLog;->subtitle:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070266

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->setElevation(F)V

    .line 45
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060059

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public setSubtitle(I)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/DialerToolbarForCallLog;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/dialer/widget/DialerToolbarForCallLog;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/android/dialer/widget/DialerToolbarForCallLog;->subtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
