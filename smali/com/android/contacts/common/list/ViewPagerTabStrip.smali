.class public Lcom/android/contacts/common/list/ViewPagerTabStrip;
.super Landroid/widget/LinearLayout;
.source "ViewPagerTabStrip.java"


# instance fields
.field private mIndexForSelection:I

.field private final mSelectedUnderlinePaint:Landroid/graphics/Paint;

.field private mSelectedUnderlineThickness:I

.field private mSelectionOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070257

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlineThickness:I

    const p2, 0x7f060196

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const v0, 0x7f060084

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->setWillNotDraw(Z)V

    return-void
.end method

.method private isRtl()Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 72
    iget v0, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 82
    invoke-direct {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->isRtl()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 83
    iget v5, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    if-eqz v2, :cond_1

    if-lez v5, :cond_2

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v5, v6, :cond_2

    :goto_0
    move v3, v4

    .line 85
    :cond_2
    iget v5, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    if-eqz v3, :cond_4

    .line 87
    iget v3, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    if-eqz v2, :cond_3

    const/4 v4, -0x1

    :cond_3
    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 91
    iget v4, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v4

    int-to-float v1, v1

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    float-to-int v1, v3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v5, v4

    int-to-float v0, v0

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    float-to-int v0, v2

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getHeight()I

    move-result v2

    int-to-float v4, v1

    .line 98
    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlineThickness:I

    sub-int v1, v2, v1

    int-to-float v5, v1

    int-to-float v6, v0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method onPageScrolled(IFI)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    .line 62
    iput p2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->invalidate()V

    return-void
.end method
