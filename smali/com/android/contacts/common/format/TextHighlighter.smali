.class public Lcom/android/contacts/common/format/TextHighlighter;
.super Ljava/lang/Object;
.source "TextHighlighter.java"


# instance fields
.field private mTextStyle:I

.field private mTextStyleSpan:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyle:I

    .line 37
    invoke-direct {p0}, Lcom/android/contacts/common/format/TextHighlighter;->getStyleSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    return-void
.end method

.method private getStyleSpan()Landroid/text/style/CharacterStyle;
    .locals 2

    .line 52
    new-instance v0, Landroid/text/style/StyleSpan;

    iget v1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyle:I

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    if-nez p0, :cond_0

    goto :goto_4

    .line 119
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    if-ge v1, v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :cond_2
    if-ge v4, v1, :cond_8

    :goto_0
    if-ge v4, v1, :cond_3

    .line 129
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int v5, v4, v2

    if-le v5, v1, :cond_4

    return v0

    :cond_4
    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_6

    add-int v6, v4, v5

    .line 140
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v5, v2, :cond_7

    return v4

    :cond_7
    :goto_3
    if-ge v4, v1, :cond_2

    .line 149
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return v0
.end method


# virtual methods
.method public applyMaskingHighlight(Landroid/text/SpannableString;II)V
    .locals 2

    .line 64
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#00D2FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 90
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-static {p1, p2}, Lcom/android/contacts/common/format/TextHighlighter;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 98
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/android/contacts/common/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v2, p1, v1, p2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2

    :cond_2
    return-object p1
.end method

.method public setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updataMaskingHighlight(Landroid/text/SpannableString;IILjava/lang/Boolean;)V
    .locals 2

    .line 69
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 70
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#008CAA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method
