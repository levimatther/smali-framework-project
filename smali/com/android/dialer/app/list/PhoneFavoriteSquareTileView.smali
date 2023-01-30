.class public Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;
.super Lcom/android/dialer/app/list/PhoneFavoriteTileView;
.source "PhoneFavoriteSquareTileView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

.field private final mHeightToWidthRatio:F

.field private mSecondaryButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->mHeightToWidthRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->launchQuickContact()V

    return-void
.end method

.method private launchQuickContact()V
    .locals 4

    .line 67
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    .line 68
    invoke-static {v0, p0, v2, v1, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    .line 75
    invoke-static {v0, p0, v2, v3, v1}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContactEntry()Lcom/android/contacts/common/list/ContactEntry;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

    return-object v0
.end method

.method protected getNameForView(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactEntry;->getPreferredDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView$1;-><init>(Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->onFinishInflate()V

    const v0, 0x7f0900e7

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v0, 0x7f0900e8

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v0, 0x7f0900ea

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 104
    iget p2, p0, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->mHeightToWidthRatio:F

    int-to-float v0, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 105
    invoke-virtual {p0}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 109
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 110
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 108
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;->setMeasuredDimension(II)V

    return-void
.end method
