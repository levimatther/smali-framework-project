.class public Lcom/android/dialer/dialpadview/DialpadTextView;
.super Landroid/widget/TextView;
.source "DialpadTextView.java"


# instance fields
.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextStr:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 67
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/dialer/dialpadview/DialpadTextView;->resolveSize(II)I

    move-result p1

    .line 68
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/dialer/dialpadview/DialpadTextView;->resolveSize(II)I

    move-result p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/dialpadview/DialpadTextView;->setMeasuredDimension(II)V

    return-void
.end method
