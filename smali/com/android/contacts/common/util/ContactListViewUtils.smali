.class public Lcom/android/contacts/common/util/ContactListViewUtils;
.super Ljava/lang/Object;
.source "ContactListViewUtils.java"


# static fields
.field private static final TEXT_LEFT_PADDING_TO_CARD_PADDING_RATIO:D = 1.1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ListView;III)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/common/util/ContactListViewUtils;->addPaddingToView(Landroid/widget/ListView;III)V

    return-void
.end method

.method private static addPaddingToView(Landroid/widget/ListView;III)V
    .locals 2

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    int-to-double v0, p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    int-to-double p1, p1

    mul-double/2addr p1, v0

    const-wide v0, 0x3ff199999999999aL    # 1.1

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 39
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p2

    .line 41
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p3

    .line 37
    invoke-virtual {p0, p1, p2, p1, p3}, Landroid/widget/ListView;->setPadding(IIII)V

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    const/high16 p1, 0x2000000

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method

.method public static applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a000f

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x7f0a000e

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-lez v0, :cond_1

    if-lez p0, :cond_1

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v2, 0x7f0901cd

    .line 65
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    new-instance v2, Lcom/android/contacts/common/util/ContactListViewUtils$1;

    invoke-direct {v2, p1, p2, v0, p0}, Lcom/android/contacts/common/util/ContactListViewUtils$1;-><init>(Landroid/widget/ListView;Landroid/view/View;II)V

    invoke-static {p1, v1, v2}, Lcom/android/dialer/util/ViewUtil;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Your content must have a list card view who can be turned visible whenever it is necessary."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
