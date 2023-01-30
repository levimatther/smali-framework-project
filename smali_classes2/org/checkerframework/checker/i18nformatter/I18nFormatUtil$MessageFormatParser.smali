.class Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;
.super Ljava/lang/Object;
.source "I18nFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageFormatParser"
.end annotation


# static fields
.field private static final DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_DEFAULT:I = 0x0

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final SEG_INDEX:I = 0x1

.field private static final SEG_MODIFIER:I = 0x3

.field private static final SEG_RAW:I = 0x0

.field private static final SEG_TYPE:I = 0x2

.field private static final TYPE_CHOICE:I = 0x4

.field private static final TYPE_DATE:I = 0x2

.field private static final TYPE_KEYWORDS:[Ljava/lang/String;

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_TIME:I = 0x3

.field private static argumentIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static locale:Ljava/util/Locale;

.field public static maxOffset:I

.field private static numFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, ""

    const-string v1, "number"

    const-string v2, "date"

    const-string v3, "time"

    const-string v4, "choice"

    .line 148
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->TYPE_KEYWORDS:[Ljava/lang/String;

    const-string v1, "currency"

    const-string v2, "percent"

    const-string v3, "integer"

    .line 156
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    const-string v1, "short"

    const-string v2, "medium"

    const-string v3, "long"

    const-string v4, "full"

    .line 160
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPattern(Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 184
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    const/4 v1, -0x1

    .line 187
    sput v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 188
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_f

    .line 189
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7b

    const/16 v9, 0x27

    const/4 v10, 0x1

    if-nez v5, :cond_4

    if-ne v7, v9, :cond_1

    add-int/lit8 v8, v3, 0x1

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_0

    .line 193
    aget-object v3, v0, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v8

    goto/16 :goto_1

    :cond_0
    xor-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    if-nez v6, :cond_3

    .line 200
    aget-object v5, v0, v10

    if-nez v5, :cond_2

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v5, v0, v10

    :cond_2
    move v5, v10

    goto/16 :goto_1

    .line 204
    :cond_3
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    if-eqz v6, :cond_5

    .line 208
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v7, v9, :cond_e

    move v6, v2

    goto/16 :goto_1

    :cond_5
    const/16 v11, 0x20

    const/4 v12, 0x2

    if-eq v7, v11, :cond_c

    if-eq v7, v9, :cond_b

    const/16 v9, 0x2c

    const/4 v11, 0x3

    if-eq v7, v9, :cond_9

    if-eq v7, v8, :cond_8

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_6

    .line 252
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    .line 230
    sget v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    invoke-static {v5, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->makeFormat(I[Ljava/lang/StringBuilder;)V

    .line 231
    sget v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    add-int/2addr v5, v10

    sput v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    const/4 v5, 0x0

    aput-object v5, v0, v10

    aput-object v5, v0, v12

    aput-object v5, v0, v11

    move v5, v2

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 238
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 225
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    if-ge v5, v11, :cond_a

    add-int/lit8 v5, v5, 0x1

    .line 216
    aget-object v7, v0, v5

    if-nez v7, :cond_e

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v0, v5

    goto :goto_1

    .line 220
    :cond_a
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 249
    :cond_b
    aget-object v6, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v10

    goto :goto_1

    :cond_c
    if-ne v5, v12, :cond_d

    .line 243
    aget-object v8, v0, v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_e

    .line 244
    :cond_d
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    :goto_1
    add-int/2addr v3, v10

    goto/16 :goto_0

    :cond_f
    if-nez v4, :cond_11

    if-nez v5, :cond_10

    goto :goto_2

    .line 259
    :cond_10
    sput v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 260
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unmatched braces in the pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_2
    return-void
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 368
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 369
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eq v1, p0, :cond_3

    .line 377
    :goto_1
    array-length p0, p1

    if-ge v0, p0, :cond_3

    .line 378
    aget-object p0, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static makeFormat(I[Ljava/lang/StringBuilder;)V
    .locals 5

    .line 266
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 267
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 268
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 275
    :try_start_0
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    if-ltz v1, :cond_a

    .line 285
    sget v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 286
    sput p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 287
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    .line 291
    aget-object v1, v0, p0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 292
    aget-object v1, v0, p0

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->TYPE_KEYWORDS:[Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v3, 0x3

    if-eq v1, p1, :cond_6

    if-eq v1, p0, :cond_4

    if-eq v1, v3, :cond_4

    const/4 p1, 0x4

    if-ne v1, p1, :cond_3

    .line 336
    aget-object p0, v0, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_2

    .line 343
    :try_start_1
    new-instance p0, Ljava/text/ChoiceFormat;

    aget-object p1, v0, v3

    invoke-direct {p0, p1}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 345
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 347
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Choice Pattern incorrect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 337
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Choice Pattern requires Subformat Pattern: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_3
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 354
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_4
    aget-object p0, v0, v3

    sget-object p1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_5

    .line 321
    sget-object p1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    array-length p1, p1

    if-ge p0, p1, :cond_5

    goto :goto_2

    .line 326
    :cond_5
    :try_start_2
    new-instance p0, Ljava/text/SimpleDateFormat;

    aget-object p1, v0, v3

    sget-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 333
    :goto_2
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_4

    :catch_1
    move-exception p0

    .line 328
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 330
    throw p0

    .line 298
    :cond_6
    aget-object v1, v0, v3

    sget-object v4, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, p1, :cond_7

    if-eq v1, p0, :cond_7

    if-eq v1, v3, :cond_7

    .line 306
    :try_start_3
    new-instance p0, Ljava/text/DecimalFormat;

    aget-object p1, v0, v3

    sget-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    .line 308
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 310
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 312
    throw p0

    .line 316
    :cond_7
    :goto_3
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_4

    .line 295
    :cond_8
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_4

    .line 358
    :cond_9
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 360
    :goto_4
    sget-object p1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 282
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "negative argument number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t parse argument number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parse(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    .locals 4

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    .line 167
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    .line 168
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->applyPattern(Ljava/lang/String;)V

    .line 170
    sget p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    new-array p0, p0, [Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;

    const/4 v0, 0x0

    .line 171
    :goto_0
    sget v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    if-ge v0, v1, :cond_0

    .line 172
    new-instance v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;

    sget-object v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;-><init>(ILorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)V

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
