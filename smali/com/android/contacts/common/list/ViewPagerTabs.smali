.class public Lcom/android/contacts/common/list/ViewPagerTabs;
.super Landroid/widget/HorizontalScrollView;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# static fields
.field private static final ATTRS:[I

.field private static final TAB_SIDE_PADDING_IN_DPS:I = 0xa

.field private static final VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field mPager:Landroidx/viewpager/widget/ViewPager;

.field mPrevSelected:I

.field mSidePadding:I

.field private mTabIcons:[I

.field private mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

.field final mTextAllCaps:Z

.field final mTextColor:Landroid/content/res/ColorStateList;

.field final mTextSize:I

.field final mTextStyle:I

.field private mUnreadCounts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/contacts/common/list/ViewPagerTabs$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ViewPagerTabs$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 56
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->ATTRS:[I

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x101038c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 74
    iput p3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;->setFillViewport(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mSidePadding:I

    .line 95
    sget-object v1, Lcom/android/contacts/common/list/ViewPagerTabs;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextSize:I

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    const/4 v0, 0x2

    .line 98
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x3

    .line 99
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextAllCaps:Z

    .line 101
    new-instance v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    .line 102
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    sget-object p1, Lcom/android/contacts/common/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private addTab(Ljava/lang/CharSequence;I)V
    .locals 8

    .line 144
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabIcons:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0111

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090189

    .line 146
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabIcons:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 148
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f09010a

    .line 149
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 150
    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    aget v6, v4, p2

    if-lez v6, :cond_0

    .line 151
    aget v4, v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0006

    iget-object v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    aget v6, v6, p2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v1

    iget-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    aget p1, p1, p2

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    .line 155
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    .line 161
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110498

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080250

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 171
    iget p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    if-lez p1, :cond_2

    .line 172
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 174
    :cond_2
    iget p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextSize:I

    if-lez p1, :cond_3

    int-to-float p1, p1

    .line 175
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_4

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 180
    :cond_4
    iget-boolean p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextAllCaps:Z

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/16 p1, 0x11

    .line 181
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 196
    :goto_0
    iget p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mSidePadding:I

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 198
    iget-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTabs(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->removeAllViews()V

    .line 136
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->addTab(Ljava/lang/CharSequence;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getRtlPosition(I)I
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method public configureTabIcons([I)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabIcons:[I

    .line 123
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 239
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    .line 240
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->onPageScrolled(IFI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 250
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    .line 251
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 264
    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->smoothScrollTo(II)V

    .line 265
    iput p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    :cond_2
    :goto_0
    return-void
.end method

.method public removeTab(I)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setUnreadCount(II)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    aput p1, v0, p2

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 113
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->addTabs(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public updateTab(I)V
    .locals 1

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->removeTab(I)V

    .line 232
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->addTab(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method
