.class public Lcom/android/dialer/searchfragment/common/QueryBoldingUtil;
.super Ljava/lang/Object;
.source "QueryBoldingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBoldedString(Ljava/lang/String;II)Landroid/text/SpannableString;
    .locals 2

    .line 149
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 150
    new-instance p0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr p2, p1

    const/16 v1, 0x11

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static getNameWithInitialsBolded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .line 90
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-eqz v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 96
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 97
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->getDigit(C)C

    move-result v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 98
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x12

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getNameWithQueryBolded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->nameMatchesT9Query(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_7

    .line 55
    invoke-static {p1}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->getT9Representation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p0, v0}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->indexOfQueryNonDigitsIgnored(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 58
    invoke-static {p0, p1}, Lcom/android/dialer/searchfragment/common/QueryBoldingUtil;->getNameWithInitialsBolded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v1

    .line 62
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 63
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 64
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int v4, v0, v3

    if-ge v1, v4, :cond_6

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    if-ge v1, v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-ne v0, v2, :cond_8

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_8
    if-ne v0, v2, :cond_9

    goto :goto_4

    .line 86
    :cond_9
    invoke-static {p1, v0, v1}, Lcom/android/dialer/searchfragment/common/QueryBoldingUtil;->getBoldedString(Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public static getNumberWithQueryBolded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0, p1}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->numberMatchesNumberQuery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 127
    :cond_0
    invoke-static {p0, p1}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->indexOfQueryNonDigitsIgnored(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-char v5, p0, v4

    .line 131
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int p0, v0, v1

    if-ge v3, p0, :cond_5

    .line 137
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-nez p0, :cond_4

    if-gt v3, v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    :cond_5
    invoke-static {p1, v0, v1}, Lcom/android/dialer/searchfragment/common/QueryBoldingUtil;->getBoldedString(Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    return-object p1
.end method
