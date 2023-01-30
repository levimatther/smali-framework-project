.class public Lcom/android/contacts/common/list/ContactListPinnedHeaderView;
.super Landroid/widget/TextView;
.source "ContactListPinnedHeaderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object p1, Lcom/android/dialer/R$styleable;->ContactListItemView:[I

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/R$styleable;->ContactListItemView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/16 v2, 0xe

    .line 46
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120170

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setTextAppearance(Landroid/content/Context;I)V

    .line 53
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setLayoutDirection(I)V

    const/16 p1, 0x11

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setGravity(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getPaddingTop()I

    move-result p1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getPaddingEnd()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->getPaddingBottom()I

    move-result p3

    .line 59
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public setSectionHeaderTitle(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setVisibility(I)V

    :goto_0
    return-void
.end method
