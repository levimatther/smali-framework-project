.class public Lcom/android/incallui/InCallUIMaterialColorMapUtils;
.super Lcom/android/contacts/common/util/MaterialColorMapUtils;
.source "InCallUIMaterialColorMapUtils.java"


# instance fields
.field private final mPrimaryColors:Landroid/content/res/TypedArray;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSecondaryColors:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    const v0, 0x7f030002

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mPrimaryColors:Landroid/content/res/TypedArray;

    const v0, 0x7f030003

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mSecondaryColors:Landroid/content/res/TypedArray;

    .line 35
    iput-object p1, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 2

    const v0, 0x7f0600be

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f0600c0

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 45
    new-instance v1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {v1, v0, p0}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 4

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 61
    new-instance p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v2, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mSecondaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-direct {p1, v2, v0}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_2
    invoke-super {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p1

    return-object p1
.end method
