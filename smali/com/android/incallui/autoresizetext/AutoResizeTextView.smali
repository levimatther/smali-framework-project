.class public Lcom/android/incallui/autoresizetext/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# static fields
.field private static final DEFAULT_MIN_TEXT_SIZE:F = 16.0f

.field private static final DEFAULT_RESIZE_STEP_UNIT:I = 0x0

.field private static final NO_LINE_LIMIT:I = -0x1


# instance fields
.field private final availableSpaceRect:Landroid/graphics/RectF;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private lineSpacingExtra:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private maxTextSize:F

.field private maxWidth:I

.field private minTextSize:F

.field private resizeStepUnit:I

.field private final textPaint:Landroid/text/TextPaint;

.field private final textSizesCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 51
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 52
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 53
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 54
    iput v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v2, 0x41800000    # 16.0f

    .line 55
    iput v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->minTextSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 59
    iput v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    const/4 v2, 0x0

    .line 60
    iput v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 64
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 51
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 52
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 53
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 54
    iput v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 55
    iput v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->minTextSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    iput v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 69
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 55
    iput v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->minTextSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    iput v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v0, 0x41800000    # 16.0f

    .line 55
    iput v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->minTextSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private adjustTextSize()V
    .locals 3

    .line 204
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 205
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iput v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->maxWidth:I

    .line 212
    iget-object v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 213
    iget-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 214
    iget v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->minTextSize:F

    invoke-direct {p0, v0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->convertToResizeStepUnits(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 215
    iget v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->maxTextSize:F

    invoke-direct {p0, v1}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->convertToResizeStepUnits(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 216
    iget-object v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->computeTextSize(IILandroid/graphics/RectF;)F

    move-result v0

    .line 218
    iget v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private binarySearchSizes(IILandroid/graphics/RectF;)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    :goto_0
    if-gt v0, p2, :cond_1

    add-int p1, v0, p2

    .line 278
    div-int/lit8 p1, p1, 0x2

    .line 279
    iget v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 280
    invoke-direct {p0, v1, p3}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->suggestedSizeFitsInSpace(FLandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    move v4, v0

    move v0, p1

    move p1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    move p2, p1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private computeTextSize(IILandroid/graphics/RectF;)F
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    return p1

    .line 261
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->binarySearchSizes(IILandroid/graphics/RectF;)I

    move-result p1

    .line 262
    iget-object p2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    :goto_1
    invoke-virtual {p2, p3, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method private convertToResizeStepUnits(F)F
    .locals 3

    .line 294
    iget v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    iget-object v1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    div-float/2addr v2, v0

    mul-float/2addr p1, v2

    return p1
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/R$styleable;->AutoResizeTextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->readAttrs(Landroid/content/res/TypedArray;)V

    .line 88
    iget-object p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    return-void
.end method

.method private readAttrs(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v0, 0x41800000    # 16.0f

    .line 198
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->maxTextSize:F

    return-void
.end method

.method private suggestedSizeFitsInSpace(FLandroid/graphics/RectF;)Z
    .locals 11

    .line 222
    iget-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 223
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getMaxLines()I

    move-result p1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 227
    iget-object p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result p1

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 228
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    move v8, v9

    :cond_0
    return v8

    .line 232
    :cond_1
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->maxWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 237
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->getLineSpacingExtra()F

    move-result v6

    const/4 v7, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 241
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, p1, :cond_2

    return v8

    .line 245
    :cond_2
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_3

    move v8, v9

    :cond_3
    return v8
.end method


# virtual methods
.method public final getLineSpacingExtra()F
    .locals 2

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 122
    invoke-super {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    return v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    return v0
.end method

.method public final getLineSpacingMultiplier()F
    .locals 2

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 112
    invoke-super {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    return v0

    .line 114
    :cond_0
    iget v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    return v0
.end method

.method public final getMaxLines()I
    .locals 2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 95
    invoke-super {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->maxLines:I

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 322
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 323
    invoke-direct {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->adjustTextSize()V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 309
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    :cond_1
    return-void
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public final setLineSpacing(FF)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 134
    iput p2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    .line 135
    iput p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    return-void
.end method

.method public final setMaxLines(I)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 105
    iput p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->maxLines:I

    return-void
.end method

.method public final setMinTextSize(IF)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 171
    iget p2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->minTextSize:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_0

    .line 172
    iput p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 173
    iget-object p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 174
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setResizeStepUnit(I)V
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    if-eq v0, p1, :cond_0

    .line 190
    iput p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    .line 191
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 150
    iget p2, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->maxTextSize:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_0

    .line 151
    iput p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->maxTextSize:F

    .line 156
    iget-object p1, p0, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 157
    invoke-virtual {p0}, Lcom/android/incallui/autoresizetext/AutoResizeTextView;->requestLayout()V

    :cond_0
    return-void
.end method
