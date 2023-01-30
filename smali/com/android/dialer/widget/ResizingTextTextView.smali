.class public Lcom/android/dialer/widget/ResizingTextTextView;
.super Landroid/widget/TextView;
.source "ResizingTextTextView.java"


# instance fields
.field private final mMinTextSize:I

.field private final mOriginalTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/dialer/widget/ResizingTextTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/dialer/widget/ResizingTextTextView;->mOriginalTextSize:I

    .line 36
    sget-object v0, Lcom/android/dialer/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    iget p2, p0, Lcom/android/dialer/widget/ResizingTextTextView;->mOriginalTextSize:I

    int-to-float p2, p2

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/dialer/widget/ResizingTextTextView;->mMinTextSize:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 51
    iget p1, p0, Lcom/android/dialer/widget/ResizingTextTextView;->mOriginalTextSize:I

    iget p2, p0, Lcom/android/dialer/widget/ResizingTextTextView;->mMinTextSize:I

    invoke-static {p0, p1, p2}, Lcom/android/dialer/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 45
    iget p1, p0, Lcom/android/dialer/widget/ResizingTextTextView;->mOriginalTextSize:I

    iget p2, p0, Lcom/android/dialer/widget/ResizingTextTextView;->mMinTextSize:I

    invoke-static {p0, p1, p2}, Lcom/android/dialer/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    return-void
.end method
