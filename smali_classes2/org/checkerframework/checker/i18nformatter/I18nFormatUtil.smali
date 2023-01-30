.class public Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;
.super Ljava/lang/Object;
.source "I18nFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;,
        Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;->tryFormatSatisfiability(Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->parse(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;

    move-result-object p0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p0, v4

    .line 49
    iget v6, v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;->index:I

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v5, v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;->category:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_1

    :cond_0
    sget-object v8, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 52
    :goto_1
    invoke-static {v5, v8}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->intersect(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v5

    .line 50
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, v3, 0x1

    .line 60
    new-array p0, p0, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    :goto_2
    if-gt v2, v3, :cond_3

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_3

    :cond_2
    sget-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    :goto_3
    aput-object v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public static varargs hasFormat(Ljava/lang/String;[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/i18nformatter/qual/I18nChecksFormat;
    .end annotation

    .line 78
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object p0

    .line 79
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 83
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 84
    aget-object v1, p1, v0

    aget-object v3, p0, v0

    invoke-static {v1, v3}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->isSubsetOf(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isFormat(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lorg/checkerframework/checker/i18nformatter/qual/I18nValidFormat;
    .end annotation

    .line 94
    :try_start_0
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tryFormatSatisfiability(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
